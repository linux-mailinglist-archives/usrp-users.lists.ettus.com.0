Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA7E536B10
	for <lists+usrp-users@lfdr.de>; Sat, 28 May 2022 08:16:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F5F038459F
	for <lists+usrp-users@lfdr.de>; Sat, 28 May 2022 02:16:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653718580; bh=SmArc/2qZM22pfzaktau0hAKIzuICR2dCdpdtImJRo0=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ucH+VWA3JgJr+M6O75GtJ3pSep4bYoNKy59x48/3TtaTQn1PAAjJikC9RFi1I9Ysm
	 k+teIB3Sm6sQM3AFImU2yXSuB9JqN1HJkjLXQ+Qtc8LCKDaOTq0pjX8RChBZuxUW9F
	 OpGVAJkUk0px6U+emVKs/PKunqLqXrgLMwB7TfJRZX9Yb0lSoYxgT55redbxncBHeD
	 dOP83P27GFywZOxlyKsyt7UrkESChq1uL5eOrsZBQchaarUrbFkNUePdtX1r2Kbd8E
	 AdPy6EHm+GKvBJx98DkG3hEtv+12DHXAEJpQLUctAlXdfueZV7cx9iXPPMlPeyiFRF
	 SMSYWYlX+J8xA==
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id D2089384538
	for <usrp-users@lists.ettus.com>; Sat, 28 May 2022 02:15:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="efdrsDFj";
	dkim-atps=neutral
Received: by mail-yb1-f182.google.com with SMTP id l204so403631ybf.10
        for <usrp-users@lists.ettus.com>; Fri, 27 May 2022 23:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=CQ7g4GVobd7G5VxwAi+75BuJ67pJ5eLoP8AmVjdRV68=;
        b=efdrsDFj4tqF8vbKAozLarzxRQL4w0UET/IBnFI9pSJbCF4p3TqvCxpqhGMxLYsjW2
         fcOGbdykueqOMIQz7QB4ybMRb6ei2f/O3/JqiOuBdndgmDRZpv3W+uPPxqLbGJAdIkMq
         srWYVZMpSxcZHqxrjUJ1TN/fZFx37Jh4h0Qtt3ABRMUBmwVhQ30z7UWXHfmmsQfQtsfI
         mz6n+vcC1DmfpIhFUdymfA+yYJqIPljkTa1/bC1clEByBJEyAlMXStkFKmkwWeQyfBx4
         JstbxtrBDY4bvdzkQp0pEuAvAXPCWt7724emPET3g2Vgy/ZTROGWBdkyXB/3ZkbvEISa
         VmXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=CQ7g4GVobd7G5VxwAi+75BuJ67pJ5eLoP8AmVjdRV68=;
        b=iN4NFBwlcS+jAoklbAQkVHZGrAPREMsF9hZ4zja9RboveCwAchLvg6yCCtyrdOgGX4
         Rg/Xf6SXLsbd3PsIRZRZOcPlOo72qTF7e9HSFOzpdpcGYD4262ZSO9vJP4tLGuGTQfU5
         PcFn8lVqSISKR3icVZNUgjWT9cDjkO85l/Kvn+CQvYVweBfGb0LRFJilcr+f6/0QKm78
         wd+gzrb+850+9/DCzPOpy1KoZ5URJgrr3lphVQlnPUMA4dwqDdzgZg47XLRF7uVlsIP7
         oBiv2CSF7N1Sn+g34tHV/2JmHNBkMxR0USbucyKg69wpbQXjGEy4WCbNJ/2qIfwkOC/L
         VRgw==
X-Gm-Message-State: AOAM531nv9WeIilctXrbaxZBvfxDxcEXJ+jBuLjGcvrVSeorDvG3TEJB
	7N9PDQ3NiMuO4zaIdmjBa2kH3kiBgivL7IqvDMMmeDrTFq3Bq7bDxbY=
X-Google-Smtp-Source: ABdhPJxO4vpYBDyxpp0JcoWZqpB7t20kXC1lwh09Eh7ro9eFlJ0TGDHhuy7merlAQeUpA4pMKs8rlkh8wjnZFQjzR1g=
X-Received: by 2002:a25:47c1:0:b0:64a:9f13:61c7 with SMTP id
 u184-20020a2547c1000000b0064a9f1361c7mr45179110yba.464.1653718511251; Fri, 27
 May 2022 23:15:11 -0700 (PDT)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Sat, 28 May 2022 10:44:59 +0430
Message-ID: <CAA=S3PtvLBB=K7MxcCYGgayD3x9jOhhLV2i767dPfLWP84T++g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="0000000000006c0d4605e00c5804"
Message-ID-Hash: VJB7A53C6X77JN7DPP3ATASYO4MAH7GH
X-Message-ID-Hash: VJB7A53C6X77JN7DPP3ATASYO4MAH7GH
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] When I want to customize RFNOC blocks, like adding FFT block in Gnuradio generate OOOOOOOOOOO?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VJB7A53C6X77JN7DPP3ATASYO4MAH7GH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--0000000000006c0d4605e00c5804
Content-Type: multipart/alternative; boundary="0000000000006c0d4105e00c5802"

--0000000000006c0d4105e00c5802
Content-Type: text/plain; charset="UTF-8"

When I  want to customize RFNOC blocks, like adding an FFT block in
Gnuradio generate OOOOOOOOOOO?
When I change the RFNOC image core in USRP from the below link, the FFT
block does not work in Gnuradio, For the Gain block same problem...
https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0

My environment is Ubuntu 20.04 ,Gnuradio 3.8.1, UHD 4.1.0.5, gr-ettus,
(I build all Gnuadio, UHD, and.... from source, Original RFNOC block works
but the custom block that I added does not work correctly?

My question is when I rebuild and synthesize bitstream FPGA I should
compile all Gnuradio, UHD, and ....from scratch?
What work should I do? I study all links and videos but my problem still
remains...

I saw these links that they had my problem...
https://www.mail-archive.com/usrp-users@lists.ettus.com/msg11087.html
https://lists.gnu.org/archive/html/discuss-gnuradio/2020-11/msg00077.html

I to describe the problem in this mail.....
https://lists.ettus.com/empathy/thread/76SR2TPUUXQPBWUXIWVGVIIHHHWTFRJF

I shared the RFNOC image core that I added FFT but it doesn't work...
Can anyone guide me? Thanks in advance

--0000000000006c0d4105e00c5802
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">When I=C2=A0 want to customize RFNOC blocks, like adding a=
n FFT block in Gnuradio generate OOOOOOOOOOO?<br><div>When I change the RFN=
OC image core in USRP from the=C2=A0below link, the=C2=A0FFT block does not=
 work in Gnuradio, For the Gain block same problem...</div><div><a href=3D"=
https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0">https://kb.ettu=
s.com/Getting_Started_with_RFNoC_in_UHD_4.0</a><br></div><div><br></div><di=
v>My environment is Ubuntu 20.04 ,Gnuradio 3.8.1, UHD 4.1.0.5, gr-ettus,</d=
iv><div>(I build all Gnuadio, UHD, and.... from source, Original=C2=A0RFNOC=
 block works but the custom block that I added does not work correctly?</di=
v><div><br></div><div>My question is when I rebuild and synthesize bitstrea=
m FPGA I should compile all Gnuradio, UHD, and ....from scratch?</div><div>=
What work should I do? I study all links and videos but my problem still re=
mains...</div><div><br></div><div>I saw these links that they=C2=A0had my p=
roblem...</div><div><a href=3D"https://www.mail-archive.com/usrp-users@list=
s.ettus.com/msg11087.html">https://www.mail-archive.com/usrp-users@lists.et=
tus.com/msg11087.html</a><br></div><div><a href=3D"https://lists.gnu.org/ar=
chive/html/discuss-gnuradio/2020-11/msg00077.html">https://lists.gnu.org/ar=
chive/html/discuss-gnuradio/2020-11/msg00077.html</a><br></div><div><br></d=
iv><div>I to describe the problem in this mail.....</div><div><a href=3D"ht=
tps://lists.ettus.com/empathy/thread/76SR2TPUUXQPBWUXIWVGVIIHHHWTFRJF">http=
s://lists.ettus.com/empathy/thread/76SR2TPUUXQPBWUXIWVGVIIHHHWTFRJF</a><br>=
</div><div><br></div><div>I shared the RFNOC image core that I added FFT bu=
t it doesn&#39;t work...</div><div>Can anyone guide me? Thanks in advance</=
div><div><br></div></div>

--0000000000006c0d4105e00c5802--

--0000000000006c0d4605e00c5804
Content-Type: application/x-yaml; name="x300_with_fft.yml"
Content-Disposition: attachment; filename="x300_with_fft.yml"
Content-Transfer-Encoding: base64
Content-ID: <f_l3ph4vk40>
X-Attachment-Id: f_l3ph4vk40

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
ZXRlcnMgKG9wdGlvbmFsKQogICAgICBFTl9GRlRfU0hJRlQ6IDEgCgojIEEgbGlzdCBvZiBhbGwg
c3RhdGljIGNvbm5lY3Rpb25zIGluIGRlc2lnbgojIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQojIEZvcm1hdDogQSBsaXN0IG9mIGNvbm5lY3Rpb24gbWFwcyAobGlz
dCBvZiBrZXktdmFsdWUgcGFpcnMpIHdpdGggdGhlIGZvbGxvd2luZyBrZXlzCiMgICAgICAgICAt
IHNyY2JsayAgPSBTb3VyY2UgYmxvY2sgdG8gY29ubmVjdAojICAgICAgICAgLSBzcmNwb3J0ID0g
UG9ydCBvbiB0aGUgc291cmNlIGJsb2NrIHRvIGNvbm5lY3QKIyAgICAgICAgIC0gZHN0YmxrICA9
IERlc3RpbmF0aW9uIGJsb2NrIHRvIGNvbm5lY3QKIyAgICAgICAgIC0gZHN0cG9ydCA9IFBvcnQg
b24gdGhlIGRlc3RpbmF0aW9uIGJsb2NrIHRvIGNvbm5lY3QKY29ubmVjdGlvbnM6CiAgIyBlcDAg
dG8gcmFkaW8wKDApIC0gUkZBIFRYCiAgLSB7IHNyY2JsazogZXAwLCAgICBzcmNwb3J0OiBvdXQw
LCAgZHN0YmxrOiBkdWMwLCAgIGRzdHBvcnQ6IGluXzAgfQogIC0geyBzcmNibGs6IGR1YzAsICAg
c3JjcG9ydDogb3V0XzAsIGRzdGJsazogcmFkaW8wLCBkc3Rwb3J0OiBpbl8wIH0KICAjIHJhZGlv
KDApIHRvIGVwMCAtIFJGQSBSWAogIC0geyBzcmNibGs6IHJhZGlvMCwgc3JjcG9ydDogb3V0XzAs
IGRzdGJsazogZGRjMCwgICBkc3Rwb3J0OiBpbl8wIH0KICAtIHsgc3JjYmxrOiBkZGMwLCAgIHNy
Y3BvcnQ6IG91dF8wLCBkc3RibGs6IGVwMCwgICAgZHN0cG9ydDogaW4wICB9CiAgIyByYWRpbzAo
MSkgdG8gZXAxIC0gUkZBIFJYCiAgLSB7IHNyY2JsazogcmFkaW8wLCBzcmNwb3J0OiBvdXRfMSwg
ZHN0YmxrOiBkZGMwLCAgIGRzdHBvcnQ6IGluXzEgfQogIC0geyBzcmNibGs6IGRkYzAsICAgc3Jj
cG9ydDogb3V0XzEsIGRzdGJsazogZXAxLCAgICBkc3Rwb3J0OiBpbjAgIH0KICAjIGVwMiB0byBy
YWRpbzEoMCkgLSBSRkEgVFgKICAtIHsgc3JjYmxrOiBlcDIsICAgIHNyY3BvcnQ6IG91dDAsICBk
c3RibGs6IGR1YzEsICAgZHN0cG9ydDogaW5fMCB9CiAgLSB7IHNyY2JsazogZHVjMSwgICBzcmNw
b3J0OiBvdXRfMCwgZHN0YmxrOiByYWRpbzEsIGRzdHBvcnQ6IGluXzAgfQogICMgcmFkaW8xKDAp
IHRvIGVwMiAtIFJGQSBSWAogIC0geyBzcmNibGs6IHJhZGlvMSwgc3JjcG9ydDogb3V0XzAsIGRz
dGJsazogZGRjMSwgICBkc3Rwb3J0OiBpbl8wIH0KICAtIHsgc3JjYmxrOiBkZGMxLCAgIHNyY3Bv
cnQ6IG91dF8wLCBkc3RibGs6IGVwMiwgICAgZHN0cG9ydDogaW4wICB9CiAgIyByYWRpbzAoMSkg
dG8gZXAzIC0gUkZBIFJYCiAgLSB7IHNyY2JsazogcmFkaW8xLCBzcmNwb3J0OiBvdXRfMSwgZHN0
YmxrOiBkZGMxLCAgIGRzdHBvcnQ6IGluXzEgfQogIC0geyBzcmNibGs6IGRkYzEsICAgc3JjcG9y
dDogb3V0XzEsIGRzdGJsazogZXAzLCAgICBkc3Rwb3J0OiBpbjAgIH0KICAjIGVwNCB0byByZXBs
YXkwKDApCiAgLSB7IHNyY2JsazogZXA0LCAgICAgc3JjcG9ydDogb3V0MCwgIGRzdGJsazogcmVw
bGF5MCwgZHN0cG9ydDogaW5fMCB9CiAgIyByZXBsYXkwKDApIHRvIGVwNAogIC0geyBzcmNibGs6
IHJlcGxheTAsIHNyY3BvcnQ6IG91dF8wLCBkc3RibGs6IGVwNCwgICAgIGRzdHBvcnQ6IGluMCAg
fQogICMgZXA1IHRvIHJlcGxheTAoMSkKICAtIHsgc3JjYmxrOiBlcDUsICAgICBzcmNwb3J0OiBv
dXQwLCAgZHN0YmxrOiByZXBsYXkwLCBkc3Rwb3J0OiBpbl8xIH0KICAjIHJlcGxheTAoMSkgdG8g
ZXA1CiAgLSB7IHNyY2JsazogcmVwbGF5MCwgc3JjcG9ydDogb3V0XzEsIGRzdGJsazogZXA1LCAg
ICAgZHN0cG9ydDogaW4wICB9CiAgIyBlcF9mZnQgdG8gZmZ0MAogIC0geyBzcmNibGs6IGVwX2Zm
dCwgc3JjcG9ydDogb3V0MCwgIGRzdGJsazogZmZ0MCwgICBkc3Rwb3J0OiBpbl8wIH0KICAjIGZm
dDAgdG8gZXBfZmZ0CiAgLSB7IHNyY2JsazogZmZ0MCwgICBzcmNwb3J0OiBvdXRfMCwgZHN0Ymxr
OiBlcF9mZnQsIGRzdHBvcnQ6IGluMCAgfQoKICAjIEJTUCBDb25uZWN0aW9ucwogIC0geyBzcmNi
bGs6IHJhZGlvMCwgc3JjcG9ydDogY3RybF9wb3J0LCBkc3RibGs6IF9kZXZpY2VfLCBkc3Rwb3J0
OiBjdHJscG9ydF9yYWRpbzAgfQogIC0geyBzcmNibGs6IHJhZGlvMSwgc3JjcG9ydDogY3RybF9w
b3J0LCBkc3RibGs6IF9kZXZpY2VfLCBkc3Rwb3J0OiBjdHJscG9ydF9yYWRpbzEgfQogIC0geyBz
cmNibGs6IHJlcGxheTAsIHNyY3BvcnQ6IGF4aV9yYW0sIGRzdGJsazogX2RldmljZV8sIGRzdHBv
cnQ6IGRyYW0gfQogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiB4MzAwX3JhZGlvMCwg
ZHN0YmxrOiByYWRpbzAsIGRzdHBvcnQ6IHgzMDBfcmFkaW8gfQogIC0geyBzcmNibGs6IF9kZXZp
Y2VfLCBzcmNwb3J0OiB4MzAwX3JhZGlvMSwgZHN0YmxrOiByYWRpbzEsIGRzdHBvcnQ6IHgzMDBf
cmFkaW8gfQogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiB0aW1lX2tlZXBlciwgZHN0
YmxrOiByYWRpbzAsIGRzdHBvcnQ6IHRpbWVfa2VlcGVyIH0KICAtIHsgc3JjYmxrOiBfZGV2aWNl
Xywgc3JjcG9ydDogdGltZV9rZWVwZXIsIGRzdGJsazogcmFkaW8xLCBkc3Rwb3J0OiB0aW1lX2tl
ZXBlciB9CiAgCiMgQSBsaXN0IG9mIGFsbCBjbG9jayBkb21haW4gY29ubmVjdGlvbnMgaW4gZGVz
aWduCiMgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiMgRm9ybWF0
OiBBIGxpc3Qgb2YgY29ubmVjdGlvbiBtYXBzIChsaXN0IG9mIGtleS12YWx1ZSBwYWlycykgd2l0
aCB0aGUgZm9sbG93aW5nIGtleXMKIyAgICAgICAgIC0gc3JjYmxrICA9IFNvdXJjZSBibG9jayB0
byBjb25uZWN0IChBbHdheXMgIl9kZXZpY2UiXykKIyAgICAgICAgIC0gc3JjcG9ydCA9IENsb2Nr
IGRvbWFpbiBvbiB0aGUgc291cmNlIGJsb2NrIHRvIGNvbm5lY3QKIyAgICAgICAgIC0gZHN0Ymxr
ICA9IERlc3RpbmF0aW9uIGJsb2NrIHRvIGNvbm5lY3QKIyAgICAgICAgIC0gZHN0cG9ydCA9IENs
b2NrIGRvbWFpbiBvbiB0aGUgZGVzdGluYXRpb24gYmxvY2sgdG8gY29ubmVjdApjbGtfZG9tYWlu
czoKICAtIHsgc3JjYmxrOiBfZGV2aWNlXywgc3JjcG9ydDogcmFkaW8sIGRzdGJsazogcmFkaW8w
LCBkc3Rwb3J0OiByYWRpbyB9CiAgLSB7IHNyY2JsazogX2RldmljZV8sIHNyY3BvcnQ6IGNlLCAg
ICBkc3RibGs6IGRkYzAsICAgZHN0cG9ydDogY2UgICAgfQogIC0geyBzcmNibGs6IF9kZXZpY2Vf
LCBzcmNwb3J0OiBjZSwgICAgZHN0YmxrOiBkdWMwLCAgIGRzdHBvcnQ6IGNlICAgIH0KICAtIHsg
c3JjYmxrOiBfZGV2aWNlXywgc3JjcG9ydDogcmFkaW8sIGRzdGJsazogcmFkaW8xLCBkc3Rwb3J0
OiByYWRpbyB9CiAgLSB7IHNyY2JsazogX2RldmljZV8sIHNyY3BvcnQ6IGNlLCAgICBkc3RibGs6
IGRkYzEsICAgZHN0cG9ydDogY2UgICAgfQogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0
OiBjZSwgICAgZHN0YmxrOiBkdWMxLCAgIGRzdHBvcnQ6IGNlICAgIH0KICAtIHsgc3JjYmxrOiBf
ZGV2aWNlXywgc3JjcG9ydDogZHJhbSwgIGRzdGJsazogcmVwbGF5MCwgZHN0cG9ydDogbWVtICB9
CiAgLSB7IHNyY2JsazogX2RldmljZV8sIHNyY3BvcnQ6IGNlLCBkc3RibGs6IGZmdDAsIGRzdHBv
cnQ6IGNlIH0KICAjLSB7IHNyY2JsazogX2RldmljZV8sIHNyY3BvcnQ6IHJmbm9jX2NoZHIsIGRz
dGJsazogZmZ0MCwgZHN0cG9ydDogY2UgfQogICMtIHsgc3JjYmxrOiBfZGV2aWNlXywgc3JjcG9y
dDogcmFkaW8sIGRzdGJsazogZmZ0MCwgZHN0cG9ydDogY2UgfQoKCg==
--0000000000006c0d4605e00c5804
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--0000000000006c0d4605e00c5804--
