Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D97F7CC4B0
	for <lists+usrp-users@lfdr.de>; Tue, 17 Oct 2023 15:21:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D1DCF385E92
	for <lists+usrp-users@lfdr.de>; Tue, 17 Oct 2023 09:21:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697548886; bh=BqFshs0PDl800sNFHNFP5L2u1uNYp5BzA9k4tOIBAWg=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=KWJ08J284ir4HCam/SJsfE1VuM3m/DiZZ8cAaGXm1rqX5jaJKdhEmaU2PpS3tF04V
	 x4dmrUoMbpmKzsltoc6ZaM+TQ5KSo/rLiRZvIsAeir7APR1fI98KmA3ZVB3K6yqhKL
	 LVSsLMs4mGGl44xYmjiFFxePmtHhIvArGJlbkMdue4yLlHopHWKoV/BABO7GYX0DzX
	 yoqOz9VG4ntsmEokTjxy3EhYbtrCFmTLFHLNp+lLUT+6AKsM8ydyipPAsTsrxHhG6Y
	 cEqmHY2eH9AKPltyPXNxhjiBVD1QlN1xfh0T4S2bhRmGJfGZl8bQFRSVl3AQK6e7r7
	 azh8IlGYFmVQA==
Received: from lxmtout2.gsi.de (lxmtout2.gsi.de [140.181.3.112])
	by mm2.emwd.com (Postfix) with ESMTPS id CB222385C9C
	for <usrp-users@lists.ettus.com>; Tue, 17 Oct 2023 09:20:30 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by lxmtout2.gsi.de (Postfix) with ESMTP id 0D5ED2030BE2;
	Tue, 17 Oct 2023 15:20:29 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at lxmtout2.gsi.de
Received: from lxmtout2.gsi.de ([127.0.0.1])
	by localhost (lxmtout2.gsi.de [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id mHi5EiWDT7Mq; Tue, 17 Oct 2023 15:20:28 +0200 (CEST)
Received: from srvEX6.campus.gsi.de (unknown [10.10.4.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by lxmtout2.gsi.de (Postfix) with ESMTPS id CCB2D2030BE0;
	Tue, 17 Oct 2023 15:20:28 +0200 (CEST)
Received: from [140.181.67.245] (140.181.3.12) by srvEX6.campus.gsi.de
 (10.10.4.96) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.37; Tue, 17 Oct
 2023 15:20:28 +0200
Message-ID: <1f9bf05c-330c-4409-95e8-d4c061339217@gsi.de>
Date: Tue, 17 Oct 2023 15:20:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB, de-DE
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, <rkossler@nd.edu>
References: <cff7659f-bcde-49eb-a71f-e3153570e8b9@gsi.de>
 <a6805b3d-4945-4474-83e3-ee7d5e82b3a9@gsi.de>
 <CAB__hTSF2GcGoM83Z704+mivoL8mpVEEQV8b=cZXtwEjbB+EiQ@mail.gmail.com>
 <f0b0867c-b07c-4d67-b1d0-f6036ea67b10@gmail.com>
From: Philipp Niedermayer <p.niedermayer@gsi.de>
In-Reply-To: <f0b0867c-b07c-4d67-b1d0-f6036ea67b10@gmail.com>
X-Originating-IP: [140.181.3.12]
X-ClientProxiedBy: srvEX7.Campus.gsi.de (10.10.4.97) To srvEX6.campus.gsi.de
 (10.10.4.96)
Message-ID-Hash: GRCS4KAORNCRDK3G5UK2DAUOPGVFR4DS
X-Message-ID-Hash: GRCS4KAORNCRDK3G5UK2DAUOPGVFR4DS
X-MailFrom: P.Niedermayer@gsi.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com, Rahul Singh <r.singh@gsi.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Loopback with stream from host
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GRCS4KAORNCRDK3G5UK2DAUOPGVFR4DS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0593262894378038250=="

--===============0593262894378038250==
Content-Language: en-GB, de-DE
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-512; boundary="------------ms060001030702080207050100"

--------------ms060001030702080207050100
Content-Type: multipart/alternative;
 boundary="------------p0Avnn0GvkBpxGfYPyBBBPQp"

--------------p0Avnn0GvkBpxGfYPyBBBPQp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Dear Marcus and Rob,

> The multi_usrp UHD "sink" in Gnu Radio has a "start time" parameter.=C2=
=A0=20
> But I'm not sure how this works when you're using RFNoC from within=20
> Gnu Radio.=20
@Marcus: I think for RFNoC it is the RX-Streamer that issues the start=20
command. The C++ implementation [1] has a method to set the start time,=20
but it is neither exposed via the Python bindings [2], nor to GNU Radio=20
[3]. Would it be possible to update the bindings?

> Delaying=C2=A0the Rx Radio start time should be relatively easy to do.=20
> While I don't know how to do this from gnuradio, I do it all the time=20
> using UHD from C++. Perhaps you will have to modify the GRC generated=20
> python to do it rather than do it from GRC - not really sure.
@Rob: What methods are you using to delay the start time? The same as=20
the RX-Streamer [1] uses internally?
I tried calling the RX-streamers "start" and "stop" methods, since these=20
are accessible from python. Stopping works, but when re-starting it=20
gives me OOOOOOOO (see below).

Best
Philipp

[1]=20
https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c3=
6d3bb0bd2/gr-uhd/lib/rfnoc_rx_streamer_impl.cc#L83-L93
[2]=20
https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c3=
6d3bb0bd2/gr-uhd/python/uhd/bindings/rfnoc_rx_streamer_python.cc
[3]=20
https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c3=
6d3bb0bd2/gr-uhd/grc/uhd_rfnoc_rx_streamer.block.yml


******* MESSAGE DEBUG PRINT ********
((rate_now . 1.99964e+06) (rate_avg . 1.99964e+06))
************************************
Stopping stream
rfnoc_rx_streamer :debug: UHD recv() call timed out.
******* MESSAGE DEBUG PRINT ********
((rate_now . 666323) (rate_avg . 1.79964e+06))
************************************
rfnoc_rx_streamer :debug: UHD recv() call timed out.
rfnoc_rx_streamer :debug: UHD recv() call timed out.
Starting stream
rfnoc_rx_streamer :debug: Sending start stream command...
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
 >>> Done



------------------------------------------------------------------------
*From:* Marcus D. Leech [mailto:patchvonbraun@gmail.com]
*Date:* Monday, October 16, 2023 at 23:41 UTC+2
*Subject:* [USRP-users] Re: RFNoC Loopback with stream from host

> On 16/10/2023 17:31, Rob Kossler via USRP-users wrote:
>> Hi Philipp,
>> 1. Delaying=C2=A0the Rx Radio start time should be relatively easy to =
do.=20
>> While I don't know how to do this from gnuradio, I do it all the time=20
>> using UHD from C++.=C2=A0 Perhaps you will have to modify the GRC=20
>> generated python to do it rather than do it from GRC - not really sure=
.
> The multi_usrp UHD "sink" in Gnu Radio has a "start time" parameter.=C2=
=A0=20
> But I'm not sure how this works when you're using RFNoC
> =C2=A0 from within Gnu Radio.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
--------------p0Avnn0GvkBpxGfYPyBBBPQp
Content-Type: multipart/related;
 boundary="------------Uk9qgSpwIqe2zL1EnhFdAsI3"

--------------Uk9qgSpwIqe2zL1EnhFdAsI3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html data-lt-installed=3D"true">
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body style=3D"padding-bottom: 1px;">
    <div class=3D"moz-cite-prefix">
      <div id=3D"rwhMsgHeader">
        <p>Dear Marcus and Rob,</p>
        <blockquote type=3D"cite">The multi_usrp UHD "sink" in Gnu Radio
          has a "start time" parameter.=C2=A0 But I'm not sure how this w=
orks
          when you're using RFNoC from within Gnu Radio.
        </blockquote>
        @Marcus: I think for RFNoC it is the RX-Streamer that issues the
        start command. The C++ implementation [1] has a method to set
        the start time, but it is neither exposed via the Python
        bindings [2], nor to GNU Radio [3]. Would it be possible to
        update the bindings?<br>
      </div>
      <div><br>
      </div>
      <div>
        <blockquote type=3D"cite">Delaying=C2=A0the Rx Radio start time s=
hould
          be relatively easy to do. While I don't know how to do this
          from gnuradio, I do it all the time using UHD from C++.=C2=A0
          Perhaps you will have to modify the GRC generated python to do
          it rather than do it from GRC - not really sure.</blockquote>
        @Rob: What methods are you using to delay the start time? The
        same as the RX-Streamer [1] uses internally?</div>
      <div>I tried calling the RX-streamers "start" and "stop" methods,
        since these are accessible from python. Stopping works, but when
        re-starting it gives me OOOOOOOO (see below).
        <p>Best<br>
          Philipp</p>
        <p>[1]
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/gnuradio/gn=
uradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/lib/rfnoc_rx_=
streamer_impl.cc#L83-L93">https://github.com/gnuradio/gnuradio/blob/5dc19=
5b0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/lib/rfnoc_rx_streamer_impl.cc#=
L83-L93</a><br>
          [2]
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/gnuradio/gn=
uradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/python/uhd/bi=
ndings/rfnoc_rx_streamer_python.cc">https://github.com/gnuradio/gnuradio/=
blob/5dc195b0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/python/uhd/bindings/=
rfnoc_rx_streamer_python.cc</a><br>
          [3]
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/gnuradio/gn=
uradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/grc/uhd_rfnoc=
_rx_streamer.block.yml">https://github.com/gnuradio/gnuradio/blob/5dc195b=
0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/grc/uhd_rfnoc_rx_streamer.block.=
yml</a></p>
        <p><br>
        </p>
        <p><img src=3D"cid:part1.sDlKvXqD.RU10JBCw@gsi.de" alt=3D""></p>
        <p>******* MESSAGE DEBUG PRINT ********<br>
          ((rate_now . 1.99964e+06) (rate_avg . 1.99964e+06))<br>
          ************************************<br>
          Stopping stream<br>
          rfnoc_rx_streamer :debug: UHD recv() call timed out.<br>
          ******* MESSAGE DEBUG PRINT ********<br>
          ((rate_now . 666323) (rate_avg . 1.79964e+06))<br>
          ************************************<br>
          rfnoc_rx_streamer :debug: UHD recv() call timed out.<br>
          rfnoc_rx_streamer :debug: UHD recv() call timed out.<br>
          Starting stream<br>
          rfnoc_rx_streamer :debug: Sending start stream command...<br>
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO<br>
          &gt;&gt;&gt; Done</p>
        <p><br>
        </p>
        <p><br>
        </p>
        <hr id=3D"rwhMsgHdrDivider"
style=3D"border:0;border-top:1px solid #404040;padding:0;margin:10px 0 5p=
x 0;width:100%;">
        <div
style=3D"font-family:Tahoma !important; color:#404040 !important; font-si=
ze:13px !important;"><b>From:</b>
          Marcus D. Leech [<a class=3D"moz-txt-link-freetext" href=3D"mai=
lto:patchvonbraun@gmail.com">mailto:patchvonbraun@gmail.com</a>]</div>
        <div
style=3D"font-family:Tahoma !important; color:#404040 !important; font-si=
ze:13px !important;"><b>Date:</b>
          Monday, October 16, 2023 at 23:41 UTC+2</div>
        <div
style=3D"font-family:Tahoma !important; color:#404040 !important; font-si=
ze:13px !important;"><b>Subject:</b>
          [USRP-users] Re: RFNoC Loopback with stream from host</div>
        <br>
      </div>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:f0b0867c-b07c-4d67-b1d0-f6036ea67b10@gmail.com">On
      16/10/2023 17:31, Rob Kossler via USRP-users wrote:
      <br>
      <blockquote type=3D"cite">Hi Philipp,
        <br>
        1. Delaying=C2=A0the Rx Radio start time should be relatively eas=
y to
        do. While I don't know how to do this from gnuradio, I do it all
        the time using UHD from C++.=C2=A0 Perhaps you will have to modif=
y
        the GRC generated python to do it rather than do it from GRC -
        not really sure.
        <br>
      </blockquote>
      The multi_usrp UHD "sink" in Gnu Radio has a "start time"
      parameter.=C2=A0 But I'm not sure how this works when you're using
      RFNoC
      <br>
      =C2=A0 from within Gnu Radio.
      <br>
      _______________________________________________
      <br>
      USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" hr=
ef=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
      <br>
      To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviate=
d" href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@list=
s.ettus.com</a>
      <br>
    </blockquote>
  </body>
  <lt-container></lt-container>
</html>
--------------Uk9qgSpwIqe2zL1EnhFdAsI3
Content-Type: image/png; name="W3ihPeBCe305u1PN.png"
Content-Disposition: inline; filename="W3ihPeBCe305u1PN.png"
Content-Id: <part1.sDlKvXqD.RU10JBCw@gsi.de>
Content-Transfer-Encoding: base64

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
RU5ErkJggg==

--------------Uk9qgSpwIqe2zL1EnhFdAsI3--

--------------p0Avnn0GvkBpxGfYPyBBBPQp--

--------------ms060001030702080207050100
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: Kryptografische S/MIME-Signatur

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
HAYJKoZIhvcNAQkFMQ8XDTIzMTAxNzEzMjAyOFowTwYJKoZIhvcNAQkEMUIEQPNWPWIxbEOo
ASjSD51PfwzhvfUS1hwPcdMHMjOe2UpJuXLd3XXTQcZ6BP4B8kegr2rVNbSGEr1LZaDtqzsr
3bMwbAYJKoZIhvcNAQkPMV8wXTALBglghkgBZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3
DQMHMA4GCCqGSIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0D
AgIBKDANBgkqhkiG9w0BAQEFAASCAgAMj00Uo3RKleP0i54dQixR/1HsNKO/rdAOjLKq8JcJ
SUhFKbrg7z4pVP/Uvbg1uWxk0EvlqFJOXE/YxdvuL4anYQEsQ7UZSgNCuz38I+ncnYoVtf9j
td+2HwDW54ASHGM6gn4C0jqW+tWVWRO9q1XLvo8jaaPCecHmKxxzrdYr8s3nii5WZnhlqu1G
6waTS9IcZIIebC6TWkguOGQWr/WdLZ6Nh9UoV599n7SL+Mf6viwPP0eUNKrRbP/bus1ckwCw
3hKwmt4a6nQN4cEBdK/YgAAi5WLz6oHIMtKMn/gcOc18M7qqipwbsHat3BqvjGooDBdsB6ms
BMJ6M6YFetTSZLu5b8vk3f9Asvn7nijpHOqCBSwGAzJPkK9Y0nwCzPYX53F5yykaMy9DVvPc
7cY5PQrDIP6olTDUiNLEScEK5D9n8jD1jw00cii7xzUggNDCWq8zFk1tvEvjT7zoe8qn5/61
Gv9KnqwObBnQRrjZWSHVu2Q7CaV0rV6PHLE0S5C0a8ezfApUb5zlX2hJzXK5wZu/NaNf7Ur/
GoFsTl+ttzdhdW+wOtHUtZq3ZuxlcQxDoAOGWmRR797a7Mj/2HkcbDCcnp3dqpkZ2AcYzswi
UvML8V+VCTAtcWTA8P3TIbgbwcOI9UVLrpFVKpKCuLM9BTE3A1GaKeb05Ytjjm3N3QAAAAAA
AA==
--------------ms060001030702080207050100--

--===============0593262894378038250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0593262894378038250==--
