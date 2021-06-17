Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7803AA829
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jun 2021 02:34:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 688F33844AC
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 20:34:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IMomkKxW";
	dkim-atps=neutral
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 2A6C13843DB
	for <USRP-users@lists.ettus.com>; Wed, 16 Jun 2021 20:34:13 -0400 (EDT)
Received: by mail-qt1-f171.google.com with SMTP id e3so3464995qte.0
        for <USRP-users@lists.ettus.com>; Wed, 16 Jun 2021 17:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=KBI8UEx3LNPUM0ljioWlqyT+3/N83rmdIyOkfzUAI3Y=;
        b=IMomkKxWatGDAMjlE45GWIPhmuZfQ1NXsYYlZMOmO8in9PHUhSQLr7KGxk6+7gzWlO
         oLNINH6QgdnXeNw2wiJxR8GUxwt8KOuQY+HOnHL7kraHZUWB7HZQJzH1Hg8M1rJTxNz4
         RZtoDAZCEuTq1GUNp+bO+QBirVs5ak6Tlxeojv9qvy6mDlQRHpWhCjLf24wVBLiOj7rA
         tQbFq4HXdFYO2/Es7Dk4l0ULJtaqtJbSTy+i6uEV9Rn3lWIhbEo8WVXWRkPmfc3I0S5i
         PF1lgDWtRqO/NwtmF5IROSlY2IeByjoBEouFR437yTehK2lv2ON8bKJBwjBhFuYHnGlk
         WXXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=KBI8UEx3LNPUM0ljioWlqyT+3/N83rmdIyOkfzUAI3Y=;
        b=jVwPN8RxYvEjgjMAjZQVN5puUudkkifHdUPFLL/ISE8EC8NErIv6Y07LDlCqbi6/xc
         n6k9XTNgBCkRwpP3seaFEi2ZxS+i0Q4Ekw/5gbDShnWEFqwJAtawj013CJnJSlAdyjmd
         qLw569IvMo6Thhtv8/Q+n0UwyBIMqOhZ0LYx/sfc+/9t8CaFDU4QICNU6s70ddMYIeQx
         sga0xVflvXX0w6WItMq8opOaFl5wuZVMYr82VGXJufgw3CRTWT+Y2m7kTW1x9HFT4Xza
         LVVgY33+NKuddMhsq+X8uG0eiaFZi77gs3bJ0BWCAdcF155uEEQpT3j5jAi10rJFISi9
         Xe0Q==
X-Gm-Message-State: AOAM532dDkFa/DPDnunwMcBn2T329BByk9/jXCo47s2gZtDPgc4gRy+v
	WrvZjzN2sihfOy5M4laFPx4=
X-Google-Smtp-Source: ABdhPJzUUU+GtjpS9dOrrTl89BjLhIWqW85fTctM9u0XW/KW3jedIO99yfZHGTPuCFLR7vNq3N/ilA==
X-Received: by 2002:ac8:7768:: with SMTP id h8mr2463092qtu.235.1623890052742;
        Wed, 16 Jun 2021 17:34:12 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id k1sm2337862qtu.84.2021.06.16.17.34.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jun 2021 17:34:11 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 16 Jun 2021 20:34:10 -0400
Message-Id: <F5B2665E-A971-4E4E-9979-90250859F723@gmail.com>
References: <8ffc4ff2-ec88-4b62-2fbe-36691928bf86@virginia.edu>
In-Reply-To: <8ffc4ff2-ec88-4b62-2fbe-36691928bf86@virginia.edu>
To: Dustin Widmann <dw2zq@virginia.edu>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: 2QZGGM7E3TM4JKWO6HEVJ2DK4Z4ZML6T
X-Message-ID-Hash: 2QZGGM7E3TM4JKWO6HEVJ2DK4Z4ZML6T
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: is there a UHD v4.0.0.0 for Ubuntu 20.04 LTS?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2QZGGM7E3TM4JKWO6HEVJ2DK4Z4ZML6T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1846149342926801866=="


--===============1846149342926801866==
Content-Type: multipart/alternative; boundary=Apple-Mail-F3353425-5223-4E8E-AB16-22C699D69B18
Content-Transfer-Encoding: 7bit


--Apple-Mail-F3353425-5223-4E8E-AB16-22C699D69B18
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I have repeatedly done UHD source builds on Odroid SBCs in the past, and the=
 wait time is not horrific.=20

Sent from my iPhone

> On Jun 16, 2021, at 6:53 PM, Dustin Widmann <dw2zq@virginia.edu> wrote:
>=20
> =EF=BB=BF
> I would argue against trying to set up cross-compilation unless you want t=
o cross compile big things often.=20
>=20
> Simplest, most straightforward way to do it is to just build it on the dev=
ice you need to have it on. It takes patience, but unless the SBC in questio=
n is extremely resource constrained (particularly, if it has less than 1GB o=
f RAM), it should be pretty doable. If it is light on resources, I recommend=
 building with only one thread (make -j1), and also adding a couple GB of sw=
ap space. It may be slow, but so long as it doesn't fail because you run out=
 of memory you'll be okay.=20
>=20
> Another twist on that idea is to do a generic build on a sufficiently simi=
lar (same generation of ARM, same version of OS), but more powerful, ARM SBC=
, tar the results and copy it over.=20
>=20
> Those other options use the same workflow as any native build, so are pret=
ty easy. If you're set on trying to do it with cross compilation, there are r=
eady-made cross compilers available like the ones provided by Linaro, or you=
 could roll your own using a tool like crosstool-ng. I think there are some i=
n the ubuntu repos also. You'll need to tweak your usual flow a little bit t=
hough with regards to doing cross compilation. It will vary a bit based on w=
hat build system the projects in question are using also ; UHD uses cmake, b=
ut if you need to build other things too it's something to keep in mind. The=
 tricky part is that it still needs to link against the same version of libr=
aries on the device, so that will need to be available when building it. For=
 that, I would recommend using sshfs to mount the filesystem of the device, b=
ecause the best way to target the device exactly is to just use what's alrea=
dy on the device. As per what commands to run to make that happen, there isn=
't really something that's one-size-fits-all, but something like this might h=
elp give you a start: https://www.96boards.org/documentation/guides/crosscom=
pile/commandline.html  In any case, I think you can see why I'd say that it s=
houldn't be your first option unless you really need it.=20
>=20
> Dustin
> On 6/16/21 2:16 PM, paradis@kwesst.com wrote:
>> alternately, is there a way to cross-compile the UHD v4.0.0.0 libraries o=
n my x86 machine but target the ARM processor on my SBC?
>>=20
>>=20
>>=20
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> <OpenPGP_0x85706BEA425306B5.asc>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-F3353425-5223-4E8E-AB16-22C699D69B18
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I have repeatedly done UHD source builds on=
 Odroid SBCs in the past, and the wait time is not horrific.&nbsp;<br><br><d=
iv dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote typ=
e=3D"cite">On Jun 16, 2021, at 6:53 PM, Dustin Widmann &lt;dw2zq@virginia.ed=
u&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D=
"ltr">=EF=BB=BF
 =20
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
 =20
 =20
    <p>I would argue against trying to set up cross-compilation unless
      you want to cross compile big things often. <br>
    </p>
    <p>Simplest, most straightforward way to do it is to just build it
      on the device you need to have it on. It takes patience, but
      unless the SBC in question is extremely resource constrained
      (particularly, if it has less than 1GB of RAM), it should be
      pretty doable. If it is light on resources, I recommend building
      with only one thread (make -j1), and also adding a couple GB of
      swap space.&nbsp;It may be slow, but so long as it doesn't fail becaus=
e
      you run out of memory you'll be okay. <br>
    </p>
    <p>Another twist on that idea is to do a generic build on a
      sufficiently similar (same generation of ARM, same version of OS),
      but more powerful, ARM SBC, tar the results and copy it over. <br>
    </p>
    <p>Those other options use the same workflow as any native build, so
      are pretty easy. If you're set on trying to do it with cross
      compilation, there are ready-made cross compilers available like
      the ones provided by Linaro, or you could roll your own using a
      tool like crosstool-ng. I think there are some in the ubuntu repos
      also. You'll need to tweak your usual flow a little bit though
      with regards to doing cross compilation. It will vary a bit based
      on what build system the projects in question are using also ; UHD
      uses cmake, but if you need to build other things too it's
      something to keep in mind. The tricky part is that it still needs
      to link against the same version of libraries on the device, so
      that will need to be available when building it. For that, I would
      recommend using sshfs to mount the filesystem of the device,
      because the best way to target the device exactly is to just use
      what's already on the device. As per what commands to run to make
      that happen, there isn't really something that's
      one-size-fits-all, but something like this might help give you a
      start:
      <a class=3D"moz-txt-link-freetext" href=3D"https://www.96boards.org/do=
cumentation/guides/crosscompile/commandline.html">https://www.96boards.org/d=
ocumentation/guides/crosscompile/commandline.html</a>&nbsp;
      In any case, I think you can see why I'd say that it shouldn't be
      your first option unless you really need it. <br>
    </p>
    Dustin
    <div class=3D"moz-cite-prefix">On 6/16/21 2:16 PM, <a class=3D"moz-txt-l=
ink-abbreviated" href=3D"mailto:paradis@kwesst.com">paradis@kwesst.com</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:ennj27wwYFEWXXNJu1B7vkFGp1uIiIFwxJ=
A9U6LBKNY@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html;
        charset=3Dwindows-1252">
      <p>alternately, is there a way to cross-compile the UHD v4.0.0.0
        libraries on my x86 machine but target the ARM processor on my
        SBC?</p>
      <p><br>
      </p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">_______________________________=
________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"mai=
lto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" href=3D=
"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</=
a>
</pre>
    </blockquote>
 =20

<div>&lt;OpenPGP_0x85706BEA425306B5.asc&gt;</div><span>_____________________=
__________________________</span><br><span>USRP-users mailing list -- usrp-u=
sers@lists.ettus.com</span><br><span>To unsubscribe send an email to usrp-us=
ers-leave@lists.ettus.com</span><br></div></blockquote></body></html>=

--Apple-Mail-F3353425-5223-4E8E-AB16-22C699D69B18--

--===============1846149342926801866==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1846149342926801866==--
