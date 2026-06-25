Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cUAQDPdAPWpJ0QgAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jun 2026 16:53:43 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B856C6D99
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jun 2026 16:53:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=CXtOnw9P;
	dkim=fail ("body hash did not verify") header.d=ettus-com.20251104.gappssmtp.com header.s=20251104 header.b=XNvMnDRm;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 881F9385DE5
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jun 2026 10:53:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1782399221; bh=IzVxDj8G+BTN6HGiyEOZ88znvaxhIQJi0WdD7HS3CrE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=CXtOnw9PqUCrOWI+57v1YZYeZ7qGTGuYg1X2nH1YwEr4PAzILe/6lpTzUj4U5KTvo
	 2JxHyrU9rIc2y0PuSQ+O5BjA+MCfYAj0Wumgm/dn/cjI2BhMgfFUhdW8wpu402Toda
	 FsxUQyJvfGc/NCQdK2C/Qr2+XbEFbm/lg8c0xoKeJhDBclfRBxsCHDmaSxNAehhPn5
	 GBSIIlY+uz1qcalsfOANSgy14CL71avgDGB4e1u28ND1J6YSVru7iHS0FP/IyNvShA
	 hLVyy08pWwdusYfTMdYQ35GpkNdnUbsvdj61VsFtqsJoENpspGn3c34KKBTu+cOxMg
	 c6+N6GYHox3Hg==
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 10CAD380C58
	for <usrp-users@lists.ettus.com>; Thu, 25 Jun 2026 10:52:36 -0400 (EDT)
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-662c360aa73so2513103d50.3
        for <usrp-users@lists.ettus.com>; Thu, 25 Jun 2026 07:52:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782399155; cv=none;
        d=google.com; s=arc-20260327;
        b=bYBrDTsEFJb/F5BR5CdU6QnybE+8deOXSrh09m1koIWnE5KTj23+ssNorGHDBoGVPa
         WsvH0tE14rsG6jnQ5psfjIgFrD2JSvX/pw9PwMNJc0Bf7ONyK5J81sFsfRe6mXd0Vosj
         Ijic2N5yIWUenVOaC8rUZYRmAuSerGZe37kEmgaxfWgTiqkhERE1fzrSURtfecjtn9UB
         nU6/io6t8MQjUxtkAIQ/sy9UOMXwO+YN2N8bWfE4pMU9YCSxaik1+SybAhddKVKVBvoc
         zZmLmdfEA7scPH5xfb06hPgnThtg8vFeh2rK7oMjgn0UjDiKSgKYimAPcXSjjY3TAKr+
         KYlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wW2m0PPRaQcOLZ72G2kSJRpakJxxZvAzt46uvRtoggs=;
        fh=T7SwKhDtykQ3zNA+XLeVD6OnVlD8yh1Xq+EKyfxhbq4=;
        b=DlNOZTsRvjWscFtjcY2DlYA34UOoLbbKQRofa2sNOldoKgmz1580dfHjc44JcTmzEm
         V6JFNic+xyfEgkuWI3DcRix74tdggYAZDRM4HABzNWZLaIWURNOsOVDPVhc0TTsBFIcB
         ofHkTYCgsWuxSGu66QwaSZ9txxLOxVo0tGcK6e+ImJYpw26GZ3CA81vjud+wSNPH5JeJ
         a6JAref/CU7oZBwIojDr0k55kxpZL206gxygM2q/LRtWFYOVLponeStVwTK+528PdNsN
         EYtXr2+6evKpxHZM5mWASPPBALzw4aRzRkYw1zUgPHIGdewdKny+icZbzByD2CfV70yI
         SAGA==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20251104.gappssmtp.com; s=20251104; t=1782399155; x=1783003955; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wW2m0PPRaQcOLZ72G2kSJRpakJxxZvAzt46uvRtoggs=;
        b=XNvMnDRmbO4kBHosnuDViaCq4vzOaTLweU3rPoiWKSDByV4UJ56JYNKpScalB45MFW
         S7U6uhLiKIFgndSwG7Td6gGvnBPkjv6F6qBwC3fzvWLDbFSkE3njBv4brUv5f96glmja
         /ZWC7wMGFJDpmrrYE43wtu5e+gAYiINmDoJEPiP0Oz2ktVtM43eDvOiEG2D66Mwqp/Tk
         Aog6ZhvQVDc4s4Sp7gGQVK9eeCoNkrXBS2nBMXGb8nVPfRLaV4Ni3UNb9TVATm4iRogA
         DtagrDAqRbORzi+toeq8xQRVg1YCLXcVcqNVewy+8uuda86ZW1R/d4+gYmOSdZorN78F
         VTcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782399155; x=1783003955;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wW2m0PPRaQcOLZ72G2kSJRpakJxxZvAzt46uvRtoggs=;
        b=OxfERqMgsMVhGEuqVd//L+qr3jOBC2lnsfZxbo1c1fQ50OGeuvu6W2L9B4bMSGj/kA
         XqWiMrsE3L4TT14aInRZuEUjSHtHTk/ZCvZypDZRzGP0+LJT/pPcDG1QLPPuF4J1LbtR
         /y7k3OTUB6h8dzoscsZTkCIs06255+legzdFhdkZtTjo8VC2UDwT85TBsUyMHT4KWSRW
         ApjxjzWiujIoXh9PIOJlOe/uIWljlCTojeTf59qamejY+4tR7P7x1JsuhlrzG258WqYz
         a1kPF6Mk4cHulpioW9p6LUsbZtOlG6nm3hRTDeyOybOn4ajZuP4lcSixPHQkG6m73LxT
         m98A==
X-Gm-Message-State: AOJu0YzODDuSe3zvyZoz/u00p+yN8tPC9Vb3eKWBN8aZjV/oJDgq8q0h
	UdEJsD3Kb1tpkNXz49Fd1mcUPEn7Yx0C59+27/CpasYycW2don1xU5QEW1NJuRe1q486UG/rwtR
	C+XcpQrKaYJAN81iTEmrN8aCOH71Tg1SByEfxd2s8ur6UbMwdL61ERLDNMQ==
X-Gm-Gg: AfdE7ckoWYASIN0E8gPbDyHPsz5ozpSj8a/976/UqICWWxcwUSBYIWAfzaH2Cj2T3ma
	mY9bnWPIbUTg1s+rWoKQm6GfPZDyYCZUeOCuT4B4/V6m9XV6x60n3vB5igqxDybQYSI/iDtl2TW
	G+zHmXBBu65u1gh3CpqWGHOKj5aWdTSQqo+ef2V+F/s95Z3VBHbRWnbzCESdbEz8LGnV+6f3EdV
	edZCn0ox3/5XstAvNmC7vm7K+kVYMnc1JCq3Z/Wf4i8EQA1C9DyBX1LzqDuuU7cv9eugT0afl9J
	aOQ=
X-Received: by 2002:a05:690e:4506:20b0:660:77f0:2cd3 with SMTP id
 956f58d0204a3-66487fe825cmr1654381d50.45.1782399155000; Thu, 25 Jun 2026
 07:52:35 -0700 (PDT)
MIME-Version: 1.0
References: <PH1P110MB161782DC549A9384EA4DD9B9D9E4A@PH1P110MB1617.NAMP110.PROD.OUTLOOK.COM>
 <7bbb41bc-6be0-424f-8627-94e4a7d46ac3@gmail.com>
In-Reply-To: <7bbb41bc-6be0-424f-8627-94e4a7d46ac3@gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 25 Jun 2026 09:52:18 -0500
X-Gm-Features: AVVi8Cff1YrJVLb29Q8LCHKUSDLT2IvlagJrLpKD7KAd47XJ7GA5LcNh4dbetr8
Message-ID: <CAFche=iqkAbrpdwO0D-mOPx2_a_Uf6aqHQRnezjPMWgMo_mT9g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: RXFUJYETLHSXGIV6P4VLK6MALAMTWS6V
X-Message-ID-Hash: RXFUJYETLHSXGIV6P4VLK6MALAMTWS6V
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: FPGA Data Format
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RXFUJYETLHSXGIV6P4VLK6MALAMTWS6V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8243414046505547536=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/related,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:patchvonbraun@gmail.com,m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:+,4:~,5:~,6:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com];
	DMARC_NA(0.00)[ettus.com];
	FORGED_SENDER(0.00)[wade.fife@ettus.com,usrp-users-bounces@lists.ettus.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_MIXED(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wade.fife@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[ettus-com.20251104.gappssmtp.com:s=20251104];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20251104.gappssmtp.com:-];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mm2.emwd.com:rdns,mm2.emwd.com:helo,mail.gmail.com:mid,emwd.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 89B856C6D99

--===============8243414046505547536==
Content-Type: multipart/related; boundary="0000000000007b9b7f065515242d"

--0000000000007b9b7f065515242d
Content-Type: multipart/alternative; boundary="0000000000007b9b7f065515242c"

--0000000000007b9b7f065515242c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Some code interprets sc16 components as normalized values having 15
fractional bits and 1 sign bit, giving them the range [-1.0, 1.0), but they
are also often thought of as just twos complement in the range [-32768,
32767]. Mathematically, either interpretation works as long as you remain
consistent. It mostly only matters when you start mixing or converting
between types. For example, when UHD converts sc16 to fc32, it puts the
resulting values in the range [-1.0, 1.0) of the float.

Wade

On Wed, Jun 17, 2026 at 2:21=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 2026-06-17 14:30, Barnard, Michael T wrote:
>
> I=E2=80=99m trying to get a handle on what the exact data format used in =
the FPGA
> is. I understand that each I and Q sample is 16 bits long but how many of
> those bits are fractional and how many are integer? The documentation onl=
y
> states that the samples are SC16 but doesn=E2=80=99t specify anything bey=
ond that.
>
>
>
> Michael Barnard
>
> TL Computer Engineer, Scalable Computing Group
>
> Applied Sensing Division
>
>
>
> 300 College Park, Dayton, OH 45469-0031
>
> O:(937) 713-4271 | C:(440) 622-6486 | udri.udayton.edu
>
> [image: 1621527942842]
>
>
> ------------------------------
> The information contained in this e-mail and any attachments from UDRI ma=
y
> contain confidential and/or proprietary information, and is intended only
> for the named recipient to whom it was originally addressed. If you are n=
ot
> the intended recipient, any disclosure, distribution, or copying of this
> e-mail or its attachments is strictly prohibited. If you have received th=
is
> e-mail in error, please notify the sender immediately by return e-mail an=
d
> permanently delete the e-mail and any attachments.
>
> UDRI Proprietary - Unprotected
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> They are twos-complement integers.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007b9b7f065515242c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Some code interprets sc16 components as normalized va=
lues having 15 fractional bits and 1 sign bit, giving them the=C2=A0range [=
-1.0, 1.0), but they are also often thought of as just twos complement in t=
he range [-32768, 32767]. Mathematically, either=C2=A0interpretation works =
as long as you remain consistent. It mostly only matters when you start mix=
ing or converting between types. For example, when UHD converts sc16 to fc3=
2, it puts the resulting values in the range=C2=A0[-1.0, 1.0) of the float.=
</div><div><br></div><div>Wade</div></div><br><div class=3D"gmail_quote gma=
il_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 17, 2=
026 at 2:21=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@=
gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 2026-06-17 14:30, Barnard, Michael T
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal">I=E2=80=99m trying to get a handle on what t=
he
          exact data format used in the FPGA is. I understand that each
          I and Q sample is 16 bits long but how many of those bits are
          fractional and how many are integer? The documentation only
          states that the samples are SC16 but doesn=E2=80=99t specify anyt=
hing
          beyond that.<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Michael Barnard<u></u><u></u></p>
        <p class=3D"MsoNormal">TL Computer Engineer, Scalable Computing
          Group<u></u><u></u></p>
        <p class=3D"MsoNormal">Applied Sensing Division<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">300 College Park, Dayton, OH 45469-0031<u></=
u><u></u></p>
        <p class=3D"MsoNormal">O:(937) 713-4271 | C:(440) 622-6486 |
          <a href=3D"http://udri.udayton.edu" target=3D"_blank">udri.udayto=
n.edu</a><u></u><u></u></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&q=
uot;Calibri&quot;,sans-serif;color:rgb(117,123,128)"><img width=3D"216" hei=
ght=3D"47" style=3D"width: 2.25in; height: 0.4895in;" id=3D"m_1950819580702=
929586Picture_x0020_1" src=3D"cid:ii_19eff2e3dc64cff311" alt=3D"16215279428=
42"></span><u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
      </div>
      <div style=3D"font-size:8pt;font-family:&quot;Calibri&quot;,sans-seri=
f">
        <hr>
        The information contained in this e-mail and any attachments
        from UDRI may contain confidential and/or proprietary
        information, and is intended only for the named recipient to
        whom it was originally addressed. If you are not the intended
        recipient, any disclosure, distribution, or copying of this
        e-mail or its attachments is strictly prohibited. If you have
        received this e-mail in error, please notify the sender
        immediately by return e-mail and permanently delete the e-mail
        and any attachments.</div>
      <br>
      <p style=3D"font-family:Calibri;font-size:8pt;color:rgb(0,0,0);margin=
:5pt;font-style:normal;font-weight:normal;text-decoration:none" align=3D"Le=
ft">
        UDRI Proprietary - Unprotected<br>
      </p>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    They are twos-complement integers.<br>
    <br>
    <br>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007b9b7f065515242c--

--0000000000007b9b7f065515242d
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_19eff2e3dc64cff311>
X-Attachment-Id: ii_19eff2e3dc64cff311

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
--0000000000007b9b7f065515242d--

--===============8243414046505547536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8243414046505547536==--
