Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1E62DBBDB
	for <lists+usrp-users@lfdr.de>; Wed, 16 Dec 2020 08:12:02 +0100 (CET)
Received: from [::1] (port=47262 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kpQyb-0007Ur-Q9; Wed, 16 Dec 2020 02:11:57 -0500
Received: from mail-vk1-f169.google.com ([209.85.221.169]:45342)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kpQyX-0007Py-H6
 for usrp-users@lists.ettus.com; Wed, 16 Dec 2020 02:11:53 -0500
Received: by mail-vk1-f169.google.com with SMTP id f71so5429250vka.12
 for <usrp-users@lists.ettus.com>; Tue, 15 Dec 2020 23:11:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3PKchsnbRMHylFJcG+c7USJWMdpKs1nkq7Cva1bPBLE=;
 b=C6tJb7BDSysF5YqQIE9hEMvWnchh+8cEmPx4ZEws7uaVjmJ2LlPi9YmkAg20SuQAWj
 FSk2XMPvUdT4uxPUqQl10dH21iI3iu6aTdLC/v3ZPIo/vpw1ObdVae6yCluXL0u9z63F
 V/1nBF0Vf9B1mMskboq1WM3tYIuHCUBqhOrPdoSXi9W7SNy3rbiY5DbJYhlLoK6f1tEs
 8TLhi8KaNN2WjKTM2heH1DnnXDXG93B+NIZJqxfvOFVaBY6CdmG19nyNQLKBY0HgT9ar
 pED9VzDH2SbX1gY4EpCZhuDUZ/Uo3KzjdKbJMxYpWzJEvMnKH2n8iPmZlDbia+6unjPq
 CeJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3PKchsnbRMHylFJcG+c7USJWMdpKs1nkq7Cva1bPBLE=;
 b=ZJJj+zmFN3xjIAq3Y59hyTO2yniZncIkpImoIfB8y4JyjaOzacjrdKgY387SMeGGsM
 ug8hWyfVjXU1+xlPyGJyOdo5Jib9OqX4y55im74aUvicz6fktc41grC100YjUVOoaZh/
 wdFHrLkTEgdfubrnLYemxpepcgxojhZ/EDcmm+hIpFC/hhag7fYZ7S/msz7KtBFVWyFo
 giDqq5lYKtu2sI1JgaB4XCeLEzq95KepMDcv81V5v2hbph9yTCSr+a/fByADB+EC617j
 87OdtUoACH1O5OkZ0Du66gpcI1OA+o8KavkXicxCEQc76WwzNsmPh/5dU1tQopgCMx3q
 Q0Yg==
X-Gm-Message-State: AOAM530lsmr2AGSZ5eXfP+8vOzy4j5cSUGVddAwA5DC8utx0uuO+y3Bt
 pXBkkvYUBivDxwnZNUANdHyFmKgW5qdMw/Z9/dLdruNC
X-Google-Smtp-Source: ABdhPJxHF0sBmpIRaQyoIwCOCEANEOMuihZPCgmpTZ9kloVtn0+qr/t0gBZv/2LQvMITUVVZwd098epAsLFL5jGtuhE=
X-Received: by 2002:a1f:2ecd:: with SMTP id u196mr32282391vku.19.1608102672867; 
 Tue, 15 Dec 2020 23:11:12 -0800 (PST)
MIME-Version: 1.0
References: <CAGJu-nZvZ4S41VGUBC5EkfU6tHKSeNEuZM-R=EaAFt9m9b98BA@mail.gmail.com>
In-Reply-To: <CAGJu-nZvZ4S41VGUBC5EkfU6tHKSeNEuZM-R=EaAFt9m9b98BA@mail.gmail.com>
Date: Wed, 16 Dec 2020 02:10:36 -0500
Message-ID: <CAL7q81tuOf6nYBM0Z2n7bQJvuEyjwwCczr=7pyEf=UXPpzs8Tg@mail.gmail.com>
To: Robert Wilson <robertbenwilson0@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="0000000000009466bd05b68f9462"
Subject: Re: [USRP-users] RFNoC DUC arguments
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
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

--0000000000009466bd05b68f9462
Content-Type: multipart/alternative; boundary="0000000000009466ba05b68f9460"

--0000000000009466ba05b68f9460
Content-Type: text/plain; charset="UTF-8"

Hi Ben,

A fix for this that will be merged soon. For now, you can use this patch.

Jonathon

On Tue, Dec 15, 2020, 16:09 Robert Wilson via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello All,
>
> uhd 4.0
> gnuradio 3.8
> ubuntu 20.04
>
>
> When in GnuRadio and attaching a RFNoC Digital Upconverter to the  RFNoC
> Tx Radio Block we are receiving an error message:
>
> TypeError: make() takes 4 positional arguments but 5 were given
>
> Is this a known issue? How do you correct this?
>
> Thanks,
> Ben
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009466ba05b68f9460
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto">Hi Ben,<div dir=3D"auto"><br></div><div =
dir=3D"auto">A fix for this that will be merged soon. For now, you can use =
this patch.</div><div dir=3D"auto"><br></div><div>Jonathon</div></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tu=
e, Dec 15, 2020, 16:09 Robert Wilson via USRP-users &lt;<a href=3D"mailto:u=
srp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr">Hello All,<div><br></div><div>uhd 4.0</div><div>gnuradio 3.8</=
div><div>ubuntu 20.04</div><div><br></div><div><br>When in GnuRadio and att=
aching a RFNoC Digital Upconverter to the=C2=A0 RFNoC Tx Radio Block we are=
 receiving an error message:</div><div><br></div><div>TypeError: make() tak=
es 4 positional arguments but 5 were given</div><div><br></div><div>Is this=
 a known issue? How do you correct this?</div><div><br></div><div>Thanks,</=
div><div>Ben</div><div><br></div><div><br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000009466ba05b68f9460--
--0000000000009466bd05b68f9462
Content-Type: text/x-patch; charset="US-ASCII"; name="0001-grc-Fix-DUC-parameters.patch"
Content-Disposition: attachment; 
	filename="0001-grc-Fix-DUC-parameters.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kir2s51w0>
X-Attachment-Id: f_kir2s51w0

RnJvbSA4MTgwNjY2OWU5NGZiNDAxMjE4NDc0MWEyNDYxZjVjZWE2MzM3MzBjIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKb25hdGhvbiBQZW5kbHVtIDxqb25hdGhvbi5wZW5kbHVtQGV0
dHVzLmNvbT4KRGF0ZTogU3VuLCAxOCBPY3QgMjAyMCAyMTo1Njo1MCAtMDQwMApTdWJqZWN0OiBb
UEFUQ0hdIGdyYzogRml4IERVQyBwYXJhbWV0ZXJzCgotLS0KIGdyYy9ldHR1c19yZm5vY19kdWMu
YmxvY2sueW1sIHwgMSAtCiAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2dyYy9ldHR1c19yZm5vY19kdWMuYmxvY2sueW1sIGIvZ3JjL2V0dHVzX3Jmbm9jX2R1Yy5i
bG9jay55bWwKaW5kZXggNTM4MzkwMi4uYmY5NmE1YiAxMDA2NDQKLS0tIGEvZ3JjL2V0dHVzX3Jm
bm9jX2R1Yy5ibG9jay55bWwKKysrIGIvZ3JjL2V0dHVzX3Jmbm9jX2R1Yy5ibG9jay55bWwKQEAg
LTgsNyArOCw2IEBAIHRlbXBsYXRlczoKICAgbWFrZTogfC0KICAgICBldHR1cy5yZm5vY19kdWMo
CiAgICAgICAgIHNlbGYucmZub2NfZ3JhcGgsCi0gICAgICAgICR7bnVtX2NoYW5zfSwKICAgICAg
ICAgdWhkLmRldmljZV9hZGRyKCR7YmxvY2tfYXJnc30pLAogICAgICAgICAke2RldmljZV9zZWxl
Y3R9LAogICAgICAgICAke2luc3RhbmNlX2luZGV4fSkKLS0gCjIuMjUuMQoK
--0000000000009466bd05b68f9462
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--0000000000009466bd05b68f9462--

