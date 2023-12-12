Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0D980F66D
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 20:18:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 387D1385311
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 14:18:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702408732; bh=eq8V7oJEMAUZYfNK2RsidbIvi2FYcG3oEvEVA2UULhs=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=seWIn8AyyECD0t3ifsoEUMghe9nV5B6o7ZoBRfoaFkM09sYawN4LhKom3l+ZBxJhI
	 f++8VeKm03RN/2a+ac4XB4vXRhiE3uvJx/i7XALPrN+7T4QVgDpixRCy/9aGDZ9WAj
	 Uvw28EUhotbLLoNSzfqXkKAAJz5xJCG6Cy/ZB7AMXvtAmxD1TA3yBTEmPKsYvxP393
	 qdnhKbxIh74P1oWUxDQ+tjU5HXOp5SBART9W1qScMpNO4lzDRICNc2cQjSq0ru/otO
	 M/TuVyFuyPCt5jgVZct/Ln6qq3jqrvRWpYOn7tvgmpZysdEGVlEzRaKc+ebY7XDAS0
	 1geSsqG7FRLfw==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id BC7AB384CB2
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 14:18:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="TaVLhAMe";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-551d5cd1c5fso967700a12.0
        for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 11:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1702408725; x=1703013525; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wBDpa22z9WpxzmpRIVHQRERD3pP1oAMgqdOh3huMDMo=;
        b=TaVLhAMei3YX/dgJUtWpli4QMln8eaqRyTRvGgxj+ffN6+OXP6q/l7bc/P0ENgisLI
         Rucb4A5T7Z+DShnZQZhIJV9APvdaLxrGlBQPzMdldjXLj9po2M/IPj6rsX0AaCxZOrk4
         S/FOY18TlRQ2S6aPm5TqqFSjSS0fLpxUI+kDUyWSdDDGr2LXpYyLNT+GLpktRGy0SNZL
         ZMEZXfPEvI3WEQi37LEVyY7yuAa/338tjh/D6x4MiFaKqVlQhZxmDrlnD1D887r54Re5
         AJEdakjBTJrYD8l3COnW9qInAP0zs+ELPfzFmjva8vw4G20/fdv169SlEA4obOUi5nhR
         +Jyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702408725; x=1703013525;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wBDpa22z9WpxzmpRIVHQRERD3pP1oAMgqdOh3huMDMo=;
        b=OhTiRdZ0ovIxgYF44f/1gra1UhH4lDpfaWJH6v1mqZ2+5wQbMqA1RSLkeHGoMYL9qb
         u5fOkLkUzs3tqCk9OfZ2W5HNFXJM2T4LgABBCLzp9BBJopimw74KkD28GeHL94GU1x+W
         nDUTyupL9zIYfq+zp9YWcg50+mTQro6oJdNZo1LszuDVKdgY+YogqGlHUhHiLiwxws3T
         yi7Wj6tnw4y2G/xmxKgB/KkWG6CWlODXJrFfz3ybeadnyMs++yt3cX6ZwNyjOhenbEDT
         RuPOyfX8DLpO05UMI38aQj8wlZPQa9Tzdr//nQvrf2BdTwt41vPciaCog0PwTzqhgqvT
         iJig==
X-Gm-Message-State: AOJu0Yzlw3VAEV2K8FysgcLK7Zlknjujby5459d+Me7oQzLQ1ScMJrVW
	q9JPHPuRHA6JEu/XA/wAWXaRYGSvGKH6lhNS1Pi74g==
X-Google-Smtp-Source: AGHT+IFLiKJl2N+srfaeYJVHpCKvDzqKYeInogA8gm18/ZLsXS/l+LOseRDR7mElOCrIAM/HLd3yBx3oC+GjBIn2V38=
X-Received: by 2002:a50:d61d:0:b0:54c:48aa:cd15 with SMTP id
 x29-20020a50d61d000000b0054c48aacd15mr6250278edi.37.1702408725267; Tue, 12
 Dec 2023 11:18:45 -0800 (PST)
MIME-Version: 1.0
References: <rPb5vjhzxAbpkKqfG380sgIcjCoaOgdLbAtMNY4tA@lists.ettus.com>
In-Reply-To: <rPb5vjhzxAbpkKqfG380sgIcjCoaOgdLbAtMNY4tA@lists.ettus.com>
Date: Tue, 12 Dec 2023 14:18:33 -0500
Message-ID: <CAB__hTRMbhHVt_R8B80ZYtbwXLRZV9fS6xe08Pm0SyjkDUd9-w@mail.gmail.com>
To: engr.muhd.hassan@gmail.com
Content-Type: multipart/mixed; boundary="0000000000005553c8060c54ebea"
Message-ID-Hash: S3ORVUHTXVOLFD2SLN5BH2E73SFKHXFL
X-Message-ID-Hash: S3ORVUHTXVOLFD2SLN5BH2E73SFKHXFL
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error while running command "rfnoc_image_builder -y ./e310_rfnoc_image_core.yml"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S3ORVUHTXVOLFD2SLN5BH2E73SFKHXFL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>

--0000000000005553c8060c54ebea
Content-Type: multipart/alternative; boundary="0000000000005553c5060c54ebe8"

--0000000000005553c5060c54ebe8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A while back, I built an E310 image using "static" linking. This allowed me
to include a 2 channel replay block with a 2 channel radio.  The yml may
require an update or two to work with the current UHD version, but see if
you can build an image with static links.  Keep in mind that with static
links you will be forced to use the replay block since you will not be able
to dynamically bypass it.
Rob


On Tue, Dec 12, 2023 at 1:55=E2=80=AFPM <engr.muhd.hassan@gmail.com> wrote:

> Could you please tell me how can solve this issue? As I am using GNU
> radio, when I increase sample rate beyond 2MS/s it misses samples. So,
> Ettus suggested me to use RFNoC replay Block. They also provided me with
> YAML file. I have two E313 USRPs and I have to use them for outdoor chann=
el
> modelling. Could you please help me with that?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005553c5060c54ebe8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>A while back, I built an E310 image using &quot;stati=
c&quot; linking. This allowed me to include a 2 channel replay block with a=
 2 channel radio.=C2=A0 The yml may require an update or two to work with t=
he current UHD version, but see if you can build an image with static links=
.=C2=A0 Keep in mind that with static links you will be forced to use the r=
eplay block since you will not be able to dynamically bypass it.</div><div>=
Rob</div><div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Tue, Dec 12, 2023 at 1:55=E2=80=AFPM &lt;<a href=3D"ma=
ilto:engr.muhd.hassan@gmail.com">engr.muhd.hassan@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Could you ple=
ase tell me how can solve this issue? As I am using GNU radio, when I incre=
ase sample rate beyond 2MS/s it misses samples. So, Ettus suggested me to u=
se RFNoC replay Block. They also provided me with YAML file. I have two E31=
3 USRPs and I have to use them for outdoor channel modelling. Could you ple=
ase help me with that?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000005553c5060c54ebe8--

--0000000000005553c8060c54ebea
Content-Type: application/octet-stream; name="e310_replay_image_core.yml"
Content-Disposition: attachment; filename="e310_replay_image_core.yml"
Content-Transfer-Encoding: base64
Content-ID: <f_lq2q6fyj0>
X-Attachment-Id: f_lq2q6fyj0

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
ICAjIEluZ3Jlc3MgYnVmZmVyIHNpemUgZm9yIGRhdGEKCiMgQSBsaXN0IG9mIGFsbCBOb0MgYmxv
Y2tzIGluIGRlc2lnbgojIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0Kbm9jX2Js
b2NrczoKICByYWRpbzA6ICAgICAgICAgICAgICAgICAgICAgICAgICAgICMgTm9DIGJsb2NrIG5h
bWUKICAgIGJsb2NrX2Rlc2M6ICdyYWRpb18yeDY0LnltbCcgICAgICMgQmxvY2sgZGV2aWNlIGRl
c2NyaXB0b3IKICByZXBsYXkwOgogICAgYmxvY2tfZGVzYzogJ3JlcGxheS55bWwnCiAgICBwYXJh
bWV0ZXJzOgogICAgICBOVU1fUE9SVFM6IDIKICAgICAgTUVNX0FERFJfVzogMjkKCiMgQSBsaXN0
IG9mIGFsbCBzdGF0aWMgY29ubmVjdGlvbnMgaW4gZGVzaWduCiMgLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiMgRm9ybWF0OiBBIGxpc3Qgb2YgY29ubmVjdGlvbiBt
YXBzIChsaXN0IG9mIGtleS12YWx1ZSBwYWlycykgd2l0aCB0aGUgZm9sbG93aW5nIGtleXMKIyAg
ICAgICAgIC0gc3JjYmxrICA9IFNvdXJjZSBibG9jayB0byBjb25uZWN0CiMgICAgICAgICAtIHNy
Y3BvcnQgPSBQb3J0IG9uIHRoZSBzb3VyY2UgYmxvY2sgdG8gY29ubmVjdAojICAgICAgICAgLSBk
c3RibGsgID0gRGVzdGluYXRpb24gYmxvY2sgdG8gY29ubmVjdAojICAgICAgICAgLSBkc3Rwb3J0
ID0gUG9ydCBvbiB0aGUgZGVzdGluYXRpb24gYmxvY2sgdG8gY29ubmVjdApjb25uZWN0aW9uczoK
ICAtIHsgc3JjYmxrOiBlcDAsICAgIHNyY3BvcnQ6IG91dDAsICBkc3RibGs6IHJlcGxheTAsIGRz
dHBvcnQ6IGluXzAgfQogIC0geyBzcmNibGs6IGVwMSwgICAgc3JjcG9ydDogb3V0MCwgIGRzdGJs
azogcmVwbGF5MCwgZHN0cG9ydDogaW5fMSB9CiAgLSB7IHNyY2JsazogcmVwbGF5MCwgICAgc3Jj
cG9ydDogb3V0XzAsICBkc3RibGs6IHJhZGlvMCwgZHN0cG9ydDogaW5fMCB9CiAgLSB7IHNyY2Js
azogcmVwbGF5MCwgICAgc3JjcG9ydDogb3V0XzEsICBkc3RibGs6IHJhZGlvMCwgZHN0cG9ydDog
aW5fMSB9CiAgLSB7IHNyY2JsazogcmFkaW8wLCBzcmNwb3J0OiBvdXRfMCwgZHN0YmxrOiBlcDAs
ICAgIGRzdHBvcnQ6IGluMCAgfQogIC0geyBzcmNibGs6IHJhZGlvMCwgc3JjcG9ydDogb3V0XzEs
IGRzdGJsazogZXAxLCAgICBkc3Rwb3J0OiBpbjAgIH0KICAtIHsgc3JjYmxrOiByYWRpbzAsIHNy
Y3BvcnQ6IGN0cmxfcG9ydCwgZHN0YmxrOiBfZGV2aWNlXywgZHN0cG9ydDogY3RybHBvcnRfcmFk
aW8gfQogIC0geyBzcmNibGs6IHJlcGxheTAsIHNyY3BvcnQ6IGF4aV9yYW0sIGRzdGJsazogX2Rl
dmljZV8sIGRzdHBvcnQ6IGRyYW0gfQogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiB4
MzAwX3JhZGlvLCBkc3RibGs6IHJhZGlvMCwgZHN0cG9ydDogeDMwMF9yYWRpbyB9CiAgLSB7IHNy
Y2JsazogX2RldmljZV8sIHNyY3BvcnQ6IHRpbWVfa2VlcGVyLCBkc3RibGs6IHJhZGlvMCwgZHN0
cG9ydDogdGltZV9rZWVwZXIgfQoKIyBBIGxpc3Qgb2YgYWxsIGNsb2NrIGRvbWFpbiBjb25uZWN0
aW9ucyBpbiBkZXNpZ24KIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KIyBGb3JtYXQ6IEEgbGlzdCBvZiBjb25uZWN0aW9uIG1hcHMgKGxpc3Qgb2Yga2V5
LXZhbHVlIHBhaXJzKSB3aXRoIHRoZSBmb2xsb3dpbmcga2V5cwojICAgICAgICAgLSBzcmNibGsg
ID0gU291cmNlIGJsb2NrIHRvIGNvbm5lY3QgKEFsd2F5cyAiX2RldmljZSJfKQojICAgICAgICAg
LSBzcmNwb3J0ID0gQ2xvY2sgZG9tYWluIG9uIHRoZSBzb3VyY2UgYmxvY2sgdG8gY29ubmVjdAoj
ICAgICAgICAgLSBkc3RibGsgID0gRGVzdGluYXRpb24gYmxvY2sgdG8gY29ubmVjdAojICAgICAg
ICAgLSBkc3Rwb3J0ID0gQ2xvY2sgZG9tYWluIG9uIHRoZSBkZXN0aW5hdGlvbiBibG9jayB0byBj
b25uZWN0CmNsa19kb21haW5zOgogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiByYWRp
bywgZHN0YmxrOiByYWRpbzAsIGRzdHBvcnQ6IHJhZGlvIH0KICAtIHsgc3JjYmxrOiBfZGV2aWNl
Xywgc3JjcG9ydDogZHJhbSwgZHN0YmxrOiByZXBsYXkwLCBkc3Rwb3J0OiBtZW0gfQo=
--0000000000005553c8060c54ebea
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--0000000000005553c8060c54ebea--
