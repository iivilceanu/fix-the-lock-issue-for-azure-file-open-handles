Connect-AzAccount
#if running from Azure Powershell please run cmdlet 'Connect-AzAccount -UseDeviceAuthentication'
#Set Azure Subscription
Select-AzSubscription -subscriptionid "yoursubscriptionid"

#create azure storage account context
$Context = New-AzStorageContext -StorageAccountName "yourstorageaccount" -StorageAccountKey "yourstorageaccountkey"

Get-AzStorageFileHandle -Context $Context -ShareName "filesharename" -Recursive | Sort-Object ClientIP,OpenTime

#Set Context
$Context = New-AzStorageContext -StorageAccountName "yourstorageaccount" -StorageAccountKey "yourstorageaccountkey"

#To close the open handles
Close-AzStorageFileHandle -Context $Context -ShareName "filesharename" -Path 'azcopy.exe' -CloseAll
