Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8FE3B84FE
	for <lists+usrp-users@lfdr.de>; Wed, 30 Jun 2021 16:22:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C3EC384378
	for <lists+usrp-users@lfdr.de>; Wed, 30 Jun 2021 10:22:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="S57mL5qV";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 7489F383EA1
	for <usrp-users@lists.ettus.com>; Wed, 30 Jun 2021 10:21:11 -0400 (EDT)
Received: by mail-qk1-f170.google.com with SMTP id g4so2600007qkl.1
        for <usrp-users@lists.ettus.com>; Wed, 30 Jun 2021 07:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=H0xSg1HaRcJXmLSrGYB9LfnVIiONs8EfHAWA6NL8Ibs=;
        b=S57mL5qVqn0bac0yTG36oGtCtzps8y0yQYJPDu2em4WnDYYQYiAkocgLAaZe7DnVhT
         G5ZOIjh1tE1PmxVqZp1jrl0Lgy8AoSAvUgBi3owHoibEqVhacDGNBGxNfhr0igqKm4L/
         lE1tbwjLPu3AfWo+0W46oVRbVxx1552RID7ln/KzjMpLU0C27B2NgLUMbdKMs4ur+52l
         QLo9n+rcfN+Xdim41MoaYSDVGSnk3RCnzlj5D8kVYGhGkB3JsOE5Rjvk9dbXekAm+7wh
         CD8i3iOWzrltQK7d9Qur6vX0r0EWVkvzeQALVFUVUxUcyFfZsDezo9J1DBfJX6LPXcE/
         PtIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=H0xSg1HaRcJXmLSrGYB9LfnVIiONs8EfHAWA6NL8Ibs=;
        b=XbfcC1ZUt9gziIlryenPlR3xL3YhpfBGa5dq0GmIEzuZ0YuJ2i21ncgFuBQGlmrYII
         ZTfj/0iTfPsSvjcM4ni5hbZ9YslQ+MEJ+rhCTGr/ewmSw3JwUl39iact6ZVrZpbwARi0
         wcRhURCX3DKBNHWGGkmmmp6QShn/qwkpoCVXkRLgdgMQb9IYtp4lYPpeH2szfLpyiDHI
         Y/SFHgwME60akP1LYJH7sbiPOPrLqguZxpcR1hJWxjUGX6P7s2+FftslT2V2UZ1fPeD3
         jQBPgK4ef/QDOu4wmR76vWikkGGx/7X0zRpVuwPhDlTC85y1IYMxT5feYg4ZFUn4YfcT
         xfRg==
X-Gm-Message-State: AOAM532BQkagLjjmLpbWxnYQP/2bFBxBIJU9nqQzo45bIuFuhQwqnsmC
	mukLjBvRXyTVE3vnOEI/LEOEh5GJulxuSg==
X-Google-Smtp-Source: ABdhPJxMhXmRDKDUrJDLiSg5kWBNJooEask4lzuHk5N68JWSrTcPmei8HVZpqoVNCWfr7iaGFQkEhQ==
X-Received: by 2002:ae9:e911:: with SMTP id x17mr17422185qkf.371.1625062870697;
        Wed, 30 Jun 2021 07:21:10 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id v15sm11897659qkp.96.2021.06.30.07.21.09
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Jun 2021 07:21:10 -0700 (PDT)
Message-ID: <60DC7DD5.2050207@gmail.com>
Date: Wed, 30 Jun 2021 10:21:09 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <fqSlQGDX9FwVNSiyYcVDPBJSoI1zNt5YzmhHbgFX3E@lists.ettus.com>
In-Reply-To: <fqSlQGDX9FwVNSiyYcVDPBJSoI1zNt5YzmhHbgFX3E@lists.ettus.com>
Message-ID-Hash: GFKL4BIUE2YNQMEBJO77Y3C74GVMQL6H
X-Message-ID-Hash: GFKL4BIUE2YNQMEBJO77Y3C74GVMQL6H
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: available RFNoc blocks for UHD 4.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GFKL4BIUE2YNQMEBJO77Y3C74GVMQL6H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7192576510460827909=="

This is a multi-part message in MIME format.
--===============7192576510460827909==
Content-Type: multipart/alternative;
 boundary="------------080305080704090606090907"

This is a multi-part message in MIME format.
--------------080305080704090606090907
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 06/29/2021 06:01 PM, rblack@swri.org wrote:
>
> Request for a sanity check- I=92m in the process of building UHD 4-
>
> What In-tree ettus RFNoc blocks are actually currently available in=20
> UHD4? I=92m aware that it is less than the list of blocks in the Ettus=20
> =93knowlege base=94 note on RFnoc and UHD4, and for instance that Repla=
y=20
> and SIGGen are not available. What is the total list of in-tree blocks?
>
> RADIO, Filter, Window, DDC,DUC,FFT, FOSPHOR, IIRFilter I=92m pretty sur=
e=20
> are there.
>
> What others?
>
> Thanks
>
> rb
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Available_RFNo=
C_Blocks



--------------080305080704090606090907
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 06/29/2021 06:01 PM, <a class=3D"mo=
z-txt-link-abbreviated" href=3D"mailto:rblack@swri.org">rblack@swri.org</=
a>
      wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:fqSlQGDX9FwVNSiyYcVDPBJSoI1zNt5YzmhHbgFX3E@lists.ettus.=
com"
      type=3D"cite">
      <p>Request for a sanity check- I=92m in the process of building UHD
        4- </p>
      <p>What In-tree ettus RFNoc blocks are actually currently
        available in UHD4? I=92m aware that it is less than the list of
        blocks in the Ettus =93knowlege base=94 note on RFnoc and UHD4, a=
nd
        for instance that Replay and SIGGen are not available. What is
        the total list of in-tree blocks?</p>
      <p>RADIO, Filter, Window, DDC,DUC,FFT, FOSPHOR, IIRFilter I=92m
        pretty sure are there. </p>
      <p>What others?</p>
      <p>Thanks</p>
      <p>rb</p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">_______________________________________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Getting_S=
tarted_with_RFNoC_in_UHD_4.0#Available_RFNoC_Blocks">https://kb.ettus.com=
/Getting_Started_with_RFNoC_in_UHD_4.0#Available_RFNoC_Blocks</a><br>
    <br>
    <br>
  </body>
</html>

--------------080305080704090606090907--

--===============7192576510460827909==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7192576510460827909==--
