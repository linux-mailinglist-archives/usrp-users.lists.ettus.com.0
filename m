Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 402D049F6E5
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 11:12:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D883C384833
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 05:12:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Y7L0VnxT";
	dkim-atps=neutral
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id C9965384780
	for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 05:11:38 -0500 (EST)
Received: by mail-yb1-f177.google.com with SMTP id p5so16835734ybd.13
        for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 02:11:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=hTrK0B0wBBLxApq+B9sEYbQFJT70Pm7ReGBnna1PPdc=;
        b=Y7L0VnxTq4SEAOSIIuXiTRRESstjmeyi5YGnJODnnyljxN9aSUa6lSwZctmr3Rul7G
         jFru2QvfgaY9CZ37s9jz8pwaVbsrL7qXuyHjsIPBGL2OuIQsSvyaUbhXeZoo+wsOyWv4
         q/FOBAwpiTKyjyG1TDSi+NBlYX1Gop1eCYWwwx2V024a3OBDXA23bO/XOVgTJa7gODxV
         KTrEDiwxavj5JRMpapxmeX3xwvAdWFYldFFmibI7BLANpTY0oHhtvvt1KrEDxN8Kzm5J
         PVskWofIQYqPG7MaJhlcwlFfWIsIf+x+cmFwrSPFS1k3Omi6l1AHCQ20gadvrjG+76L6
         H/6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=hTrK0B0wBBLxApq+B9sEYbQFJT70Pm7ReGBnna1PPdc=;
        b=SXL4GL0z7QFZmAy7GjJxxl5YCUQom2IADHTFVE+CGUPgFYOqeVWO1dWNp7foUzfBgr
         XHFSfWncZQ10WXfyg940ie9WFC1TXOTnzzEEy6HTGICm5/sENwVAb7zi8S012yc/q2YC
         PBOUcoE9Z9rXCHlEoYhh2JePItm+XCrX27/ezW6Idhkfd6slBTr14hc1lpLVhljWP6fP
         r3I0+NWsKpz6AI9sibgRsj2cCWd0aJ+vk5crH+djhu0Stm5D4CTSUz7JaVxfodBXuVHI
         qxXMe6KgynYqL76wOefS+4X8zL2F+Q5S/e0myIuF88Psy5bMfX9RzK7XTCOQzBRDjvBE
         xB0g==
X-Gm-Message-State: AOAM5304QvHW3dMdmRpdfKaDmfkgrXHCXVpqF+f2a/yuBmWtLdXCRIDk
	/rlqelvYOgZADfOBxfOnrvvuqr1L5WWmWpGrhVNecdZsbq4smXOibFg=
X-Google-Smtp-Source: ABdhPJyxYmPIY2zgtzlCzU0eNpho1WRTrU5Qm6cko2GJ3jWlYLhnnx5FdiuFjSG++YBkUquTu6Fqf8NKPWB2YZ910ww=
X-Received: by 2002:a25:d855:: with SMTP id p82mr10588810ybg.575.1643364697244;
 Fri, 28 Jan 2022 02:11:37 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Fri, 28 Jan 2022 13:41:24 +0330
Message-ID: <CAA=S3PvV6NA4U=SrDmm2L3CA6_g0OZCcJfdK2-gaifODX_ROoA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="000000000000043ded05d6a1a980"
Message-ID-Hash: ZUENFP7FVOT4NDOISMZSZ3XN4NHFIM7V
X-Message-ID-Hash: ZUENFP7FVOT4NDOISMZSZ3XN4NHFIM7V
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] When i want to add FFT block in FPGA image X300, I have errors 'NoneType' object has no attribute 'keys'
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZUENFP7FVOT4NDOISMZSZ3XN4NHFIM7V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000043ded05d6a1a980
Content-Type: multipart/alternative; boundary="000000000000043dec05d6a1a97e"

--000000000000043dec05d6a1a97e
Content-Type: text/plain; charset="UTF-8"

When I want to add an FFT block in FPGA image X300, I have errors
 'NoneType' object has no attribute 'keys'
I read the below link but I was faced with errors.

https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0

 I shared the file for x300_core.yml below...
how can I fix the errors...

Traceback (most recent call last):
  File "/usr/local/bin/rfnoc_image_builder", line 228, in <module>
    sys.exit(main())
  File "/usr/local/bin/rfnoc_image_builder", line 209, in main
    image_builder.build_image(
  File
"/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py",
line 924, in build_image
    builder_conf = ImageBuilderConfig(config, blocks, device_conf)
  File
"/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py",
line 182, in __init__
    self._collect_noc_ports()
  File
"/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py",
line 225, in _collect_noc_ports
    for key in block["parameters"].keys():
AttributeError: 'NoneType' object has no attribute 'keys'

--000000000000043dec05d6a1a97e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">When I want to add an FFT block in FPGA image X300, I have=
 errors =C2=A0&#39;NoneType&#39; object has no attribute &#39;keys&#39;<div=
>I read the below link but I was faced with errors.</div><div><br></div><di=
v><a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0">ht=
tps://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0</a></div><div><br>=
</div><div>=C2=A0I shared the file for x300_core.yml below...</div><div>how=
 can I fix the errors...<br><div><br></div><div><font size=3D"1">Traceback =
(most recent call last):<br>=C2=A0 File &quot;/usr/local/bin/rfnoc_image_bu=
ilder&quot;, line 228, in &lt;module&gt;<br>=C2=A0 =C2=A0 sys.exit(main())<=
br>=C2=A0 File &quot;/usr/local/bin/rfnoc_image_builder&quot;, line 209, in=
 main<br>=C2=A0 =C2=A0 image_builder.build_image(<br>=C2=A0 File &quot;/usr=
/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py&quot;, lin=
e 924, in build_image<br>=C2=A0 =C2=A0 builder_conf =3D ImageBuilderConfig(=
config, blocks, device_conf)<br>=C2=A0 File &quot;/usr/local/lib/python3/di=
st-packages/uhd/imgbuilder/image_builder.py&quot;, line 182, in __init__<br=
>=C2=A0 =C2=A0 self._collect_noc_ports()<br>=C2=A0 File &quot;/usr/local/li=
b/python3/dist-packages/uhd/imgbuilder/image_builder.py&quot;, line 225, in=
 _collect_noc_ports<br>=C2=A0 =C2=A0 for key in block[&quot;parameters&quot=
;].keys():<br>AttributeError: &#39;NoneType&#39; object has no attribute &#=
39;keys&#39;</font><br></div><div><br></div></div></div>

--000000000000043dec05d6a1a97e--

--000000000000043ded05d6a1a980
Content-Type: application/x-yaml; name="x300_with_fft.yml"
Content-Disposition: attachment; filename="x300_with_fft.yml"
Content-Transfer-Encoding: base64
Content-ID: <f_kyy8sro70>
X-Attachment-Id: f_kyy8sro70

IyBHZW5lcmFsIHBhcmFtZXRlcnMKIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQpzY2hlbWE6IHJmbm9jX2ltYWdlYnVpbGRlcl9hcmdzICAgICAgICAgIyBJZGVudGlm
aWVyIGZvciB0aGUgc2NoZW1hIHVzZWQgdG8gdmFsaWRhdGUgdGhpcyBmaWxlCmNvcHlyaWdodDog
J0V0dHVzIFJlc2VhcmNoLCBBIE5hdGlvbmFsIEluc3RydW1lbnRzIEJyYW5kJyAjIENvcHlyaWdo
dCBpbmZvcm1hdGlvbiB1c2VkIGluIGZpbGUgaGVhZGVycwpsaWNlbnNlOiAnU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IExHUEwtMy4wLW9yLWxhdGVyJyAjIExpY2Vuc2UgaW5mb3JtYXRpb24gdXNl
ZCBpbiBmaWxlIGhlYWRlcnMKdmVyc2lvbjogJzEuMCcgICAgICAgICAgICAgICAgICAgICAgICAg
ICMgRmlsZSB2ZXJzaW9uCnJmbm9jX3ZlcnNpb246ICcxLjAnICAgICAgICAgICAgICAgICAgICAj
IFJGTm9DIHByb3RvY29sIHZlcnNpb24KY2hkcl93aWR0aDogNjQgICAgICAgICAgICAgICAgICAg
ICAgICAgICMgQml0IHdpZHRoIG9mIHRoZSBDSERSIGJ1cyBmb3IgdGhpcyBpbWFnZQpkZXZpY2U6
ICd4MzAwJwpkZWZhdWx0X3RhcmdldDogJ1gzMDBfSEcnCgojIEEgbGlzdCBvZiBhbGwgc3RyZWFt
IGVuZHBvaW50cyBpbiBkZXNpZ24KIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCnN0cmVhbV9lbmRwb2ludHM6CiAgZXAwOiAgICAgICAgICAgICAgICAgICAgICAgIyBT
dHJlYW0gZW5kcG9pbnQgbmFtZQogICAgY3RybDogVHJ1ZSAgICAgICAgICAgICAgICAgICAgICAj
IEVuZHBvaW50IHBhc3NlcyBjb250cm9sIHRyYWZmaWMKICAgIGRhdGE6IFRydWUgICAgICAgICAg
ICAgICAgICAgICAgIyBFbmRwb2ludCBwYXNzZXMgZGF0YSB0cmFmZmljCiAgICBidWZmX3NpemU6
IDMyNzY4ICAgICAgICAgICAgICAgICMgSW5ncmVzcyBidWZmZXIgc2l6ZSBmb3IgZGF0YQogIGVw
MTogICAgICAgICAgICAgICAgICAgICAgICMgU3RyZWFtIGVuZHBvaW50IG5hbWUKICAgIGN0cmw6
IEZhbHNlICAgICAgICAgICAgICAgICAgICAgIyBFbmRwb2ludCBwYXNzZXMgY29udHJvbCB0cmFm
ZmljCiAgICBkYXRhOiBUcnVlICAgICAgICAgICAgICAgICAgICAgICMgRW5kcG9pbnQgcGFzc2Vz
IGRhdGEgdHJhZmZpYwogICAgYnVmZl9zaXplOiAwICAgICAgICAgICAgICAgICAgICAjIEluZ3Jl
c3MgYnVmZmVyIHNpemUgZm9yIGRhdGEKICBlcDI6ICAgICAgICAgICAgICAgICAgICAgICAjIFN0
cmVhbSBlbmRwb2ludCBuYW1lCiAgICBjdHJsOiBGYWxzZSAgICAgICAgICAgICAgICAgICAgICMg
RW5kcG9pbnQgcGFzc2VzIGNvbnRyb2wgdHJhZmZpYwogICAgZGF0YTogVHJ1ZSAgICAgICAgICAg
ICAgICAgICAgICAjIEVuZHBvaW50IHBhc3NlcyBkYXRhIHRyYWZmaWMKICAgIGJ1ZmZfc2l6ZTog
MzI3NjggICAgICAgICAgICAgICAgIyBJbmdyZXNzIGJ1ZmZlciBzaXplIGZvciBkYXRhCiAgZXAz
OiAgICAgICAgICAgICAgICAgICAgICAgIyBTdHJlYW0gZW5kcG9pbnQgbmFtZQogICAgY3RybDog
RmFsc2UgICAgICAgICAgICAgICAgICAgICAjIEVuZHBvaW50IHBhc3NlcyBjb250cm9sIHRyYWZm
aWMKICAgIGRhdGE6IFRydWUgICAgICAgICAgICAgICAgICAgICAgIyBFbmRwb2ludCBwYXNzZXMg
ZGF0YSB0cmFmZmljCiAgICBidWZmX3NpemU6IDAgICAgICAgICAgICAgICAgICAgICMgSW5ncmVz
cyBidWZmZXIgc2l6ZSBmb3IgZGF0YQogIGVwNDogICAgICAgICAgICAgICAgICAgICAgICMgU3Ry
ZWFtIGVuZHBvaW50IG5hbWUKICAgIGN0cmw6IEZhbHNlICAgICAgICAgICAgICAgICAgICAgIyBF
bmRwb2ludCBwYXNzZXMgY29udHJvbCB0cmFmZmljCiAgICBkYXRhOiBUcnVlICAgICAgICAgICAg
ICAgICAgICAgICMgRW5kcG9pbnQgcGFzc2VzIGRhdGEgdHJhZmZpYwogICAgYnVmZl9zaXplOiA0
MDk2ICAgICAgICAgICAgICAgICAjIEluZ3Jlc3MgYnVmZmVyIHNpemUgZm9yIGRhdGEKICBlcDU6
ICAgICAgICAgICAgICAgICAgICAgICAjIFN0cmVhbSBlbmRwb2ludCBuYW1lCiAgICBjdHJsOiBG
YWxzZSAgICAgICAgICAgICAgICAgICAgICMgRW5kcG9pbnQgcGFzc2VzIGNvbnRyb2wgdHJhZmZp
YwogICAgZGF0YTogVHJ1ZSAgICAgICAgICAgICAgICAgICAgICAjIEVuZHBvaW50IHBhc3NlcyBk
YXRhIHRyYWZmaWMKICAgIGJ1ZmZfc2l6ZTogNDA5NiAgICAgICAgICAgICAgICAgIyBJbmdyZXNz
IGJ1ZmZlciBzaXplIGZvciBkYXRhCiAgZXBfZmZ0OiAgICAgICAgICAgICAgICAjIFRoZSBuYW1l
IGNhbiBiZSBpbmNyZW1lbnRlZCBmcm9tIHByZXZpb3VzIFNFUAogICAgY3RybDogRmFsc2UgICAg
ICAgICAgIyBPbmx5IHRoZSBmaXJzdCBTRVAgbmVlZHMgY29udHJvbCB0cmFmZmljCiAgICBkYXRh
OiBUcnVlICAgICAgICAgICAjIFdlIGRvIHdhbnQgdG8gcGFzcyBkYXRhIHRocm91Z2ggdGhpcyBT
RVAKICAgIGJ1ZmZfc2l6ZTogMzI3NjggICAgICMgSW5ncmVzcyBidWZmZXIgc2l6ZSBmb3IgZGF0
YQoKIyBBIGxpc3Qgb2YgYWxsIE5vQyBibG9ja3MgaW4gZGVzaWduCiMgLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQpub2NfYmxvY2tzOgogIGR1YzA6ICAgICAgICAgICAgICAgICAg
ICAgICMgTm9DIGJsb2NrIG5hbWUKICAgIGJsb2NrX2Rlc2M6ICdkdWMueW1sJyAgICAjIEJsb2Nr
IGRldmljZSBkZXNjcmlwdG9yIGZpbGUKICAgIHBhcmFtZXRlcnM6CiAgICAgIE5VTV9QT1JUUzog
MQogIGRkYzA6CiAgICBibG9ja19kZXNjOiAnZGRjLnltbCcKICAgIHBhcmFtZXRlcnM6CiAgICAg
IE5VTV9QT1JUUzogMgogIHJhZGlvMDoKICAgIGJsb2NrX2Rlc2M6ICdyYWRpb18yeDY0LnltbCcK
ICBkdWMxOgogICAgYmxvY2tfZGVzYzogJ2R1Yy55bWwnCiAgICBwYXJhbWV0ZXJzOgogICAgICBO
VU1fUE9SVFM6IDEKICBkZGMxOgogICAgYmxvY2tfZGVzYzogJ2RkYy55bWwnCiAgICBwYXJhbWV0
ZXJzOgogICAgICBOVU1fUE9SVFM6IDIKICByYWRpbzE6CiAgICBibG9ja19kZXNjOiAncmFkaW9f
Mng2NC55bWwnCiAgcmVwbGF5MDoKICAgIGJsb2NrX2Rlc2M6ICdyZXBsYXkueW1sJwogICAgcGFy
YW1ldGVyczoKICAgICAgTlVNX1BPUlRTOiAyCiAgICAgIE1FTV9BRERSX1c6IDMwCiAgZmZ0MDog
ICAgICAgICAgICAgICAgICAgICAgICAgICMgRkZUIGJsb2NrIG5hbWUKICAgIGJsb2NrX2Rlc2M6
ICdmZnRfMXg2NC55bWwnICAgIyBCbG9jayBZQU1MIGRlc2NyaXB0b3IgZmlsZQogICAgcGFyYW1l
dGVyczogICAgICAgICAgICAgICAgICAjIFNwZWNpZnkgYW55IFZlcmlsb2cgbW9kdWxlIHBhcmFt
ZXRlcnMgKG9wdGlvbmFsKQogICAgRU5fRkZUX1NISUZUOiAxIAoKIyBBIGxpc3Qgb2YgYWxsIHN0
YXRpYyBjb25uZWN0aW9ucyBpbiBkZXNpZ24KIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KIyBGb3JtYXQ6IEEgbGlzdCBvZiBjb25uZWN0aW9uIG1hcHMgKGxpc3Qg
b2Yga2V5LXZhbHVlIHBhaXJzKSB3aXRoIHRoZSBmb2xsb3dpbmcga2V5cwojICAgICAgICAgLSBz
cmNibGsgID0gU291cmNlIGJsb2NrIHRvIGNvbm5lY3QKIyAgICAgICAgIC0gc3JjcG9ydCA9IFBv
cnQgb24gdGhlIHNvdXJjZSBibG9jayB0byBjb25uZWN0CiMgICAgICAgICAtIGRzdGJsayAgPSBE
ZXN0aW5hdGlvbiBibG9jayB0byBjb25uZWN0CiMgICAgICAgICAtIGRzdHBvcnQgPSBQb3J0IG9u
IHRoZSBkZXN0aW5hdGlvbiBibG9jayB0byBjb25uZWN0CmNvbm5lY3Rpb25zOgogICMgZXAwIHRv
IHJhZGlvMCgwKSAtIFJGQSBUWAogIC0geyBzcmNibGs6IGVwMCwgICAgc3JjcG9ydDogb3V0MCwg
IGRzdGJsazogZHVjMCwgICBkc3Rwb3J0OiBpbl8wIH0KICAtIHsgc3JjYmxrOiBkdWMwLCAgIHNy
Y3BvcnQ6IG91dF8wLCBkc3RibGs6IHJhZGlvMCwgZHN0cG9ydDogaW5fMCB9CiAgIyByYWRpbygw
KSB0byBlcDAgLSBSRkEgUlgKICAtIHsgc3JjYmxrOiByYWRpbzAsIHNyY3BvcnQ6IG91dF8wLCBk
c3RibGs6IGRkYzAsICAgZHN0cG9ydDogaW5fMCB9CiAgLSB7IHNyY2JsazogZGRjMCwgICBzcmNw
b3J0OiBvdXRfMCwgZHN0YmxrOiBlcDAsICAgIGRzdHBvcnQ6IGluMCAgfQogICMgcmFkaW8wKDEp
IHRvIGVwMSAtIFJGQSBSWAogIC0geyBzcmNibGs6IHJhZGlvMCwgc3JjcG9ydDogb3V0XzEsIGRz
dGJsazogZGRjMCwgICBkc3Rwb3J0OiBpbl8xIH0KICAtIHsgc3JjYmxrOiBkZGMwLCAgIHNyY3Bv
cnQ6IG91dF8xLCBkc3RibGs6IGVwMSwgICAgZHN0cG9ydDogaW4wICB9CiAgIyBlcDIgdG8gcmFk
aW8xKDApIC0gUkZBIFRYCiAgLSB7IHNyY2JsazogZXAyLCAgICBzcmNwb3J0OiBvdXQwLCAgZHN0
YmxrOiBkdWMxLCAgIGRzdHBvcnQ6IGluXzAgfQogIC0geyBzcmNibGs6IGR1YzEsICAgc3JjcG9y
dDogb3V0XzAsIGRzdGJsazogcmFkaW8xLCBkc3Rwb3J0OiBpbl8wIH0KICAjIHJhZGlvMSgwKSB0
byBlcDIgLSBSRkEgUlgKICAtIHsgc3JjYmxrOiByYWRpbzEsIHNyY3BvcnQ6IG91dF8wLCBkc3Ri
bGs6IGRkYzEsICAgZHN0cG9ydDogaW5fMCB9CiAgLSB7IHNyY2JsazogZGRjMSwgICBzcmNwb3J0
OiBvdXRfMCwgZHN0YmxrOiBlcDIsICAgIGRzdHBvcnQ6IGluMCAgfQogICMgcmFkaW8wKDEpIHRv
IGVwMyAtIFJGQSBSWAogIC0geyBzcmNibGs6IHJhZGlvMSwgc3JjcG9ydDogb3V0XzEsIGRzdGJs
azogZGRjMSwgICBkc3Rwb3J0OiBpbl8xIH0KICAtIHsgc3JjYmxrOiBkZGMxLCAgIHNyY3BvcnQ6
IG91dF8xLCBkc3RibGs6IGVwMywgICAgZHN0cG9ydDogaW4wICB9CiAgIyBlcDQgdG8gcmVwbGF5
MCgwKQogIC0geyBzcmNibGs6IGVwNCwgICAgIHNyY3BvcnQ6IG91dDAsICBkc3RibGs6IHJlcGxh
eTAsIGRzdHBvcnQ6IGluXzAgfQogICMgcmVwbGF5MCgwKSB0byBlcDQKICAtIHsgc3JjYmxrOiBy
ZXBsYXkwLCBzcmNwb3J0OiBvdXRfMCwgZHN0YmxrOiBlcDQsICAgICBkc3Rwb3J0OiBpbjAgIH0K
ICAjIGVwNSB0byByZXBsYXkwKDEpCiAgLSB7IHNyY2JsazogZXA1LCAgICAgc3JjcG9ydDogb3V0
MCwgIGRzdGJsazogcmVwbGF5MCwgZHN0cG9ydDogaW5fMSB9CiAgIyByZXBsYXkwKDEpIHRvIGVw
NQogIC0geyBzcmNibGs6IHJlcGxheTAsIHNyY3BvcnQ6IG91dF8xLCBkc3RibGs6IGVwNSwgICAg
IGRzdHBvcnQ6IGluMCAgfQogICMgQlNQIENvbm5lY3Rpb25zCiAgLSB7IHNyY2JsazogcmFkaW8w
LCBzcmNwb3J0OiBjdHJsX3BvcnQsIGRzdGJsazogX2RldmljZV8sIGRzdHBvcnQ6IGN0cmxwb3J0
X3JhZGlvMCB9CiAgLSB7IHNyY2JsazogcmFkaW8xLCBzcmNwb3J0OiBjdHJsX3BvcnQsIGRzdGJs
azogX2RldmljZV8sIGRzdHBvcnQ6IGN0cmxwb3J0X3JhZGlvMSB9CiAgLSB7IHNyY2JsazogcmVw
bGF5MCwgc3JjcG9ydDogYXhpX3JhbSwgZHN0YmxrOiBfZGV2aWNlXywgZHN0cG9ydDogZHJhbSB9
CiAgLSB7IHNyY2JsazogX2RldmljZV8sIHNyY3BvcnQ6IHgzMDBfcmFkaW8wLCBkc3RibGs6IHJh
ZGlvMCwgZHN0cG9ydDogeDMwMF9yYWRpbyB9CiAgLSB7IHNyY2JsazogX2RldmljZV8sIHNyY3Bv
cnQ6IHgzMDBfcmFkaW8xLCBkc3RibGs6IHJhZGlvMSwgZHN0cG9ydDogeDMwMF9yYWRpbyB9CiAg
LSB7IHNyY2JsazogX2RldmljZV8sIHNyY3BvcnQ6IHRpbWVfa2VlcGVyLCBkc3RibGs6IHJhZGlv
MCwgZHN0cG9ydDogdGltZV9rZWVwZXIgfQogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0
OiB0aW1lX2tlZXBlciwgZHN0YmxrOiByYWRpbzEsIGRzdHBvcnQ6IHRpbWVfa2VlcGVyIH0KICAt
IHsgc3JjYmxrOiBlcF9mZnQsIHNyY3BvcnQ6IG91dDAsICBkc3RibGs6IGZmdDAsICAgZHN0cG9y
dDogaW5fMCB9CiAgLSB7IHNyY2JsazogZmZ0MCwgICBzcmNwb3J0OiBvdXRfMCwgZHN0YmxrOiBl
cF9mZnQsIGRzdHBvcnQ6IGluMCAgfQoKIyBBIGxpc3Qgb2YgYWxsIGNsb2NrIGRvbWFpbiBjb25u
ZWN0aW9ucyBpbiBkZXNpZ24KIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KIyBGb3JtYXQ6IEEgbGlzdCBvZiBjb25uZWN0aW9uIG1hcHMgKGxpc3Qgb2Yga2V5LXZh
bHVlIHBhaXJzKSB3aXRoIHRoZSBmb2xsb3dpbmcga2V5cwojICAgICAgICAgLSBzcmNibGsgID0g
U291cmNlIGJsb2NrIHRvIGNvbm5lY3QgKEFsd2F5cyAiX2RldmljZSJfKQojICAgICAgICAgLSBz
cmNwb3J0ID0gQ2xvY2sgZG9tYWluIG9uIHRoZSBzb3VyY2UgYmxvY2sgdG8gY29ubmVjdAojICAg
ICAgICAgLSBkc3RibGsgID0gRGVzdGluYXRpb24gYmxvY2sgdG8gY29ubmVjdAojICAgICAgICAg
LSBkc3Rwb3J0ID0gQ2xvY2sgZG9tYWluIG9uIHRoZSBkZXN0aW5hdGlvbiBibG9jayB0byBjb25u
ZWN0CmNsa19kb21haW5zOgogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiByYWRpbywg
ZHN0YmxrOiByYWRpbzAsIGRzdHBvcnQ6IHJhZGlvIH0KICAtIHsgc3JjYmxrOiBfZGV2aWNlXywg
c3JjcG9ydDogY2UsICAgIGRzdGJsazogZGRjMCwgICBkc3Rwb3J0OiBjZSAgICB9CiAgLSB7IHNy
Y2JsazogX2RldmljZV8sIHNyY3BvcnQ6IGNlLCAgICBkc3RibGs6IGR1YzAsICAgZHN0cG9ydDog
Y2UgICAgfQogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiByYWRpbywgZHN0YmxrOiBy
YWRpbzEsIGRzdHBvcnQ6IHJhZGlvIH0KICAtIHsgc3JjYmxrOiBfZGV2aWNlXywgc3JjcG9ydDog
Y2UsICAgIGRzdGJsazogZGRjMSwgICBkc3Rwb3J0OiBjZSAgICB9CiAgLSB7IHNyY2JsazogX2Rl
dmljZV8sIHNyY3BvcnQ6IGNlLCAgICBkc3RibGs6IGR1YzEsICAgZHN0cG9ydDogY2UgICAgfQog
IC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiBkcmFtLCAgZHN0YmxrOiByZXBsYXkwLCBk
c3Rwb3J0OiBtZW0gIH0KICAtIHsgc3JjYmxrOiBfZGV2aWNlXywgc3JjcG9ydDogY2UsIGRzdGJs
azogZmZ0MCwgZHN0cG9ydDogY2UgfQogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiBy
Zm5vY19jaGRyLCBkc3RibGs6IGZmdDAsIGRzdHBvcnQ6IGNlIH0KICAtIHsgc3JjYmxrOiBfZGV2
aWNlXywgc3JjcG9ydDogcmFkaW8sIGRzdGJsazogZmZ0MCwgZHN0cG9ydDogY2UgfQoKCg==
--000000000000043ded05d6a1a980
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000043ded05d6a1a980--
