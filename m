Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DADF7747CE1
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jul 2023 08:16:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D0FA8380077
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jul 2023 02:16:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688537776; bh=mKoN8YCwHnotYD5tmJvPWwRoUNrTyhxfs7Q2atn6Q6M=;
	h=Date:From:To:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lexqCSNz4gpPg+urNerK7s8hY8SERsTPaTKtqAT2uc+dnhHo02hw2fcIlMQiKKpYc
	 QDcUG05D1KR0D+98L4zHaIZaSaEiWldJVIecJBX47aj9RE4C1N3TLghPvKoF4i6QTv
	 D3dJ7POaWsGVEhn5JtPiudBc/13ndBtGltDw/aLXrPEfhTjoSmSnnE33hodgTOsnVm
	 4Xgg8Fhg+dXje+yXhf8Jdg39QyfTMbfMomdU7tvmm9YFwh2u4aeyCLLOJU9q3AXy5F
	 Ws5n2rFLxBXqpGvfWV9REAZqZurj9WdJ0uCkXLJpYB7fJ0ZriaQFckVJjEf7/662jX
	 eZ1FJyAkVPKXw==
Received: from lxmtout1.gsi.de (lxmtout1.gsi.de [140.181.3.111])
	by mm2.emwd.com (Postfix) with ESMTPS id 4B16A383700
	for <usrp-users@lists.ettus.com>; Wed,  5 Jul 2023 02:15:18 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by lxmtout1.gsi.de (Postfix) with ESMTP id 9BC22205104F;
	Wed,  5 Jul 2023 08:15:16 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at lxmtout1.gsi.de
Received: from lxmtout1.gsi.de ([127.0.0.1])
	by localhost (lxmtout1.gsi.de [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id kZJqteVJz3uQ; Wed,  5 Jul 2023 08:15:16 +0200 (CEST)
Received: from srvEX6.campus.gsi.de (unknown [10.10.4.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by lxmtout1.gsi.de (Postfix) with ESMTPS id 7E8822051040;
	Wed,  5 Jul 2023 08:15:16 +0200 (CEST)
Received: from [10.23.1.60] (140.181.3.12) by srvEX6.campus.gsi.de
 (10.10.4.96) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Wed, 5 Jul
 2023 08:15:16 +0200
Message-ID: <b61dcc76-06d4-aef9-5b83-b051a10e396c@gsi.de>
Date: Wed, 5 Jul 2023 08:15:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From: Philipp Niedermayer <p.niedermayer@gsi.de>
To: <usrp-users@lists.ettus.com>
Content-Language: en-GB, de-DE
X-Originating-IP: [140.181.3.12]
X-ClientProxiedBy: srvex5.Campus.gsi.de (10.10.4.95) To srvEX6.campus.gsi.de
 (10.10.4.96)
Message-ID-Hash: EQRXCLJK3MEFS6BQNOR53TQWHOFRREZJ
X-Message-ID-Hash: EQRXCLJK3MEFS6BQNOR53TQWHOFRREZJ
X-MailFrom: P.Niedermayer@gsi.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jernej Kokalj <jernej.kokalj@cosylab.com>, =?UTF-8?Q?Bla=c5=be_Kelbl?= <blaz.kelbl@cosylab.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Custom RFNoC block: data throughput bottleneck
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EQRXCLJK3MEFS6BQNOR53TQWHOFRREZJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0682331096767562116=="

--===============0682331096767562116==
Content-Language: en-GB, de-DE
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-512; boundary="------------ms060703090202070809000907"

--------------ms060703090202070809000907
Content-Type: multipart/alternative;
 boundary="------------oR4ancdmTOKdTacBRwh8Mipg"

--------------oR4ancdmTOKdTacBRwh8Mipg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Dear all,

we are working on a custom OOT RFNoC Block implementation [1] on a USRP=20
X310 and are facing data throughput bottlenecks.

The DSP is controlled via GNU Radio / UHD like this:
Signal Source -> RFNoC TX Streamer -> custom OOT block -> RFNoC RX=20
Streamer -> QT GUI Time Sink

When running the flow graph we get a lot of "DDDD" printed to the=20
console, i.e. package drop due to buffer overflow. Adding a GNU Radio=20
"Probe rate" block shows that the sampling rate before the TX Streamer=20
is 200kSps as desired. However, behind the RX Streamer, the sampling=20
rate is only 64 Sps (!).

When bypassing our custom VHDL implementation in the OOT Block (i.e.=20
assigning all s_out_axis_t* to respective m_in_axis_t*) the flow graph=20
works as expected, so the RFNoC part alone works just fine.

The VHDL implementation requires some 100 clock cycles for a sample to=20
propagate. But since we use the 200MHz clock, achieving sampling rates=20
of 200kSps should not be an issue. The custom OOT block also has an=20
option for interpolation (i.e. increasing sampling rate), but the=20
behaviour is the same even for interpolation=3D1.

Do you have some hints on how to improve performance? We have already=20
tried to
- Increase the payload FIFO depth from 32 to 128
- Try both, the context-payload and the data AXI-Stream interface
- Assert tlast on every sample to reduce packages size

Some things we have considered but are not sure about:
- MTU size
- Package size

Thanks for taking the time to share your ideas
Philipp, Jernej, Bla=C5=BE


[1]=20
https://git.gsi.de/p.niedermayer/exciter/-/blob/f02ee94ad3358fff313fc14a1=
a8d8494ad68d8ab/rfnoc-beam_exciter/fpga/rfnoc_block_feedback_controller/r=
fnoc_block_feedback_controller.v#L419


--------------oR4ancdmTOKdTacBRwh8Mipg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html data-lt-installed=3D"true">
  <head>
    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body style=3D"padding-bottom: 1px;">
    <p>Dear all,</p>
    <p>we are working on a custom OOT RFNoC Block implementation [1] on
      a USRP X310 and are facing data throughput bottlenecks.</p>
    <p>The DSP is controlled via GNU Radio / UHD like this:<br>
      Signal Source -&gt; RFNoC TX Streamer -&gt; custom OOT block -&gt;
      RFNoC RX Streamer -&gt; QT GUI Time Sink</p>
    <p>When running the flow graph we get a lot of "DDDD" printed to the
      console, i.e. package drop due to buffer overflow. Adding a GNU
      Radio "Probe rate" block shows that the sampling rate before the
      TX Streamer is 200kSps as desired. However, behind the RX
      Streamer, the sampling rate is only 64 Sps (!).<br>
    </p>
    <p>When bypassing our custom VHDL implementation in the OOT Block
      (i.e. assigning all s_out_axis_t* to respective m_in_axis_t*) the
      flow graph works as expected, so the RFNoC part alone works just
      fine.</p>
    <p>The VHDL implementation requires some 100 clock cycles for a
      sample to propagate. But since we use the 200MHz clock, achieving
      sampling rates of 200kSps should not be an issue. The custom OOT
      block also has an option for interpolation (i.e. increasing
      sampling rate), but the behaviour is the same even for
      interpolation=3D1.<br>
    </p>
    <p>Do you have some hints on how to improve performance? We have
      already tried to<br>
      - Increase the payload FIFO depth from 32 to 128<br>
      - Try both, the context-payload and the data AXI-Stream interface<b=
r>
      - Assert tlast on every sample to reduce packages size</p>
    <p>Some things we have considered but are not sure about:<br>
      - MTU size<br>
      - Package size<br>
    </p>
    <p>Thanks for taking the time to share your ideas<br>
      Philipp, Jernej, Bla=C5=BE<br>
    </p>
    <p><br>
    </p>
    <p>[1]
      <a class=3D"moz-txt-link-freetext"
href=3D"https://git.gsi.de/p.niedermayer/exciter/-/blob/f02ee94ad3358fff3=
13fc14a1a8d8494ad68d8ab/rfnoc-beam_exciter/fpga/rfnoc_block_feedback_cont=
roller/rfnoc_block_feedback_controller.v#L419">https://git.gsi.de/p.niede=
rmayer/exciter/-/blob/f02ee94ad3358fff313fc14a1a8d8494ad68d8ab/rfnoc-beam=
_exciter/fpga/rfnoc_block_feedback_controller/rfnoc_block_feedback_contro=
ller.v#L419</a></p>
    <p><br>
    </p>
    <lt-container></lt-container>
  </body>
</html>

--------------oR4ancdmTOKdTacBRwh8Mipg--

--------------ms060703090202070809000907
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgMFADCABgkqhkiG9w0BBwEAAKCC
EbUwggUSMIID+qADAgECAgkA4wvV+K8l2YEwDQYJKoZIhvcNAQELBQAwgYIxCzAJBgNVBAYT
AkRFMSswKQYDVQQKDCJULVN5c3RlbXMgRW50ZXJwcmlzZSBTZXJ2aWNlcyBHbWJIMR8wHQYD
VQQLDBZULVN5c3RlbXMgVHJ1c3QgQ2VudGVyMSUwIwYDVQQDDBxULVRlbGVTZWMgR2xvYmFs
Um9vdCBDbGFzcyAyMB4XDTE2MDIyMjEzMzgyMloXDTMxMDIyMjIzNTk1OVowgZUxCzAJBgNV
BAYTAkRFMUUwQwYDVQQKEzxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1dHNjaGVu
IEZvcnNjaHVuZ3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsTB0RGTi1QS0kxLTArBgNVBAMTJERG
Ti1WZXJlaW4gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgMjCCASIwDQYJKoZIhvcNAQEBBQAD
ggEPADCCAQoCggEBAMtg1/9moUHN0vqHl4pzq5lN6mc5WqFggEcVToyVsuXPztNXS43O+FZs
FVV2B+pG/cgDRWM+cNSrVICxI5y+NyipCf8FXRgPxJiZN7Mg9mZ4F4fCnQ7MSjLnFp2uDo0p
eQcAIFTcFV9Kltd4tjTTwXS1nem/wHdN6r1ZB+BaL2w8pQDcNb1lDY9/Mm3yWmpLYgHurDg0
WUU2SQXaeMpqbVvAgWsRzNI8qIv4cRrKO+KA3Ra0Z3qLNupOkSk9s1FcragMvp0049ENF4N1
xDkesJQLEvHVaY4l9Lg9K7/AjsMeO6W/VRCrKq4Xl14zzsjz9AkH4wKGMUZrAcUQDBHHWekC
AwEAAaOCAXQwggFwMA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4EFgQUk+PYMiba1fFKpZFK4OpL
4qIMz+EwHwYDVR0jBBgwFoAUv1kgNgB5oKAia4zV8mHSuCzLgkowEgYDVR0TAQH/BAgwBgEB
/wIBAjAzBgNVHSAELDAqMA8GDSsGAQQBga0hgiwBAQQwDQYLKwYBBAGBrSGCLB4wCAYGZ4EM
AQICMEwGA1UdHwRFMEMwQaA/oD2GO2h0dHA6Ly9wa2kwMzM2LnRlbGVzZWMuZGUvcmwvVGVs
ZVNlY19HbG9iYWxSb290X0NsYXNzXzIuY3JsMIGGBggrBgEFBQcBAQR6MHgwLAYIKwYBBQUH
MAGGIGh0dHA6Ly9vY3NwMDMzNi50ZWxlc2VjLmRlL29jc3ByMEgGCCsGAQUFBzAChjxodHRw
Oi8vcGtpMDMzNi50ZWxlc2VjLmRlL2NydC9UZWxlU2VjX0dsb2JhbFJvb3RfQ2xhc3NfMi5j
ZXIwDQYJKoZIhvcNAQELBQADggEBAIcL/z4Cm2XIVi3WO5qYi3FP2ropqiH5Ri71sqQPrhE4
eTizDnS6dl2e6BiClmLbTDPo3flq3zK9LExHYFV/53RrtCyD2HlrtrdNUAtmB7Xts5et6u5/
MOaZ/SLick0+hFvu+c+Z6n/XUjkurJgARH5pO7917tALOxrN5fcPImxHhPalR6D90Bo0fa3S
PXez7vTXTf/D6OWST1k+kEcQSrCFWMBvf/iu7QhCnh7U3xQuTY+8npTD5+32GPg8SecmqKc2
2CzeIs2LgtjZeOJVEqM7h0S2EQvVDFKvaYwPBt/QolOLV5h7z/0HJPT8vcP9SpIClxvyt7bP
ZYoaorVyGTkwggWsMIIElKADAgECAgcbY7rQHiw9MA0GCSqGSIb3DQEBCwUAMIGVMQswCQYD
VQQGEwJERTFFMEMGA1UEChM8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hl
biBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLEwdERk4tUEtJMS0wKwYDVQQDEyRE
Rk4tVmVyZWluIENlcnRpZmljYXRpb24gQXV0aG9yaXR5IDIwHhcNMTYwNTI0MTEzODQwWhcN
MzEwMjIyMjM1OTU5WjCBjTELMAkGA1UEBhMCREUxRTBDBgNVBAoMPFZlcmVpbiB6dXIgRm9l
cmRlcnVuZyBlaW5lcyBEZXV0c2NoZW4gRm9yc2NodW5nc25ldHplcyBlLiBWLjEQMA4GA1UE
CwwHREZOLVBLSTElMCMGA1UEAwwcREZOLVZlcmVpbiBHbG9iYWwgSXNzdWluZyBDQTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJ07eRxH3h+Gy8Zp1xCeOdfZojDbchwFfylf
S2jxrRnWTOFrG7ELf6Gr4HuLi9gtzm6IOhDuV+UefwRRNuu6cG1joL6WLkDh0YNMZj0cZGnl
m6Stcq5oOVGHecwX064vXWNxSzl660Knl5BpBb+Q/6RAcL0D57+eGIgfn5mITQ5HjUhfZZkQ
0tkqSe3BuS0dnxLLFdM/fx5ULzquk1enfnjK1UriGuXtQX1TX8izKvWKMKztFwUkP7agCwf9
TRqaA1KgNpzeJIdl5Of6x5ZzJBTN0OgbaJ4YWa52fvfRCng8h0uwN89Tyjo4EPPLR22MZD08
WkVKusqAfLjz56dMTM0CAwEAAaOCAgUwggIBMBIGA1UdEwEB/wQIMAYBAf8CAQEwDgYDVR0P
AQH/BAQDAgEGMCkGA1UdIAQiMCAwDQYLKwYBBAGBrSGCLB4wDwYNKwYBBAGBrSGCLAEBBDAd
BgNVHQ4EFgQUazqYi/nyU4na4K2yMh4JH+iqO3QwHwYDVR0jBBgwFoAUk+PYMiba1fFKpZFK
4OpL4qIMz+EwgY8GA1UdHwSBhzCBhDBAoD6gPIY6aHR0cDovL2NkcDEucGNhLmRmbi5kZS9n
bG9iYWwtcm9vdC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDBAoD6gPIY6aHR0cDovL2NkcDIu
cGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDCB3QYIKwYB
BQUHAQEEgdAwgc0wMwYIKwYBBQUHMAGGJ2h0dHA6Ly9vY3NwLnBjYS5kZm4uZGUvT0NTUC1T
ZXJ2ZXIvT0NTUDBKBggrBgEFBQcwAoY+aHR0cDovL2NkcDEucGNhLmRmbi5kZS9nbG9iYWwt
cm9vdC1nMi1jYS9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwSgYIKwYBBQUHMAKGPmh0dHA6Ly9j
ZHAyLnBjYS5kZm4uZGUvZ2xvYmFsLXJvb3QtZzItY2EvcHViL2NhY2VydC9jYWNlcnQuY3J0
MA0GCSqGSIb3DQEBCwUAA4IBAQCBeEWkTqR/DlXwCbFqPnjMaDWpHPOVnj/z+N9rOHeJLI21
rT7H8pTNoAauusyosa0zCLYkhmI2THhuUPDVbmCNT1IxQ5dGdfBi5G5mUcFCMWdQ5UnnOR7L
n8qGSN4IFP8VSytmm6A4nwDO/afr0X9XLchMX9wQEZc+lgQCXISoKTlslPwQkgZ7nu7YRrQb
tQMMONncsKk/cQYLsgMHM8KNSGMlJTx6e1du94oFOO+4oK4v9NsH1VuEGMGpuEvObJAaguS5
Pfp38dIfMwK/U+d2+dwmJUFvL6Yb+qQTkPp8ftkLYF3sv8pBoGH7EUkp2KgtdRXYShjqFu9V
NCIaE40GMIIG6zCCBdOgAwIBAgIMJfOJ+jUx1Lbfj3D5MA0GCSqGSIb3DQEBCwUAMIGNMQsw
CQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRz
Y2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQD
DBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBMB4XDTIyMDEwNDA4NTkzMVoXDTI1MDEw
MzA4NTkzMVowgZExCzAJBgNVBAYTAkRFMTwwOgYDVQQKDDNHU0kgSGVsbWhvbHR6emVudHJ1
bSBmdWVyIFNjaHdlcmlvbmVuZm9yc2NodW5nIEdtYkgxFDASBgNVBAQMC05pZWRlcm1heWVy
MRAwDgYDVQQqDAdQaGlsaXBwMRwwGgYDVQQDDBNQaGlsaXBwIE5pZWRlcm1heWVyMIICIjAN
BgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAv+/Jmqu9myl16Gg64DqN9C7ufIgv54YnP8yW
kfMrZuE/mDbpBq/r6QISiRblgufwSlpCMssk4RVRpZgZiGNkfEmsE+1r/tN9QKLJY7biG/0X
8nj6b+WGc+2iRFPrkw/v8YJ0cfmR2hpfaBpxuqgUrFl+ZYGlBT5IBthM336AJ3Lj4wEaoVH0
2cyD38I/KhS+FyDtxVnd/1YotB+HPIiRCk1JW/8zi3L7EpYT6Pd04qCXtoj52RBt2rJpG6Et
i7CaMjfVLnbnnQMx+/ANmpc7oqpcZfVNsaMNlVBmrU8HnhXrDDC4pag6CUmY0rb1lqCTyJNC
F2eHQ5VB4xHXzd6Og2703T7lbOn/wKhzHvMAoaOd/5vbCi4OF9N26aTCThNX2ASaf+NlfAC1
xqOJntkaYKaApk3Qu9tgkkf5CgtNzW7Esew6HZmXH5wXjr2vy+Em/iiu1mhbs6Nxiai8121S
P8uShfkUaLP4w8yKcR6h+/4jg5HAMTmsLLLJtcy88grYW8msACuaP9puBFC0iEcPhktDg4K0
ilSu2ospZ4OZXKJWSfbPcxCuOrvxpP82Mlq47KK4K+E8snOM/uIRYil9pcKGuZ4accWkPdG9
5ezjciOJ3Zk0SZJFMuBobdqjlAt0Jrq9OLat9RBTKl6JW4+XPCrqLdL2kTemFc9B6bez7SkC
AwEAAaOCAkMwggI/MD4GA1UdIAQ3MDUwDwYNKwYBBAGBrSGCLAEBBDAQBg4rBgEEAYGtIYIs
AQEECjAQBg4rBgEEAYGtIYIsAgEECjAJBgNVHRMEAjAAMA4GA1UdDwEB/wQEAwIGwDATBgNV
HSUEDDAKBggrBgEFBQcDBDAdBgNVHQ4EFgQU42Rsgzk9DT0tz2YeGwapcKNre1AwHwYDVR0j
BBgwFoAUazqYi/nyU4na4K2yMh4JH+iqO3QwHwYDVR0RBBgwFoEUcC5uaWVkZXJtYXllckBn
c2kuZGUwgY0GA1UdHwSBhTCBgjA/oD2gO4Y5aHR0cDovL2NkcDEucGNhLmRmbi5kZS9kZm4t
Y2EtZ2xvYmFsLWcyL3B1Yi9jcmwvY2FjcmwuY3JsMD+gPaA7hjlodHRwOi8vY2RwMi5wY2Eu
ZGZuLmRlL2Rmbi1jYS1nbG9iYWwtZzIvcHViL2NybC9jYWNybC5jcmwwgdsGCCsGAQUFBwEB
BIHOMIHLMDMGCCsGAQUFBzABhidodHRwOi8vb2NzcC5wY2EuZGZuLmRlL09DU1AtU2VydmVy
L09DU1AwSQYIKwYBBQUHMAKGPWh0dHA6Ly9jZHAxLnBjYS5kZm4uZGUvZGZuLWNhLWdsb2Jh
bC1nMi9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwSQYIKwYBBQUHMAKGPWh0dHA6Ly9jZHAyLnBj
YS5kZm4uZGUvZGZuLWNhLWdsb2JhbC1nMi9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwDQYJKoZI
hvcNAQELBQADggEBADWXU9fwSJjf/evRvIFS2wD2p+H5FHS4AGURYk8IGBCIFqizbW7TWMVk
3Jh2UeUFVb4tya9saIAoBypcyxrSxUy1owcxyPNzn/vByXM2963tnl50B7K4nEsIdVjFLCgP
cfE3yYWH8ZZ4pNMOR0zs/+GgPJLE76/xyvG6Fss5hSoxPchybevlwcGCWN2dPkUfCZmu1e/H
kMVu9w6FPXRnZvpTS5TGHzBfLUnSfVXcz75CiuGLKd5gtQ+L+Lx4CKxKnXXUYvHW8XA/oyeF
EAOV3TygkcAp3xFv/3Ng++fishQJMGKKLm9VyG6wRQbBZB3hDZLjIFdre6PhX4PPEAR5kpUx
ggPEMIIDwAIBATCBnjCBjTELMAkGA1UEBhMCREUxRTBDBgNVBAoMPFZlcmVpbiB6dXIgRm9l
cmRlcnVuZyBlaW5lcyBEZXV0c2NoZW4gRm9yc2NodW5nc25ldHplcyBlLiBWLjEQMA4GA1UE
CwwHREZOLVBLSTElMCMGA1UEAwwcREZOLVZlcmVpbiBHbG9iYWwgSXNzdWluZyBDQQIMJfOJ
+jUx1Lbfj3D5MA0GCWCGSAFlAwQCAwUAoIH3MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEw
HAYJKoZIhvcNAQkFMQ8XDTIzMDcwNTA2MTUxNFowTwYJKoZIhvcNAQkEMUIEQKTjGCDQcsw/
N8m01W+O++b0WBBlGIYys00X1JvMMtYNmJLua80vsmIG4mqkpa2cvuVzpJNfvCdhVeV7JuLO
FU4wbAYJKoZIhvcNAQkPMV8wXTALBglghkgBZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3
DQMHMA4GCCqGSIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0D
AgIBKDANBgkqhkiG9w0BAQEFAASCAgAR4oabPwpGh7kkQ3RnwSe1QNpXxZAxbcFi+c2a0oJ8
V7NJFWXDJ4sNAHxnWC35Mvbj5bARe2DezNezDYpXkdFb73Ubfrbe2WPWek0fZ7X6Aty9uXMo
ngTmEJBQTy8VGSy4CeC4jXzqjfKYe4kLui2GyPl+Nm7qjreUhrjMSZpXOS66zM+FO7ZKYRAB
hFojNfAvlFyxw/9i4H5X6YEkb0GEBzW3w1B3PHtSequD58ZQpVjzybdubYWI8XLoiF5HEUA8
D14ldMiqML+TthwIqikI+qmzEgWvuecv46hn0Idv+Ypp0IOUK8Cj0Zu3NEytC2px/ydcHdcy
qu7CVfnb7mZXPY6gxYWaMpAJIgkYeqW+cUH46Ssxfr8D7sfTnWcxeb+3afIcZzX+SYFWcs0R
B13vqpR7rgMvgkxgeIjAeTYxVMKkqr8+rCvL1LLkzTGxdwti6fwVx4g5QWRVjioyk7GkkgNh
gGg7886RIaQF3mP1bM15dCbkdG8qNyW8bdaQuZRB84F2O4P9HfyOte253UXuhY1elVEc2FWp
gy9D89GB18YObvWhzLq8OqYvfVtzDklRudZAPXU2wTd/9G78corTTTpo0N+zSl4KkT36Jq0E
YEtYbIhVhu+HvQiNEjM/ZCUWEqytaGRIqCcltfr+EIJ5Qagr4NjdOhbO/udgTkiftQAAAAAA
AA==
--------------ms060703090202070809000907--

--===============0682331096767562116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0682331096767562116==--
