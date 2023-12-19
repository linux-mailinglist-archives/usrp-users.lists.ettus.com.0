Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E741818AC8
	for <lists+usrp-users@lfdr.de>; Tue, 19 Dec 2023 16:06:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4EAF6384F0E
	for <lists+usrp-users@lfdr.de>; Tue, 19 Dec 2023 10:06:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702998411; bh=lNfPGypCvnM92lMy1vMw5pYnaE0Aryfh7RlJ4mvmNls=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Pbl95+a08RwvnPu0yJuC2cHYNiYTR/aaQmIsMZD21YkSFoRKEa3ZZFpwBHXncm/5N
	 Tf50hvj+DhK84739I8xht1EYGBwxas43kJPufPFTw2+rLZq6ylJWrEkA263a8un0y2
	 6unmOM7bbuqGLZBWY6IjSUfpFiAA9cBPlMKQY09d2ee/6q2KhSyQ1LvccCj0LpdjYW
	 pSup72QmNqGtx81MIe4Nis91VGtzBG5d/SRmYBZbZKXmRtjM7s3KBXofAH9fSA5yJw
	 RDbjWAdhTCgCTMed6iQPwsOh0VRoQQcunEfRVS0V1i7wvROUZVQEofJBYq9uHLlf07
	 pgPRlfsszYDHA==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 4021F384EF9
	for <usrp-users@lists.ettus.com>; Tue, 19 Dec 2023 10:06:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="aZ00cWah";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-55322dbac2fso3454184a12.0
        for <usrp-users@lists.ettus.com>; Tue, 19 Dec 2023 07:06:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1702998380; x=1703603180; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=srAknjbjTliXjRh3FJIC6A/WqpkNCRfa7EUTOAXDm2c=;
        b=aZ00cWahoYd/lkYx52BgS1yyzL50HqifyK39gTob4NCy+6dA0Di+oMoqoz41qlRHDJ
         snwwzsziX31Zpdrr2h1wR0xbUY4fq701MCirzq+HA1GHzlqfKKcEDHKaXIcVSnRLNuSa
         4eWBItbeZEFrp0MBT0pm2D68LzRJmK48TrpFqsXWZYL/xlES+LesEWmlufO/LV2hmG0d
         e5VfCQSiwV1j6YXcRTTlpHP6JTc5gvkM0cEdRArP3+OA9Q27cx6zwcaNRMs50kj/0HCt
         R/Y+4LOv4yZeFVbvPgu6Ov2vzxMpzozeVB3u1yJiEcDPL27kdqqTT+4VJJUCp927rj5/
         leiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702998380; x=1703603180;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=srAknjbjTliXjRh3FJIC6A/WqpkNCRfa7EUTOAXDm2c=;
        b=s8kECh12mSUklCRM0JxY/sDAugMwarF9kbVqIaAHHiAvoo6Hcms/oVpGx87x15imJ+
         fN4iuUrWxAjtc8j+Yg6nuLcQGZcyW01O0ljNiDRU6WHAK8GOc0K8uEy0YIJNcG5Tyd+2
         0jo0vaC6DO0zUfZt8QwL32kIe4td9yNXW4de0u+ovLdcJqCTHBdMSkaNMh/bedmafWmz
         exNemjFosRTlZDxUu12owH0wcV3LVoOt8G/EqjWscR10+T/JK7FnsVPv4q9JIY8QJjE+
         ls/SGasYTF87Cwn1UQRfVtBtwIF4E/S0xCMn/Phe0FogY62AU+7yoE98hEOR8QGiTV8O
         jkwA==
X-Gm-Message-State: AOJu0YxjbFdjGOA+lkYYCjMWZDOgqC6zm7UWEy10sarSQxgSWjATDvVg
	QBkn6Uw5hgrYEVSMV4TaN+1+yWJglx7f7JCzwpTjm9KCtgyC8esX
X-Google-Smtp-Source: AGHT+IG2TpmblYh4AIi8mAVUfs0bXdt/nQwah6QZTWxNI6Sk7CSj1iKh1gLFm8uRaoaOFM+sCPYNkg4CLZFgzjDc8fs=
X-Received: by 2002:a50:d78b:0:b0:54b:687f:446c with SMTP id
 w11-20020a50d78b000000b0054b687f446cmr9527041edi.31.1702998379631; Tue, 19
 Dec 2023 07:06:19 -0800 (PST)
MIME-Version: 1.0
References: <f6reKZrdx2zINjLy3i5tIiCaYkXQIN1UxCh6CRawmK4@lists.ettus.com>
In-Reply-To: <f6reKZrdx2zINjLy3i5tIiCaYkXQIN1UxCh6CRawmK4@lists.ettus.com>
Date: Tue, 19 Dec 2023 09:06:07 -0600
Message-ID: <CAB__hTRzau3q71hP3b8tJ18B1M9L_anWrEMQEDgOZ5FZQugoyQ@mail.gmail.com>
To: engr.muhd.hassan@gmail.com
Content-Type: multipart/mixed; boundary="00000000000079571f060cde3573"
Message-ID-Hash: QWHFZO6LDXUUKPQNHS3COSCZKA6VT563
X-Message-ID-Hash: QWHFZO6LDXUUKPQNHS3COSCZKA6VT563
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error: RuntimeError: Failure to create rfnoc_graph.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QWHFZO6LDXUUKPQNHS3COSCZKA6VT563/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>

--00000000000079571f060cde3573
Content-Type: multipart/alternative; boundary="00000000000079571d060cde3571"

--00000000000079571d060cde3571
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OK. So, the error you get with "uhd_image_loader" is caused by a "bad
build" that occurs if the option DRAM=3D1 is not included when using the
Replay block. I do not know why that the build itself does not fail, but
that is the case.  Thus, you still don't have a valid FPGA build for the
E310 with the Replay block.

For the YML file that I sent, the compatibility with UHD version should be
fixable with minimal changes. Attached is a new file which updates the name
of the radio block. Give this a try. If it doesn't work, see if you can
notice anything obvious that is preventing it from running.
Rob

On Tue, Dec 19, 2023 at 5:07=E2=80=AFAM <engr.muhd.hassan@gmail.com> wrote:

> Dear Rob,
>
> You are right, when I try to run this command =E2=80=9Crfnoc_image_builde=
r -y
> ./e310_rfnoc_image_core.yml=E2=80=9D, *it fails*. *I also tried to use yo=
ur given
> YML file*, it was not successful because of the different UHD version.
> The only command which worked for me is =E2=80=9Crfnoc_image_builder -y
> ./e310_rfnoc_image_core.yml -t E310_SG3 --fpga-dir ~/uhd/fpga/=E2=80=9D.
>
> Moreover I noticed that the bit file from the build folder is the actual
> file which I have to use. But I get error which I discussed earlier.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000079571d060cde3571
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">OK. So, the error you get with &quot;uhd_image_loader&quot=
; is caused by a &quot;bad build&quot; that occurs if the option DRAM=3D1 i=
s not included when using the Replay block. I do not know why that the buil=
d itself does not fail, but that is the case.=C2=A0 Thus, you still don&#39=
;t have a valid FPGA build for the E310 with the Replay block.<div><br></di=
v><div>For the YML file that I sent, the compatibility with UHD version sho=
uld be fixable with minimal changes. Attached is a new file which updates t=
he name of the radio block. Give this a try. If it doesn&#39;t work, see if=
 you can notice anything obvious that is preventing it from running.</div><=
div>Rob=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Tue, Dec 19, 2023 at 5:07=E2=80=AFAM &lt;<a href=3D"m=
ailto:engr.muhd.hassan@gmail.com" target=3D"_blank">engr.muhd.hassan@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><p>Dear Rob, </p><p>You are right, when I try to run this command =E2=80=
=9Crfnoc_image_builder -y ./e310_rfnoc_image_core.yml=E2=80=9D, <strong>it =
fails</strong>. <strong>I also tried to use your given YML file</strong>, i=
t was not successful because of the different UHD version. The only command=
 which worked for me is =E2=80=9Crfnoc_image_builder -y ./e310_rfnoc_image_=
core.yml -t E310_SG3 --fpga-dir ~/uhd/fpga/=E2=80=9D. </p><p>Moreover I not=
iced that the bit file from the build folder is the actual file which I hav=
e to use. But I get error which I discussed earlier.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000079571d060cde3571--

--00000000000079571f060cde3573
Content-Type: application/octet-stream; name="e310_replay_image_core.yml"
Content-Disposition: attachment; filename="e310_replay_image_core.yml"
Content-Transfer-Encoding: base64
Content-ID: <f_lqch4qwd0>
X-Attachment-Id: f_lqch4qwd0

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
bWFnZSBDb3JlIGZpbGVzCmRlZmF1bHRfdGFyZ2V0OiAnRFJBTT0xIEUzMTBfU0czJwoKIyBBIGxp
c3Qgb2YgYWxsIHN0cmVhbSBlbmRwb2ludHMgaW4gZGVzaWduCiMgLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpzdHJlYW1fZW5kcG9pbnRzOgogIGVwMDogICAgICAgICAg
ICAgICAgICAgICAgICMgU3RyZWFtIGVuZHBvaW50IG5hbWUKICAgIGN0cmw6IFRydWUgICAgICAg
ICAgICAgICAgICAgICAgIyBFbmRwb2ludCBwYXNzZXMgY29udHJvbCB0cmFmZmljCiAgICBkYXRh
OiBUcnVlICAgICAgICAgICAgICAgICAgICAgICMgRW5kcG9pbnQgcGFzc2VzIGRhdGEgdHJhZmZp
YwogICAgYnVmZl9zaXplOiAxNjM4NCAgICAgICAgICAgICAgICAjIEluZ3Jlc3MgYnVmZmVyIHNp
emUgZm9yIGRhdGEKICBlcDE6ICAgICAgICAgICAgICAgICAgICAgICAjIFN0cmVhbSBlbmRwb2lu
dCBuYW1lCiAgICBjdHJsOiBGYWxzZSAgICAgICAgICAgICAgICAgICAgICMgRW5kcG9pbnQgcGFz
c2VzIGNvbnRyb2wgdHJhZmZpYwogICAgZGF0YTogVHJ1ZSAgICAgICAgICAgICAgICAgICAgICAj
IEVuZHBvaW50IHBhc3NlcyBkYXRhIHRyYWZmaWMKICAgIGJ1ZmZfc2l6ZTogMTYzODQgICAgICAg
ICAgICAgICAgIyBJbmdyZXNzIGJ1ZmZlciBzaXplIGZvciBkYXRhCgojIEEgbGlzdCBvZiBhbGwg
Tm9DIGJsb2NrcyBpbiBkZXNpZ24KIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
Cm5vY19ibG9ja3M6CiAgcmFkaW8wOiAgICAgICAgICAgICAgICAgICAgICAgICAgICAjIE5vQyBi
bG9jayBuYW1lCiAgICBibG9ja19kZXNjOiAncmFkaW8ueW1sJyAgICAgICAgICAjIEJsb2NrIGRl
dmljZSBkZXNjcmlwdG9yCiAgcmVwbGF5MDoKICAgIGJsb2NrX2Rlc2M6ICdyZXBsYXkueW1sJwog
ICAgcGFyYW1ldGVyczoKICAgICAgTlVNX1BPUlRTOiAyCiAgICAgIE1FTV9BRERSX1c6IDI5Cgoj
IEEgbGlzdCBvZiBhbGwgc3RhdGljIGNvbm5lY3Rpb25zIGluIGRlc2lnbgojIC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQojIEZvcm1hdDogQSBsaXN0IG9mIGNvbm5l
Y3Rpb24gbWFwcyAobGlzdCBvZiBrZXktdmFsdWUgcGFpcnMpIHdpdGggdGhlIGZvbGxvd2luZyBr
ZXlzCiMgICAgICAgICAtIHNyY2JsayAgPSBTb3VyY2UgYmxvY2sgdG8gY29ubmVjdAojICAgICAg
ICAgLSBzcmNwb3J0ID0gUG9ydCBvbiB0aGUgc291cmNlIGJsb2NrIHRvIGNvbm5lY3QKIyAgICAg
ICAgIC0gZHN0YmxrICA9IERlc3RpbmF0aW9uIGJsb2NrIHRvIGNvbm5lY3QKIyAgICAgICAgIC0g
ZHN0cG9ydCA9IFBvcnQgb24gdGhlIGRlc3RpbmF0aW9uIGJsb2NrIHRvIGNvbm5lY3QKY29ubmVj
dGlvbnM6CiAgLSB7IHNyY2JsazogZXAwLCAgICBzcmNwb3J0OiBvdXQwLCAgZHN0YmxrOiByZXBs
YXkwLCBkc3Rwb3J0OiBpbl8wIH0KICAtIHsgc3JjYmxrOiBlcDEsICAgIHNyY3BvcnQ6IG91dDAs
ICBkc3RibGs6IHJlcGxheTAsIGRzdHBvcnQ6IGluXzEgfQogIC0geyBzcmNibGs6IHJlcGxheTAs
ICAgIHNyY3BvcnQ6IG91dF8wLCAgZHN0YmxrOiByYWRpbzAsIGRzdHBvcnQ6IGluXzAgfQogIC0g
eyBzcmNibGs6IHJlcGxheTAsICAgIHNyY3BvcnQ6IG91dF8xLCAgZHN0YmxrOiByYWRpbzAsIGRz
dHBvcnQ6IGluXzEgfQogIC0geyBzcmNibGs6IHJhZGlvMCwgc3JjcG9ydDogb3V0XzAsIGRzdGJs
azogZXAwLCAgICBkc3Rwb3J0OiBpbjAgIH0KICAtIHsgc3JjYmxrOiByYWRpbzAsIHNyY3BvcnQ6
IG91dF8xLCBkc3RibGs6IGVwMSwgICAgZHN0cG9ydDogaW4wICB9CiAgLSB7IHNyY2JsazogcmFk
aW8wLCBzcmNwb3J0OiBjdHJsX3BvcnQsIGRzdGJsazogX2RldmljZV8sIGRzdHBvcnQ6IGN0cmxw
b3J0X3JhZGlvIH0KICAtIHsgc3JjYmxrOiByZXBsYXkwLCBzcmNwb3J0OiBheGlfcmFtLCBkc3Ri
bGs6IF9kZXZpY2VfLCBkc3Rwb3J0OiBkcmFtIH0KICAtIHsgc3JjYmxrOiBfZGV2aWNlXywgc3Jj
cG9ydDogeDMwMF9yYWRpbywgZHN0YmxrOiByYWRpbzAsIGRzdHBvcnQ6IHgzMDBfcmFkaW8gfQog
IC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiB0aW1lX2tlZXBlciwgZHN0YmxrOiByYWRp
bzAsIGRzdHBvcnQ6IHRpbWVfa2VlcGVyIH0KCiMgQSBsaXN0IG9mIGFsbCBjbG9jayBkb21haW4g
Y29ubmVjdGlvbnMgaW4gZGVzaWduCiMgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCiMgRm9ybWF0OiBBIGxpc3Qgb2YgY29ubmVjdGlvbiBtYXBzIChsaXN0
IG9mIGtleS12YWx1ZSBwYWlycykgd2l0aCB0aGUgZm9sbG93aW5nIGtleXMKIyAgICAgICAgIC0g
c3JjYmxrICA9IFNvdXJjZSBibG9jayB0byBjb25uZWN0IChBbHdheXMgIl9kZXZpY2UiXykKIyAg
ICAgICAgIC0gc3JjcG9ydCA9IENsb2NrIGRvbWFpbiBvbiB0aGUgc291cmNlIGJsb2NrIHRvIGNv
bm5lY3QKIyAgICAgICAgIC0gZHN0YmxrICA9IERlc3RpbmF0aW9uIGJsb2NrIHRvIGNvbm5lY3QK
IyAgICAgICAgIC0gZHN0cG9ydCA9IENsb2NrIGRvbWFpbiBvbiB0aGUgZGVzdGluYXRpb24gYmxv
Y2sgdG8gY29ubmVjdApjbGtfZG9tYWluczoKICAtIHsgc3JjYmxrOiBfZGV2aWNlXywgc3JjcG9y
dDogcmFkaW8sIGRzdGJsazogcmFkaW8wLCBkc3Rwb3J0OiByYWRpbyB9CiAgLSB7IHNyY2Jsazog
X2RldmljZV8sIHNyY3BvcnQ6IGRyYW0sIGRzdGJsazogcmVwbGF5MCwgZHN0cG9ydDogbWVtIH0K
--00000000000079571f060cde3573
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--00000000000079571f060cde3573--
