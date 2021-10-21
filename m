Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E57C436DA3
	for <lists+usrp-users@lfdr.de>; Fri, 22 Oct 2021 00:41:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0215C3841DE
	for <lists+usrp-users@lfdr.de>; Thu, 21 Oct 2021 18:41:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="b1Z4OFUJ";
	dkim-atps=neutral
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 481FE383D57
	for <usrp-users@lists.ettus.com>; Thu, 21 Oct 2021 18:40:20 -0400 (EDT)
Received: by mail-il1-f174.google.com with SMTP id l7so2319532iln.8
        for <usrp-users@lists.ettus.com>; Thu, 21 Oct 2021 15:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Hf0d5zKMGavVxCzHvTa1AJoPpwi/lXg/EIxxuspFEdU=;
        b=b1Z4OFUJ7Hw2RMXl7yDa4dFjjuVMMPls2H39pceYeaTpchLoD9eY1t45x5fkdvxAg1
         MPXIlV8OXOzjjNxXgGHiGoTT4sD1nouPTPo4EQabuLLSop7voM4NgtfbvKzJfl8DO/H5
         zj9RoNVc758IayVL/xdQPHjUn7ZSWHhASfxZAFEkJE7Plzc0K9Y2BX+0FFtpkEne3HpQ
         KuQOU6AgwiVxr5bTijKUyMBYgJi4ikAZKK1sUfjDMP5sJ/lde/NjN1WqIxEmeoAYf6/0
         8asZyhvFJZv+XWplnEBn0k2pdHWvSV6Rml9hwKaUFsScozrkIOxGPHo8HZqeHAIvwkdd
         hdPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Hf0d5zKMGavVxCzHvTa1AJoPpwi/lXg/EIxxuspFEdU=;
        b=zuIb2QFC7tx/sl8l5QeMmwgk4NhDz0tianwclwzwmvgWcGSrAT1tNP8jXOz3ipmIaz
         waXXd/b2FnnsRimlPKAsEpdifReMNA/EN9n9mTqg+kT0W8vpc4QbLobutseQjCvYkm33
         t84pPuM1Q2HdFflrOpm/cMsReIfFUXeLzoIvO18Yge1z/YimTs4vFrCk+7VZm7cKcsUK
         aq7SuNNY5EJyw5GPhH9ee//9E3Ij9+AJ7dhVKUzat3fRRwmGM3l7J+ou7uYrDbeS7DJo
         vfkAb2nusH85yH+UIh8bMUwgxs9RIqRWESvsQxW31wfc7oQX00qzCyx7TXpoasM2Y6X3
         xs3g==
X-Gm-Message-State: AOAM530ENdMPbzUMRQFDHeqFzNLQrdZzFNYnMUAnteiBN00SIZ6368Tw
	aKu4wpm8ueISCGswELDyhtwa6/Pbn5eHcM8OZvoJFoIG
X-Google-Smtp-Source: ABdhPJzeJLIh4lEoiYz4opX/GRPgcwVckcUmx/tS+ZNoziHIeAspi7Nfmgfu15XuzF1IbVznyfMLzCVGq5BPFYX0C38=
X-Received: by 2002:a92:dd06:: with SMTP id n6mr5718095ilm.87.1634856019603;
 Thu, 21 Oct 2021 15:40:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxsHu+FoQrLpC+fVyVdtmdu4kfXEq8CBmBsA5iGJ+xT-FA@mail.gmail.com>
In-Reply-To: <CAPRRyxsHu+FoQrLpC+fVyVdtmdu4kfXEq8CBmBsA5iGJ+xT-FA@mail.gmail.com>
From: Ivan Zahartchuk <adray0001@gmail.com>
Date: Fri, 22 Oct 2021 01:40:08 +0300
Message-ID: <CAPRRyxsDhTm=m_EWds6SbJUuDkVaK0GJyOETVaSPisb_kfzbkw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>, discuss-gnuradio <discuss-gnuradio@gnu.org>
Content-Type: multipart/mixed; boundary="0000000000004f4fb805cee494ff"
Message-ID-Hash: YWCTW4UDUYZDQQFIBEKZMLUVC43PF3A3
X-Message-ID-Hash: YWCTW4UDUYZDQQFIBEKZMLUVC43PF3A3
X-MailFrom: adray0001@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Fwd: Adding a Window block to an RFNOC graph
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YWCTW4UDUYZDQQFIBEKZMLUVC43PF3A3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--0000000000004f4fb805cee494ff
Content-Type: multipart/alternative; boundary="0000000000004f4fb705cee494fd"

--0000000000004f4fb705cee494fd
Content-Type: text/plain; charset="UTF-8"

Hello, I have a problem that when receiving samples from the USRP E310
board, after the FFT block at low gain, zero values are received.
After that I log them and get infinity. I wanted to figure out what
the problem is, but I have no idea, maybe the Window block will fix
the situation. But when building my yaml file, I get the error:
[ERR] 2 Unresolved connection(s)
[ERR]     (window0-out_0 -> fft0-in0)
[ERR]     (fft0-out_0 -> ep1-in_0)
[INF]         (('radio0', 'ctrl_port', 'master'),)
[INF]         (('radio0', 'time_keeper', 'listener'),)
[INF]         (('radio0', 'x300_radio', 'slave'),)
[INF]         (('_device_', 'ctrlport_radio', 'slave'),)
[INF]         (('_device_', 'time_keeper', 'broadcaster'),)
[INF]         (('_device_', 'x300_radio', 'master'),)
Please tell me what could be the problem and how can I add the Window
block to my image?

--0000000000004f4fb705cee494fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr"><br></div><div dir=3D"ltr"><pre id=3D"m_2664631585752873320gmail-tw-=
target-text" style=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">Hello,=
 I have a problem that when receiving samples from the USRP E310 board, aft=
er the FFT block at low gain, zero values are received. After that I log th=
em and get infinity. I wanted to figure out what the problem is, but I have=
 no idea, maybe the Window block will fix the situation. But when building =
my yaml file, I get the error:<br>[ERR] 2 Unresolved connection(s)<br>[ERR]=
 =C2=A0 =C2=A0 (window0-out_0 -&gt; fft0-in0)<br>[ERR] =C2=A0 =C2=A0 (fft0-=
out_0 -&gt; ep1-in_0)<br>[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;radio0&#3=
9;, &#39;ctrl_port&#39;, &#39;master&#39;),)<br>[INF] =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ((&#39;radio0&#39;, &#39;time_keeper&#39;, &#39;listener&#39;),)<br>=
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;radio0&#39;, &#39;x300_radio&#39;,=
 &#39;slave&#39;),)<br>[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;_device_&#3=
9;, &#39;ctrlport_radio&#39;, &#39;slave&#39;),)<br>[INF] =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ((&#39;_device_&#39;, &#39;time_keeper&#39;, &#39;broadcaster&#3=
9;),)<br>[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;_device_&#39;, &#39;x300_=
radio&#39;, &#39;master&#39;),)<br><span lang=3D"en">Please tell me what co=
uld be the problem and how can I add the Window block to my image?<br><br><=
/span></span></pre></div>
</div></div>

--0000000000004f4fb705cee494fd--

--0000000000004f4fb805cee494ff
Content-Type: application/x-yaml; name="e310_rfnoc_image_fft1.yml"
Content-Disposition: attachment; filename="e310_rfnoc_image_fft1.yml"
Content-Transfer-Encoding: base64
Content-ID: <f_kuucf0in0>
X-Attachment-Id: f_kuucf0in0

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
ICdlMzEwJyAgICAgICAgICAgICAgICAgICAgICAgICAgIyBVU1JQIHR5cGUKaW1hZ2VfY29yZV9u
YW1lOiAnZTMxMCcgICAgICAgICAgICAgICAgICMgTmFtZSB0byB1c2UgZm9yIHRoZSBSRk5vQyBJ
bWFnZSBDb3JlIGZpbGVzCmRlZmF1bHRfdGFyZ2V0OiAnRTMxMF9TRzMnCgojIEEgbGlzdCBvZiBh
bGwgc3RyZWFtIGVuZHBvaW50cyBpbiBkZXNpZ24KIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCnN0cmVhbV9lbmRwb2ludHM6CiAgZXAwOiAgICAgICAgICAgICAgICAg
ICAgICAgIyBTdHJlYW0gZW5kcG9pbnQgbmFtZQogICAgY3RybDogVHJ1ZSAgICAgICAgICAgICAg
ICAgICAgICAjIEVuZHBvaW50IHBhc3NlcyBjb250cm9sIHRyYWZmaWMKICAgIGRhdGE6IFRydWUg
ICAgICAgICAgICAgICAgICAgICAgIyBFbmRwb2ludCBwYXNzZXMgZGF0YSB0cmFmZmljCiAgICBi
dWZmX3NpemU6IDE2Mzg0ICAgICAgICAgICAgICAgICMgSW5ncmVzcyBidWZmZXIgc2l6ZSBmb3Ig
ZGF0YQogIGVwMTogICAgICAgICAgICAgICAgICAgICAgICMgU3RyZWFtIGVuZHBvaW50IG5hbWUK
ICAgIGN0cmw6IEZhbHNlICAgICAgICAgICAgICAgICAgICAgIyBFbmRwb2ludCBwYXNzZXMgY29u
dHJvbCB0cmFmZmljCiAgICBkYXRhOiBUcnVlICAgICAgICAgICAgICAgICAgICAgICMgRW5kcG9p
bnQgcGFzc2VzIGRhdGEgdHJhZmZpYwogICAgYnVmZl9zaXplOiAxNjM4NCAgICAgICAgICAgICAg
ICMgSW5ncmVzcyBidWZmZXIgc2l6ZSBmb3IgZGF0YQoKIyBBIGxpc3Qgb2YgYWxsIE5vQyBibG9j
a3MgaW4gZGVzaWduCiMgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpub2NfYmxv
Y2tzOgogIHJhZGlvMDogICAgICAgICAgICAgICAgICAgICAgICAgICAgIyBOb0MgYmxvY2sgbmFt
ZQogICAgYmxvY2tfZGVzYzogJ3JhZGlvXzJ4NjQueW1sJyAgICAgIyBCbG9jayBkZXZpY2UgZGVz
Y3JpcHRvcgogIHdpbmRvdzA6CiAgICBibG9ja19kZXNjOiAnd2luZG93LnltbCcKICBmZnQwOiAg
ICAgICAgICAgICAgICAgICAgICAgICAgIyBGRlQgYmxvY2sgbmFtZQogICAgYmxvY2tfZGVzYzog
J2ZmdF8xeDY0LnltbCcgICAjIEJsb2NrIFlBTUwgZGVzY3JpcHRvciBmaWxlCiAgICBwYXJhbWV0
ZXJzOiAgICAgICAgICAgICAgICAgICMgU3BlY2lmeSBhbnkgVmVyaWxvZyBtb2R1bGUgcGFyYW1l
dGVycyAob3B0aW9uYWwpCiAgICAgRU5fRkZUX1NISUZUOiAxCiAgZGRjMDoKICAgIGJsb2NrX2Rl
c2M6ICdkZGMueW1sJwogICAgcGFyYW1ldGVyczoKICAgICAgTlVNX1BPUlRTOiAxCiMgQSBsaXN0
IG9mIGFsbCBzdGF0aWMgY29ubmVjdGlvbnMgaW4gZGVzaWduCiMgLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiMgRm9ybWF0OiBBIGxpc3Qgb2YgY29ubmVjdGlvbiBt
YXBzIChsaXN0IG9mIGtleS12YWx1ZSBwYWlycykgd2l0aCB0aGUgZm9sbG93aW5nIGtleXMKIyAg
ICAgICAgIC0gc3JjYmxrICA9IFNvdXJjZSBibG9jayB0byBjb25uZWN0CiMgICAgICAgICAtIHNy
Y3BvcnQgPSBQb3J0IG9uIHRoZSBzb3VyY2UgYmxvY2sgdG8gY29ubmVjdAojICAgICAgICAgLSBk
c3RibGsgID0gRGVzdGluYXRpb24gYmxvY2sgdG8gY29ubmVjdAojICAgICAgICAgLSBkc3Rwb3J0
ID0gUG9ydCBvbiB0aGUgZGVzdGluYXRpb24gYmxvY2sgdG8gY29ubmVjdApjb25uZWN0aW9uczoK
ICAtIHsgc3JjYmxrOiByYWRpbzAsIHNyY3BvcnQ6IG91dF8wLCBkc3RibGs6IGRkYzAsIGRzdHBv
cnQ6IGluXzAgfQogIC0geyBzcmNibGs6IGRkYzAsIHNyY3BvcnQ6IG91dF8wLCBkc3RibGs6IGVw
MCwgIGRzdHBvcnQ6IGluMCB9CiAgLSB7IHNyY2JsazogcmFkaW8wLCBzcmNwb3J0OiBvdXRfMSwg
ZHN0YmxrOiB3aW5kb3cwLCBkc3Rwb3J0OiBpbl8wIH0KICAtIHsgc3JjYmxrOiB3aW5kb3cwLCBz
cmNwb3J0OiBvdXRfMCwgZHN0YmxrOiBmZnQwLCAgZHN0cG9ydDogaW4wIH0KICAtIHsgc3JjYmxr
OiBmZnQwLCBzcmNwb3J0OiBvdXRfMCwgZHN0YmxrOiBlcDEsIGRzdHBvcnQ6IGluXzAgfQogIAog
IC0geyBzcmNibGs6IHJhZGlvMCwgc3JjcG9ydDogY3RybF9wb3J0LCBkc3RibGs6IF9kZXZpY2Vf
LCBkc3Rwb3J0OiBjdHJscG9ydF9yYWRpbyB9CiAgLSB7IHNyY2JsazogX2RldmljZV8sIHNyY3Bv
cnQ6IHgzMDBfcmFkaW8sIGRzdGJsazogcmFkaW8wLCBkc3Rwb3J0OiB4MzAwX3JhZGlvIH0KICAt
IHsgc3JjYmxrOiBfZGV2aWNlXywgc3JjcG9ydDogdGltZV9rZWVwZXIsIGRzdGJsazogcmFkaW8w
LCBkc3Rwb3J0OiB0aW1lX2tlZXBlciB9CgojIEEgbGlzdCBvZiBhbGwgY2xvY2sgZG9tYWluIGNv
bm5lY3Rpb25zIGluIGRlc2lnbgojIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQojIEZvcm1hdDogQSBsaXN0IG9mIGNvbm5lY3Rpb24gbWFwcyAobGlzdCBv
ZiBrZXktdmFsdWUgcGFpcnMpIHdpdGggdGhlIGZvbGxvd2luZyBrZXlzCiMgICAgICAgICAtIHNy
Y2JsayAgPSBTb3VyY2UgYmxvY2sgdG8gY29ubmVjdCAoQWx3YXlzICJfZGV2aWNlIl8pCiMgICAg
ICAgICAtIHNyY3BvcnQgPSBDbG9jayBkb21haW4gb24gdGhlIHNvdXJjZSBibG9jayB0byBjb25u
ZWN0CiMgICAgICAgICAtIGRzdGJsayAgPSBEZXN0aW5hdGlvbiBibG9jayB0byBjb25uZWN0CiMg
ICAgICAgICAtIGRzdHBvcnQgPSBDbG9jayBkb21haW4gb24gdGhlIGRlc3RpbmF0aW9uIGJsb2Nr
IHRvIGNvbm5lY3QKY2xrX2RvbWFpbnM6CiAgLSB7IHNyY2JsazogX2RldmljZV8sIHNyY3BvcnQ6
IHJhZGlvLCBkc3RibGs6IHJhZGlvMCwgZHN0cG9ydDogcmFkaW8gfQogIC0geyBzcmNibGs6IF9k
ZXZpY2VfLCBzcmNwb3J0OiByZm5vY19jaGRyLCBkc3RibGs6IGZmdDAsIGRzdHBvcnQ6IGNlIH0K
ICAtIHsgc3JjYmxrOiBfZGV2aWNlXywgc3JjcG9ydDogcmFkaW8sIGRzdGJsazogZGRjMCwgICBk
c3Rwb3J0OiBjZSAgICB9CiAgLSB7IHNyY2JsazogX2RldmljZV8sIHNyY3BvcnQ6IHJmbm9jX2No
ZHIsIGRzdGJsazogd2luZG93MCwgICBkc3Rwb3J0OiBjZSAgICB9CiAgCiAgCg==
--0000000000004f4fb805cee494ff
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--0000000000004f4fb805cee494ff--
