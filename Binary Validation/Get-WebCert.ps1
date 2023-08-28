# Website SSL information

​[Net.ServicePointManager]::ServerCertificateValidationCallback = { $true }
$url = "https://10.0.240.140:9440/"
$req = [Net.HttpWebRequest]::Create($url)
$req.GetResponse() | Out-Null
$output = [PSCustomObject]@{
   URL = $url
   'Cert Start Date' = $req.ServicePoint.Certificate.GetEffectiveDateString()
   'Cert End Date' = $req.ServicePoint.Certificate.GetExpirationDateString()
 #  'Cert Hash' = $req.ServicePoint.Certificate.GetCertHash()
   'Cert Hash String' = $req.ServicePoint.Certificate.GetCertHashString()
   'Cert Format' = $req.ServicePoint.Certificate.GetFormat()
 #  'Cert Hash Code' = $req.ServicePoint.Certificate.GetHashCode()
   'Cert Issuer Name' = $req.ServicePoint.Certificate.GetIssuerName()
   'Cert Key Algorithm' = $req.ServicePoint.Certificate.GetKeyAlgorithm()
 #  'Cert Key Algorithm Parameters' = $req.ServicePoint.Certificate.GetKeyAlgorithmParameters()
   'Cert Algorithm Parameters String' = $req.ServicePoint.Certificate.GetKeyAlgorithmParametersString()
   'Cert Name' = $req.ServicePoint.Certificate.GetName()
 #  'Cert Object Data' = $req.ServicePoint.Certificate.GetObjectData()
 #  'Cert Public Key'= $req.ServicePoint.Certificate.GetPublicKey()
   'Cert Public Key String' = $req.ServicePoint.Certificate.GetPublicKeyString()
 #  'Cert Raw Cert Data' = $req.ServicePoint.Certificate.GetRawCertData()
 ## 'Cert Raw Cert Data String' = $req.ServicePoint.Certificate.GetRawCertDataString()
 #  'Cert Serial Number' = $req.ServicePoint.Certificate.GetSerialNumber()
   'Cert Serial Number String' = $req.ServicePoint.Certificate.GetSerialNumberString()
   'Cert Type' = $req.ServicePoint.Certificate.GetType()
}
$output



/#

URL                              : https://www.microsoft.com:443/
Cert Start Date                  : 10/4/2022 7:23:11 PM
Cert End Date                    : 9/29/2023 7:23:11 PM
Cert Hash String                 : 2D6E2AE5B36F22076A197D50009DEE66396AA99C
Cert Format                      : X509
Cert Issuer Name                 : C=US, O=Microsoft Corporation, CN=Microsoft Azure TLS Issuing CA 06
Cert Key Algorithm               : 1.2.840.113549.1.1.1
Cert Algorithm Parameters String : 0500
Cert Name                        : C=US, S=WA, L=Redmond, O=Microsoft Corporation, CN=www.microsoft.com
Cert Public Key String           : 3082010A0282010100B75F23136D6F9BFA84D14648ABA448EC1FF2621760ECCBC4A3286B824F949208EEAA7C36ADCDB505CEF327ED3145032384590863A79BE902EDF3
                                   653BBD8DE7B3B975C9C75FB6132D7956764957743BF33C0927FDF24DB8977F386A616AF7D4D9B76E81732995991990C7818EDEA40758C2539D2D09384111E6DDA24D38
                                   958281CD69AD277F5E03FEABDB183A7018551BFDB46B64CE74D7E90692F368D68C31FCCC78B6F7D2BC610A64D5AA29853049022B6BA66045487BC3830329BABA71D2B8
                                   C0BEAD50DBB9930161B4ECB31DEC9EE7C99885CD4C661430EADA2C76DB4C8F1262FEC25CF5752AB035A2198BB7FAED0F5A4391A713403920FB4AD1E629D406EF020301
                                   0001
Cert Serial Number String        : 330059F8B6DA8689706FFA1BD900000059F8B6
Cert Type                        : System.Security.Cryptography.X509Certificates.X509Certificate




PS C:\Users\Public> 

#/
