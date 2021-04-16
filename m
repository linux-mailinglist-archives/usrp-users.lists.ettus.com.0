Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAB536238E
	for <lists+usrp-users@lfdr.de>; Fri, 16 Apr 2021 17:10:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E3243844DB
	for <lists+usrp-users@lfdr.de>; Fri, 16 Apr 2021 11:10:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gtri.gatech.edu header.i=@gtri.gatech.edu header.b="totddHrH";
	dkim-atps=neutral
Received: from unifiededge.gtri.gatech.edu (unifiededge.gtri.gatech.edu [130.207.205.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 59A81383ECE
	for <usrp-users@lists.ettus.com>; Fri, 16 Apr 2021 11:09:40 -0400 (EDT)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=unifiededge;
	c=simple/simple; t=1618585779; h=from:subject:to:date:message-id;
	bh=blCsfa226dZEEUTgrohagkTQTUzdtyAOZKziuQJHC+4=;
	b=totddHrHyoEtJvFrI6z6Wgu2TZug5ThUZNxHLAPSS2wKhmjnq0LjLnyiATuNdXeEzu2e/5qaBzw
	R9bSIGIKGM63u8Gzip2GveHCTn898OQ9tRu8HkjFEJuhjPRY1K/0KlDOT/xm4YzJ7DEAim6yQMPXu
	PFO+EMQlonRcz6Yh76UCfDinSZLb3B2V0lYooe5/dxHR1sfjtNgR913RzJH2ZGVzEYLMtgf5BI+Ol
	5s/Xu5qzp8s8Xq8Ht00TriQqwsx/v+SN/RxerX2iCPSHd/uuQ3WcKcvBXfJpU6yhVUYyOxf9ibUEN
	wxUHcPzbhXFU3ca56E6rFTAWFguvtL7FjtUw==
Received: from parris.core.gtri.org (10.41.31.72) by exedge06.gtri.dmz
 (10.41.104.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.2.721.2; Fri, 16 Apr 2021
 11:09:39 -0400
Received: from tybee.core.gtri.org (10.41.1.49) by parris.core.gtri.org
 (10.41.31.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2242.4; Fri, 16
 Apr 2021 11:09:36 -0400
Received: from tybee.core.gtri.org ([fe80::bc87:62f3:89b0:fc9e]) by
 tybee.core.gtri.org ([fe80::bc87:62f3:89b0:fc9e%15]) with mapi id
 15.01.2242.008; Fri, 16 Apr 2021 11:09:36 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: AXI Stream Issue
Thread-Index: AdcvzSiJaruC5YfNQv2B3bJuz6m75gAh9IKAAHJJChAAMydXgAAGIqCA
Date: Fri, 16 Apr 2021 15:09:36 +0000
Message-ID: <edbd9eb0056a44a99611b7c551973ce8@gtri.gatech.edu>
References: <b4cb345657e64c14b5fc1bfa84d34922@gtri.gatech.edu>
 <804ea930-44e5-aad0-cf5c-77d13b0afbf7@itsystems.it>
 <52db1ef0491e4088ae2ce829102a50ec@gtri.gatech.edu>
 <4082ac19-a564-a65d-3384-54f80c8b96e0@itsystems.it>
In-Reply-To: <4082ac19-a564-a65d-3384-54f80c8b96e0@itsystems.it>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Message-ID-Hash: PCCY4A3RXAUO6EUPJKV7GXEFFL3QZBRI
X-Message-ID-Hash: PCCY4A3RXAUO6EUPJKV7GXEFFL3QZBRI
X-MailFrom: Michael.Rich@gtri.gatech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: AXI Stream Issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PCCY4A3RXAUO6EUPJKV7GXEFFL3QZBRI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Rich, Michael via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Rich, Michael" <Michael.Rich@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============6924164901767306337=="

--===============6924164901767306337==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_00BB_01D732B0.FC371460"

------=_NextPart_000_00BB_01D732B0.FC371460
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Paolo,

Yes, it does sound like we are having slightly different issues here.

I am suppressing my output when data_ready from the AXI_Wrapper goes =
low. In
fact, even if I drop data (rather than queue it up) while data_ready is =
low,
I still get that 'D' message (even when making sure my sequence numbers
remain sequential despite the dropped data samples).

Thanks, =20

Michael H. Rich
Electronic Systems Laboratory
Georgia Tech Research Institute=AE
Phone: (404) 407-8358
E-mail: michael.rich@gtri.gatech.edu

-----Original Message-----
From: Paolo Palana <p.palana@itsystems.it>=20
Sent: Friday, April 16, 2021 10:03 AM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: AXI Stream Issue

Hi Michael,

Probably mine problems and your are not exactly the same, but I think =
they
are related in some way.

Mine, for example, was due an error in the logic inside my block that =
caused
a deadlock on the (RFNoC) bus.

As far as I can understand the usrp word I think your problem can be =
quite
similar.

When you receive an overrun error on the host side, as also Rob said, =
that
means that your block is producing samples at a rate too high for the =
host.

When the data_ready from the axi wrapper, that should be an output from =
the
axi wrapper itself and the should be an input to your logic, goes low is
something like someone is telling you "please stop streaming for a while
because I'm not ready to receive data". What do you do in your logic =
when
the data_ready signal goes low?

Hope this can help you a little

Have=A0 good day

Paolo

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe =
send an
email to usrp-users-leave@lists.ettus.com

------=_NextPart_000_00BB_01D732B0.FC371460
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIVtzCCBDIw
ggMaoAMCAQICAQEwDQYJKoZIhvcNAQEFBQAwezELMAkGA1UEBhMCR0IxGzAZBgNVBAgMEkdyZWF0
ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBwwHU2FsZm9yZDEaMBgGA1UECgwRQ29tb2RvIENBIExpbWl0
ZWQxITAfBgNVBAMMGEFBQSBDZXJ0aWZpY2F0ZSBTZXJ2aWNlczAeFw0wNDAxMDEwMDAwMDBaFw0y
ODEyMzEyMzU5NTlaMHsxCzAJBgNVBAYTAkdCMRswGQYDVQQIDBJHcmVhdGVyIE1hbmNoZXN0ZXIx
EDAOBgNVBAcMB1NhbGZvcmQxGjAYBgNVBAoMEUNvbW9kbyBDQSBMaW1pdGVkMSEwHwYDVQQDDBhB
QUEgQ2VydGlmaWNhdGUgU2VydmljZXMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC+
QJ30buHqdoccTUVEjr5GyIMGncEq/hgfjuQC+vOrXVCKFjELmgbQxXAizUktVGPMtm5oRgtT6stM
JMC8ck7q8RWu9FSaEgrDerIzYOLaiVXzIljz3tzP74OGooyUT59o8piQRoQnx3a/48w1LIteB2Rl
gsBIsKiR+WGfdiBQqJHHZrXreGIDVvCKGhPqMaMeoJn9OPb2JzJYbwf1a7j7FCuvt6rM1mNfc4za
BZmoOKjLF3g2UazpnvR4Oo3PD9lC4pgMqy+fDgHe75+ZSfEt36x0TRuYtUfF5SnR+ZAYx2KcvoPH
Jns+iiXHwN2d5jVoECCdj9je0sOEnA1e6C/JAgMBAAGjgcAwgb0wHQYDVR0OBBYEFKARCiM+lvEH
7OKvKe+CpX/QMKS0MA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MHsGA1UdHwR0MHIw
OKA2oDSGMmh0dHA6Ly9jcmwuY29tb2RvY2EuY29tL0FBQUNlcnRpZmljYXRlU2VydmljZXMuY3Js
MDagNKAyhjBodHRwOi8vY3JsLmNvbW9kby5uZXQvQUFBQ2VydGlmaWNhdGVTZXJ2aWNlcy5jcmww
DQYJKoZIhvcNAQEFBQADggEBAAhW/ALwm+j/pPrWe8ZEgM5PxMX2AFjMpra8FEloBHbo5u5d7AIP
YNaNUBhPJk4B4+awpe6/vHRUQb/9/BK4x09a9IlgBX9gtwVK8/bxwr/EuXSGti19a8zS80bdL8bg
asPDNAMsfZbdWsIOpwqZwQWLqwwv81w6z2w3VQmH3lNAbFjv/LarZW4E9hvcPOBaFcae2fFZSDAh
ZQNs7Okhc+ybA6HgN62gFRiP+roCzqcsqRATLNTlCCarIpdg+JBedNSimlO98qlo4KJuwtdssaMP
nr/raOdW8q7y4ys4OgmBtWuF174t7T8at7Jj4vViLILUagBBUPE5g5+V6TaWmG4wggWBMIIEaaAD
AgECAhA5ckQ6+SK3UdfTbBDdMTWVMA0GCSqGSIb3DQEBDAUAMHsxCzAJBgNVBAYTAkdCMRswGQYD
VQQIDBJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcMB1NhbGZvcmQxGjAYBgNVBAoMEUNvbW9k
byBDQSBMaW1pdGVkMSEwHwYDVQQDDBhBQUEgQ2VydGlmaWNhdGUgU2VydmljZXMwHhcNMTkwMzEy
MDAwMDAwWhcNMjgxMjMxMjM1OTU5WjCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCk5ldyBKZXJz
ZXkxFDASBgNVBAcTC0plcnNleSBDaXR5MR4wHAYDVQQKExVUaGUgVVNFUlRSVVNUIE5ldHdvcmsx
LjAsBgNVBAMTJVVTRVJUcnVzdCBSU0EgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkwggIiMA0GCSqG
SIb3DQEBAQUAA4ICDwAwggIKAoICAQCAEmUXNg7D2wiz0KxXDXbtzSfTTK1Qg2HiqiBNCS1kCdzO
iZ/MPans9s/B3PHTsdZ7NygRK0faOca8Ohm0X6a9fZ2jY0K2dvKpOyuR+OJv0OwWIJAJPuLodMkY
tJHUYmTbf6MG8YgYapAiPLz+E/CHFHv25B+O1ORRxhFnRghRy4YUVD+8M/5+bJz/Fp0YvVGONaan
ZshyZ9shZrHUm3gDwFA66Mzw3LyeTP6vBZY1H1dat//O+T23LLb2VN3I5xI6Ta5MirdcmrS3ID3K
fyI0rn47aGYBROcBTkZTmzNg95S+UzeQc0PzMsNT79uq/nROacdrjGCT3sTHDN/hMq7MkztReJVn
i+49Vv4M0GkPGw/zJSZrM233bkf6c0Plfg6lZrEpfDKEY1WJxA3Bk1QwGROs0303p+tdOmw1XNtB
1xLaqUkL39iAigmTYo61Zs8liM2EuLE/pDkP2QKe6xJMlXzzawWpXhaDzLhn4ugTncxbgtNMs+1b
/97lc6wjOy0AvzVVdAlJ2ElYGn+SNuZRkg7zJn0cTRe8yexDJtC/QV9AqURE9JnnV4eeUB9XVKg+
/XRjL7FQZQnmWEIuQxpMtPAlR1n6BB6T1CZGSlCBst6+eLf8ZxXhyVeEHg9j1uliutZfVS7qXMYo
CAQlObgOK6nyTJccBz8NUvXt7y+CDwIDAQABo4HyMIHvMB8GA1UdIwQYMBaAFKARCiM+lvEH7OKv
Ke+CpX/QMKS0MB0GA1UdDgQWBBRTeb9aqitKz1SA4dibwJ3ysgNmyzAOBgNVHQ8BAf8EBAMCAYYw
DwYDVR0TAQH/BAUwAwEB/zARBgNVHSAECjAIMAYGBFUdIAAwQwYDVR0fBDwwOjA4oDagNIYyaHR0
cDovL2NybC5jb21vZG9jYS5jb20vQUFBQ2VydGlmaWNhdGVTZXJ2aWNlcy5jcmwwNAYIKwYBBQUH
AQEEKDAmMCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5jb21vZG9jYS5jb20wDQYJKoZIhvcNAQEM
BQADggEBABiHUdx0IT2ciuAntzPQLszs8ObLXhHeIm+bdY6ecv7k1v6qH5yWLe8DSn6u9I1vcjxD
O8A/67jfXKqpxq7y/Njuo3tD9oY2fBTgzfT3P/7euLSK8JGW/v1DZH79zNIBoX19+BkZyUIrE79Y
i7qkomYEdoiRTgyJFM6iTckys7roFBq8cfFb8EELmAAKIgMQ5Qyx+c2SNxntO/HkOrb5RRMmda+7
qu8/e3c70sQCkT0ZANMXXDnbP3sYDUXNk4WWL13fWRZPP1G91UUYP+1KjugGYXQjFrUNUHMnREd/
EF2JKmuFMRTE6KlqTIC8anjPuH+OdnKZDJ3+15EIFqGjX5UwggXxMIIE2aADAgECAhEAgvGV/aOP
snnh+55ll6giJTANBgkqhkiG9w0BAQsFADCBiTELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAk1JMRIw
EAYDVQQHEwlBbm4gQXJib3IxEjAQBgNVBAoTCUludGVybmV0MjERMA8GA1UECxMISW5Db21tb24x
MjAwBgNVBAMTKUluQ29tbW9uIFJTQSBTdGFuZGFyZCBBc3N1cmFuY2UgQ2xpZW50IENBMB4XDTIw
MDMxNzAwMDAwMFoXDTIzMDMxNzIzNTk1OVowgd8xDjAMBgNVBBETBTMwMzMyMRMwEQYDVQQLEwpH
VFJJLUVMU1lTMSgwJgYDVQQKEx9HZW9yZ2lhIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5MRkwFwYD
VQQJExAyMjUgTk9SVEggQVZFIE5XMRAwDgYDVQQIEwdHZW9yZ2lhMRAwDgYDVQQHEwdBdGxhbnRh
MQswCQYDVQQGEwJVUzEVMBMGA1UEAxMMTWljaGFlbCBSaWNoMSswKQYJKoZIhvcNAQkBFhxtaWNo
YWVsLnJpY2hAZ3RyaS5nYXRlY2guZWR1MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
24fvyXxky1Bj+3LTRunyP4Qx7xk3OtkgVLXktky9UAvurKAdtF+kgdgS7BqEZK2yG+Y3nQHSods+
g8EDrgnyCmIuYVwlrH/H36Pg9Ca601ZYpBVbJ+vonDNhmRWWH+w5pbuhQ8IrtTxVKkR1Q7iZu9+T
CEtjZ/Q8a0NKt8xpDNqF+ey73OSl5cIgkhVjobDTF0hzx8y3eLZfoZ7Vg8gRNpK1WLG9dWRi4NVS
qD5wDW7IxS/vvvYdGh406ZiezNsOuZjCnpTU5lrXeHvrXPjLrs74kaNIfyQzs/b4pckcFEhJXJkx
gh1LSCAvIMHA57dg1BfyR7hB/1b4nOUpAWFHKQIDAQABo4IB+jCCAfYwHwYDVR0jBBgwFoAUfe5x
0B/rqWFtj2aErQ8rB+Ix27wwHQYDVR0OBBYEFAQKpoUYI6FNQQLbi8DZCQshCN24MA4GA1UdDwEB
/wQEAwIFoDAMBgNVHRMBAf8EAjAAMB0GA1UdJQQWMBQGCCsGAQUFBwMEBggrBgEFBQcDAjBqBgNV
HSAEYzBhMF8GDSsGAQQBriMBBAMDAAEwTjBMBggrBgEFBQcCARZAaHR0cHM6Ly93d3cuaW5jb21t
b24ub3JnL2NlcnQvcmVwb3NpdG9yeS9jcHNfc3RhbmRhcmRfY2xpZW50LnBkZjBVBgNVHR8ETjBM
MEqgSKBGhkRodHRwOi8vY3JsLmluY29tbW9uLXJzYS5vcmcvSW5Db21tb25SU0FTdGFuZGFyZEFz
c3VyYW5jZUNsaWVudENBLmNybDCBigYIKwYBBQUHAQEEfjB8MFAGCCsGAQUFBzAChkRodHRwOi8v
Y3J0LmluY29tbW9uLXJzYS5vcmcvSW5Db21tb25SU0FTdGFuZGFyZEFzc3VyYW5jZUNsaWVudENB
LmNydDAoBggrBgEFBQcwAYYcaHR0cDovL29jc3AuaW5jb21tb24tcnNhLm9yZzAnBgNVHREEIDAe
gRxtaWNoYWVsLnJpY2hAZ3RyaS5nYXRlY2guZWR1MA0GCSqGSIb3DQEBCwUAA4IBAQAOQx1GHPoX
3sz6J9o9zk1NjXH7ZclwC/PQawXElV3vDGSryCnNsNqQJNMnG7OOzjq/u9PnGdDpmVI8mFjci6jr
YR8yTgd3aTiG230emq+lbmYmGhibxQZGRN725JFt9veX62fp3esnMoIqKbAz+LxnUtWc42uJeCoF
C0+d+Jmo+VIrVSO3vJJLGimOPh+iHrLpyV2bqj0AorSi2Mfb4c3G4oiAGykF38pZtsW9cwoo+ZE+
IsCBiMn7JCXIEFtpmYUpPCeECgAVOOQvB7B3maSa+Qu0BRQZ78sRXluHAEoh6PhsMgqNuwEVNvp3
BQx7uNz8j+30hpKBMV0X26FUKefDMIIGAzCCA+ugAwIBAgIQP7008rpS/A7TClejgeG+ZDANBgkq
hkiG9w0BAQ0FADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCk5ldyBKZXJzZXkxFDASBgNVBAcT
C0plcnNleSBDaXR5MR4wHAYDVQQKExVUaGUgVVNFUlRSVVNUIE5ldHdvcmsxLjAsBgNVBAMTJVVT
RVJUcnVzdCBSU0EgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkwHhcNMTQwOTE5MDAwMDAwWhcNMjQw
OTE4MjM1OTU5WjCBiTELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAk1JMRIwEAYDVQQHEwlBbm4gQXJi
b3IxEjAQBgNVBAoTCUludGVybmV0MjERMA8GA1UECxMISW5Db21tb24xMjAwBgNVBAMTKUluQ29t
bW9uIFJTQSBTdGFuZGFyZCBBc3N1cmFuY2UgQ2xpZW50IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
AQ8AMIIBCgKCAQEAgP7KW3d3xh/sgvvnWYpVrcDqnrEH6CYrNgmi8S9MOllAnKuc8kApQCWScil4
j5sGahB8t2QH/xj8UNuoGCDG5xEZxgFoRz/ZkuzdNJK4ZJ8b9dIm2XPUTKbgIwluPp38+oLV5P6k
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
Jsg/D/bZ19AAAAAAAAA=

------=_NextPart_000_00BB_01D732B0.FC371460--

--===============6924164901767306337==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6924164901767306337==--
