Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A111215BE48
	for <lists+usrp-users@lfdr.de>; Thu, 13 Feb 2020 13:10:39 +0100 (CET)
Received: from [::1] (port=38930 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j2DKF-0000c3-7p; Thu, 13 Feb 2020 07:10:35 -0500
Received: from uhil19pa35.eemsg.mail.mil ([214.24.21.194]:47361)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <andrew.payne1@navy.mil>)
 id 1j2DKA-0000Xk-6E
 for usrp-users@lists.ettus.com; Thu, 13 Feb 2020 07:10:30 -0500
X-EEMSG-check-017: 78048818|UHIL19PA35_ESA_OUT01.csd.disa.mil
X-EEMSG-Attachment-filename: smime.p7s
X-EEMSG-Attachment-filesize: 5373
X-IronPort-AV: E=Sophos;i="5.70,436,1574121600"; 
 d="p7s'?scan'208";a="78048818"
Received: from naeanrfkax27.nmci.navy.mil (HELO
 NAEANRFKAX27o.NADSUSEA.NADS.NAVY.MIL) ([205.85.33.193])
 by UHIL19PA35.eemsg.mail.mil with ESMTP/TLS/DHE-RSA-AES256-SHA256;
 13 Feb 2020 12:09:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=navy.mil; s=dkim1; c=relaxed/simple;
 q=dns/txt; i=@navy.mil; t=1581595785; x=1584187785;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gsvWDYcOdeQkkQKPEIRLt8cXRqOU9uA+aAxBwVPNGhI=;
 b=eAvdS/n7ALCnmfDkLcCxmsgwFk4kgnx6NO4pcLtNqR3wbPE7JqBWSmL6j+wrDGBL
 VflHNLWwRtVqJp9WytMYMPY8nZik3Tlbtk5CCePO6DfWkk7F0VO0bKMP5+Vrs7jM
 BsUWuDhk0q/85UeokUGqtN8lVe8q9bMeG0WF4tOBJzJB9Lhp8NjSs3VKPAl/XqrI
 fb5p4BIJujSAj3q39DzlI7bAei3tcRDi0uu3m9/4DRrLeU7C34wfd19D5fEMGnXe
 Qatu+Kc2hS3vLc8KBgjV9ogx2VCoX+OuZM4x4JYOD5Qikk6ajsAcUG7/7icHTRo8
 Lwj43/5BjpzTspxIw+tyyw==;
X-AuditID: cd5521c0-cfbff70000007b4b-ff-5e453c895a7e
Received: from NAEANRFKXH54V.nadsusea.nads.navy.mil (Unknown_Domain
 [205.85.33.242]) (using TLS with cipher AES128-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by NAEANRFKAX27o.NADSUSEA.NADS.NAVY.MIL (Symantec Messaging Gateway) with SMTP
 id 67.0D.31563.98C354E5; Thu, 13 Feb 2020 07:09:45 -0500 (EST)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNOC: 2 input/2 output block, synchronizing their outputs to
 GNURadio host
Thread-Index: AdXiZg7zdywlVwcoTn+hkUntlG0U1A==
Date: Thu, 13 Feb 2020 12:09:41 +0000
Message-ID: <dbe0e0b485ba4b2786c97ea5e0a0eee2@NAEACRANXE02V.nadsusea.nads.navy.mil>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.18.56.62]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVyNlTxk26njWucwZTjQhav2hYwW1zonMPu
 wOQxceUhZo/rZ7YzBTBFcdmkpOZklqUW6dslcGXseTeXseCzZ0Xv9iesDYw7XLsYOTkkBEwk
 JjbPY+xi5OIQEjjCJLFrzXQ2kASbQILEz92tjCC2iICtxJ9ZC5lBbGYBXYl3b/ezgNjCAmES
 C3fvZYOoiZbY8/UHVL2exNpbe8BqWARUJW5+bgGq4eDgFQiWOLPbHiTMKCAm8f3UGiaIkeIS
 t57MZ4K4R0Ti4cXTbBC2qMTLx/9YIWwDia1L97FA2PISfbMOs4LczCzQyyhx4/I5sASvgKDE
 yZlPWEB2CQkoSyw5ITSBUXgWkhWzkLXMQtICUWQgcf9QByuErS2xbOFrZgjbWmLGr4NsELai
 xJTuh+wQtqnE66MfGRcwcqxiVPZzdHX0C3LzdowwMtfzc3QJDg12dQQzgERYpJ6vp88mRkjM
 HdjBuOzEe71DjEwcjIcYVYAGPdqw+gKjFEtefl6qkgiveKNznBBvSmJlVWpRfnxRaU5q8SFG
 aQ4WJXFeMw67OCGB9MSS1OzU1ILUIpgsEwenVAOTrPSbhw+lVkz6ragnOn+S8ARf+Sg+Jebw
 jE8/Lol+PLnqP6/Cd2Wb/FnLo5MObY4+PzN/c+0KaXl/s/KozcFn2R61XXCevLsnYnemSRq3
 cfiKNj2Gqc6bLgis4D119XV49jbWpdM3sPdZSjB8P2T74rO4jL3c+XwNnWNK0stdvRm3/a6c
 cub5rR9TA1jaFk1IFQ4W/sFcNrPamatPePt2U4czx5lu+x29qvv+776DsaFbamYGzCiTXrX5
 l8tC84IV8fU787clF/evu3gt6eqsb2xl99YbcK6Sy+3jqKiNqMzyeb30xDWbKbs8br7YJWPR
 UaPdtKRqe9COc2t+VCl9MHvz1d31Ia9u9M899hd3KLEUZyQaajEXFScCAJ5axV00AwAA
Subject: [USRP-users] RFNOC: 2 input/2 output block,
 synchronizing their outputs to GNURadio host
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Payne, William Andrew \(Andrew\) CIV USN NSWC CD CRANE ID \(USA\) via
 USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Payne, William Andrew \(Andrew\) CIV USN NSWC CD CRANE ID \(USA\)"
 <andrew.payne1@navy.mil>
Cc: "matt.pegram@ni.com" <matt.pegram@ni.com>
Content-Type: multipart/mixed; boundary="===============6630019736932658409=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6630019736932658409==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0347_01D5E23C.8D975D00"

------=_NextPart_000_0347_01D5E23C.8D975D00
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to solve what I think is a timing issue with my RFNOC =
design. =A0I have an E310 running UHD 3.15LTS/GNUradio 3.7/gr-ettus.

I have created a custom RFNOC block for GNUradio without much custom =
logic, I've managed to just reuse code blocks from the uhd-fpga repo in =
lib/rfnoc. =A0In particular, I am using the following blocks in this =
order: complex to magphase (ISE IP in lib/rfnoc) -> moving_sum -> =
keep_one_in_n -> fifo with size 5 (so I don't have to have RFNOC:FIFO =
blocks taking up room in the FPGA). =A0For moving_sum I'm trying to use =
511 as the sum length and for keep_one_in_n I am using 512.  I have made =
this block a permanent 2 input/2 output block by setting those =
parameters in noc_shell instantiation. =A0I am using the axi_wrappers (0 =
and 1) with SIMPLE MODE set to 0, and simply utilizing the =
cvita_hdr_modify.v IP exactly as utilized in the =
noc_block_keep_one_in_n.v block to set the tuser headers.

In Vivado behavioral simulation the data correctly flows through but =
what I am unsure about is the fact that after synthesizing and loading =
the FPGA bit file into the e310 and running my flowgraph, it just =
repeatedly prints out timeout on channel 0. =A0 By the way this code =
does work on just a single input/single output application but I want to =
consolidate it into a single GRC block to save space on the relatively =
small FPGA. =A0What do I need to do to sync the 2 e310 rx2 channels so =
they arrive close to on-time in GRC? =A0Or is that probably not the =
problem?  I assume I should be looking at how it's done in =
noc_block_ddc/duc as they have implemented timed samples within those?

Thanks,
Andrew


------=_NextPart_000_0347_01D5E23C.8D975D00
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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
Vgk3TBRZ9Sq3HEb8G49PFh65bQcY6SkqhayKLSU6EKGz6140536RPEL/DwN6/xF8IXzh7/0aKWgD
qnEiGV1zRciJh2wQQRGY6GruyYOcg0yGfDfgSHLH7qYPwaKLYGWnJ+G2o/lw3Wyslv61MeR90m6n
1MTMwhnpEWojajvlaejFGPxJFxpvjQc6wEr2f7vB71iMTkV7tsjowBRR8H9s5PGdyfn49cNBLYDu
A72tyvDzR30Rk/CYvrq5bv/NKfs07Xr1FMS+au7qrOpI935KHZODw7y3+OGdmn81SYW2MjqvuUwJ
OZ0luyccfOFBPYGi9p/hzksBa8u47QIDAQABo4IBnTCCAZkwHwYDVR0jBBgwFoAU9x/xRjhVv7xx
i7IGO44rGLJeu7QwOgYDVR0fBDMwMTAvoC2gK4YpaHR0cDovL2NybC5kaXNhLm1pbC9jcmwvRE9E
RU1BSUxDQV80My5jcmwwDgYDVR0PAQH/BAQDAgbAMBYGA1UdIAQPMA0wCwYJYIZIAWUCAQsqMB0G
A1UdDgQWBBTVs4MOovend9q9IOsz83ijPBR0uTBoBggrBgEFBQcBAQRcMFowNgYIKwYBBQUHMAKG
Kmh0dHA6Ly9jcmwuZGlzYS5taWwvc2lnbi9ET0RFTUFJTENBXzQzLmNlcjAgBggrBgEFBQcwAYYU
aHR0cDovL29jc3AuZGlzYS5taWwwQQYDVR0RBDowOIEWYW5kcmV3LnBheW5lMUBuYXZ5Lm1pbKAe
BgorBgEEAYI3FAIDoBAMDjE0MDI3OTE3NTJAbWlsMBsGA1UdCQQUMBIwEAYIKwYBBQUHCQQxBBMC
VVMwKQYDVR0lBCIwIAYKKwYBBAGCNxQCAgYIKwYBBQUHAwIGCCsGAQUFBwMEMA0GCSqGSIb3DQEB
CwUAA4IBAQClBbUSeLYxbCVTVVRK+AfD7P572vmh3kQkp2pedwkngZ0otI8hWq4aZly2lFCjD2hH
kQLFBALD4bOwoBJqgOzG9j9tjnLWExDJmka++2XiOJuxzlKRVeCLfWKKHFnlR1hVvzKMPOl/1ycV
Gnj/eW9n01g7RgB7HjnV0hHTvvQYdPAlpfx4nYGaOm0dACOGbpTLAfTbvJL7t6xB49PGk/4tNrwl
w2FwoKpfaOKfCiQvfyoy5Rdhc2phFLThRgddnHWINBVLuj09vFO7Jy7zw1NlMBpEim5k82u9gqbk
/arMrihjqvUUewYtzfsdhSx62F9zK2L3LBQ+zqFXGYwWAu3pMYIC/zCCAvsCAQEwZDBdMQswCQYD
VQQGEwJVUzEYMBYGA1UEChMPVS5TLiBHb3Zlcm5tZW50MQwwCgYDVQQLEwNEb0QxDDAKBgNVBAsT
A1BLSTEYMBYGA1UEAxMPRE9EIEVNQUlMIENBLTQzAgMPhu0wCQYFKw4DAhoFAKCCAXAwGAYJKoZI
hvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjAwMjEzMTIwOTM3WjAjBgkqhkiG
9w0BCQQxFgQUUwq4fsNFRXJnVmvXl2kVN59CGswwJQYJKoZIhvcNAQkPMRgwgRUwBwYFKw4DAhow
CgYIKoZIhvcNAwcwcwYJKwYBBAGCNxAEMWYwZDBdMQswCQYDVQQGEwJVUzEYMBYGA1UEChMPVS5T
LiBHb3Zlcm5tZW50MQwwCgYDVQQLEwNEb0QxDDAKBgNVBAsTA1BLSTEYMBYGA1UEAxMPRE9EIEVN
QUlMIENBLTQzAgMPhu8wdQYLKoZIhvcNAQkQAgsxZqBkMF0xCzAJBgNVBAYTAlVTMRgwFgYDVQQK
Ew9VLlMuIEdvdmVybm1lbnQxDDAKBgNVBAsTA0RvRDEMMAoGA1UECxMDUEtJMRgwFgYDVQQDEw9E
T0QgRU1BSUwgQ0EtNDMCAw+G7zANBgkqhkiG9w0BAQEFAASCAQADY5+Pv7TK9NCZmVcxbN1wXbTN
cEseb5BIqV7JyfPkmQesCT1GRtcLicqJpRErpsGHJdpfksZxIEIANFN/bY8vafTbAUoTruCB6dzR
CRlmVOitDOY9zqZJdJAXF7yqnxLEhj+N+WIvWSad+pNuSbkQBfHbrO25VXjz58E/PASM0IEtH9zN
v6T3cObI0rBnK2FSW5RAEWqjMsOMJr7qn8mQnM/g/RfXxG7DX1ok0josVZO6oWfgScXXYC5P93Lq
dT1v3BNn9PTLw+sxq056HBCtpu5Cw/6/mKIV7jvE6ymz86zZwJmdo/HXN8K7ij+C0/siHef5sjgC
LJ1bYYX0Z1FYAAAAAAAA

------=_NextPart_000_0347_01D5E23C.8D975D00--


--===============6630019736932658409==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6630019736932658409==--

