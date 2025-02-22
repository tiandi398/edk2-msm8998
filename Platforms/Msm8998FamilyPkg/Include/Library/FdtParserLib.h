/** @file
 *
 * Device Tree Parse Library
 *
 * Copyright (c) 2021, BigfootACA <bigfoot@classfun.cn>
 *
 **/

 #ifndef _FDT_PARSER_LIB
 #define _FDT_PARSER_LIB
 #include <Uefi.h>
 #include <Library/DebugLib.h>
 #include <Library/PrintLib.h>
 #include <Library/BaseMemoryLib.h>
 #include <KernelFdt.h>
 #include <fdtparser.h>
 #include <param.h>
 #include <keyval.h>
 
 STATIC
 inline
 fdt*
 EFIAPI
 GetFdt(VOID)
 {
   EFI_PHYSICAL_ADDRESS FdtStore = (EFI_PHYSICAL_ADDRESS)FixedPcdGet64(PcdDeviceTreeStore);
   EFI_PHYSICAL_ADDRESS FdtAddress = *(EFI_PHYSICAL_ADDRESS*)FdtStore;
 
   DEBUG((EFI_D_INFO, "Device Tree Address: 0x%016lx\n",FdtAddress));
   DEBUG((EFI_D_INFO, "Last"));
   /**
   * Note: Because the PcdSystemMemoryBase for 6g and 8g is different on Msm8998, 
   *       we are currently not checking if the Device Tree Address is valid.
   **/
   /*
   if (FdtAddress < PcdGet64(PcdSystemMemoryBase)){
     DEBUG((EFI_D_INFO, "Invalid Device Tree Address\n"));
     return NULL;
   }
  */
   return get_fdt_from_pointer ((VOID*)FdtAddress);
 }
 
 STATIC
 inline
 VOID
 EFIAPI
 CmdlineDumpItemDebug(IN UINTN Level, IN CHAR8 *Prefix, IN keyval *Item)
 {
   if (Item == NULL) return;
   DEBUG((
     Level,
     "%aKey = \"%a\", Value = \"%a\"\n",
     (Prefix != NULL ? Prefix : ""),
     Item->key, Item->value
   ));
 }
 
 STATIC
 inline
 VOID
 EFIAPI
 CmdlineDumpItemsDebug(IN UINTN Level, IN CHAR8 *Prefix, IN keyval **Items)
 {
   CHAR8 String[256];
   if (Items == NULL) return;
   KVARR_FOREACH (Items, Item, Index) {
     ZeroMem(String, sizeof (String));
     AsciiSPrint(
       String, sizeof (String), "%aItem %d: ",
       (Prefix != NULL ? Prefix : ""), Index + 1
     );
     CmdlineDumpItemDebug(Level, String, Item);
   }
 }
 
 #endif