Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9DC39693E
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 23:20:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D9AF13839D4
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 17:20:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ffs6hMmQ";
	dkim-atps=neutral
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 69C84383F4F
	for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 17:19:19 -0400 (EDT)
Received: by mail-qv1-f45.google.com with SMTP id 5so6161279qvk.0
        for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 14:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=fuNAyInjeV/0Kc9mD1pI7Lb7EfXdjStr13VlhkiQU1s=;
        b=Ffs6hMmQAR8cr1mWodK5Ooyj8S9ijJL2Zo06ZfnibEgdKVPDiB3F79P1VnX0zkqeB6
         jqIQ+WcmWw5vloyaXfUx/YSRr23k7/L6g+gugkw/w5+pJbUMvK+tvi2ts42p2E17r56W
         f1FRGu/rLjNQ2t8elkGLth7i1S8OBlHsOC/Ps9NKrU501OzSKhu8mIzgdHRyXLWBQ4cf
         ulAfveX5xX2QT9xvMp+agHBhkGCHgUVF49VGRDYKzL2tgdWBWaITnyNpiwImSbC2huD0
         lv3qK70jWwgdmvRg2rFcHDMytTFgY0SwLGS4NtN1EhPXdRLHZRBBdhefvrzDg9jKQO0O
         QKZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=fuNAyInjeV/0Kc9mD1pI7Lb7EfXdjStr13VlhkiQU1s=;
        b=CdsYt8VI3jR2gqWLxd5JffvNswkgbyUsM5cPMVlzDa3f92WZZUxe7HFeHMSLBSVfLF
         JJ64spbVZy9ucMSQNlhJgDeis3PPBPO10pv6+lpFAcY9hAosqgKSKYQ96gcpyw3+W8pw
         B4FqrWjKfESiF+As4yQJi29+hdT9HJB/COuIJrGbUKhHznTwrTFQg/vbJP4dwvPFpToj
         IP/xDws8s3Mpkcwl7SG3Pxu+duNsSfsgICSe/QMunSwBFY8piJoNmggmRonfoKdv6Zkb
         i8g/hfv1psy06GOn4J49x7UT7pH5pVtIcU2lJ0norD8YpUXd/VA711Smz1TG8ttREdJP
         Gg5Q==
X-Gm-Message-State: AOAM530Ez3V60Ypvy93A1At85iBPYsWhiUi9nSfQpeoEBLUIF0j5pTd2
	Z78eqMVMjrfRw+k2T/lICNQ4lqChx0A=
X-Google-Smtp-Source: ABdhPJyshhGItsKO64zLSiE8hc0AHlC/ALZnzCebvCbro63sJZ2IJAMHUwOfjGZ/+jHIozj9GX0gVA==
X-Received: by 2002:ad4:536a:: with SMTP id e10mr18818609qvv.9.1622495958755;
        Mon, 31 May 2021 14:19:18 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id b2sm5170386qto.89.2021.05.31.14.19.18
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 14:19:18 -0700 (PDT)
Message-ID: <60B552D5.1060902@gmail.com>
Date: Mon, 31 May 2021 17:19:17 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Skyvalakis Konstantinos <kskyvalakis@isc.tuc.gr>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <1622487334616.15025@isc.tuc.gr>,<3C39A314-B292-4CEF-BF8E-7212C1687F43@gmail.com> <1622488640848.60454@isc.tuc.gr>
In-Reply-To: <1622488640848.60454@isc.tuc.gr>
Message-ID-Hash: U7IIXXGS2U6TQ2WVSZECPKYVTDBQUZT3
X-Message-ID-Hash: U7IIXXGS2U6TQ2WVSZECPKYVTDBQUZT3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U7IIXXGS2U6TQ2WVSZECPKYVTDBQUZT3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6747332017469326114=="

This is a multi-part message in MIME format.
--===============6747332017469326114==
Content-Type: multipart/alternative;
 boundary="------------060903050304040300090200"

This is a multi-part message in MIME format.
--------------060903050304040300090200
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 05/31/2021 03:17 PM, Skyvalakis Konstantinos wrote:
>
> Ok, I did the upgrade and all the necessary rebuilds.
>
>
> The error persists this time however with more information.
>
>
> RuntimeError: RuntimeError: fifo ctrl timed out looking for acks
> [ERROR] [UHD] Exception caught in safe-call.
>   in virtual usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl()
>   at /home/telecomg5/repos/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl.cpp:=
54
> this->peek32(0); -> RuntimeError: fifo ctrl timed out looking for acks=E2=
=80=8B
>
>
>
Could you share with us the complete output of your run--ALL the messages=
?

Also when replying, using "reply all" so that the mailing-list gets=20
copied as well.



--------------060903050304040300090200
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3DUTF-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 05/31/2021 03:17 PM, Skyvalakis
      Konstantinos wrote:<br>
    </div>
    <blockquote cite=3D"mid:1622488640848.60454@isc.tuc.gr" type=3D"cite"=
>
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none"><!-- p { margin-top=
: 0px; margin-bottom: 0px; }--></style>
      <p>Ok, I did the upgrade and all the necessary rebuilds.<br>
      </p>
      <p><br>
      </p>
      <p>The error persists this time however with more information.<br>
      </p>
      <p><br>
      </p>
      <div>RuntimeError: RuntimeError: fifo ctrl timed out looking for
        acks</div>
      <div>[ERROR] [UHD] Exception caught in safe-call.</div>
      <div>=C2=A0 in virtual usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl(=
)</div>
      <div>=C2=A0 at
        /home/telecomg5/repos/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl.cpp=
:54</div>
      <div>this-&gt;peek32(0); -&gt; RuntimeError: fifo ctrl timed out
        looking for acks=E2=80=8B<br>
      </div>
      <p><br>
      </p>
      <br>
    </blockquote>
    Could you share with us the complete output of your run--ALL the
    messages?<br>
    <br>
    Also when replying, using "reply all" so that the mailing-list gets
    copied as well.<br>
    <br>
    <br>
  </body>
</html>

--------------060903050304040300090200--

--===============6747332017469326114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6747332017469326114==--
