Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB87B544D8C
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jun 2022 15:25:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 67EFC38480E
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jun 2022 09:25:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654781117; bh=FPu+4IVJ8xi/tKtEuL1iyee95p3ULoGgsKlr4HzR6Tw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=b4fX2ngRg33RMOh3lUSW/mRm2WCRYcRjfZSOW07ARFtOUPcrxILhHVHdJAlstOP2v
	 9G9Vtyriva4iPtFhq1QaCK7dmKDsmjTcw6YBMnDr9/3YjHSZJAsN5da1iEsQTyj1n6
	 AN3orUcwsYVEzD9tjoOarPukmBM4vGcyykgbb4OWs2cYxVIVCtp5x7JO6r2Luz+ciM
	 mNMEVod9BwOJEmnhC9uF7sEBc5lSy2qWOzaxpyYw+OPSYrwygAwU+upi4RpArb2P2Q
	 0l1KWlpfNiYjwQxYgnzoQYae4btW+dwwvAOdoDXzhWBgAzW85FJeh7T9nwsBZclVEE
	 O+7cBlx6rr5hQ==
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 01C7E3847B7
	for <usrp-users@lists.ettus.com>; Thu,  9 Jun 2022 09:24:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="ElW7EWIH";
	dkim-atps=neutral
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-31336535373so90009237b3.2
        for <usrp-users@lists.ettus.com>; Thu, 09 Jun 2022 06:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7dDi7HO3MoTekfCtrtU3YY79+68fbf0hYkXh42L6Sug=;
        b=ElW7EWIHiytcCmKTALXBdRSZPtjy44CO/JCbZCAvuzeGpozNgwkelSReac4+lAaero
         2i9lAayge0+jOzGPyTJW583T1jqrEp++7a/O9coMs9F9RYWIdnFfM2bNL5SezjGbinAF
         nPkAFz5SMn63HBbB7zcxQmPQ2UhLhQuxMBA4JiMppAiBZoS03ShXRZaGLE8/awYm9qxV
         kVdWHI3du9Z+2/deb3HX4DO9fhcuQFVbbuCJNe+S0IdRxyjb4nyHqUzdTASpAGZH+npL
         V6I+wCSS0ancpFB1JJ5RZHjNM19UyQyGVsDJ7K3LmfRInMsRUQ+cSyxVJrjBxBvGsbjX
         SMaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7dDi7HO3MoTekfCtrtU3YY79+68fbf0hYkXh42L6Sug=;
        b=0kjwbijMiq3SQGja+KvwmfF/jZbEbcB39ujlfmnsAyjv3J1xRmI5q2HhtirGcxjx4s
         +wsO8zGAIGbnkmnLV+BrTIzDJu9EtrY8HcX8r9mrfkE/renMUdtoPbUbt6wQvZabfbbt
         AQmHmDdH5vLW8z1NcXxOr8cB31o7POwIYedqhaRQsaCO4CRwa4P0FlV0tWF2Ux+pG6a2
         S887Po3gDZns8K5jg2B4IRgblVjfIDvqCW5w6mfkY6QIQXC1XMUYr7fs6BXmyNaLaKIG
         o9PPtEM9tLZKNO7rXnuMf4TEWI+OBrR6dd03GNk5GFy8LkHsgtHg2/SeFZfuZoHmssnk
         BpLQ==
X-Gm-Message-State: AOAM533IrjDW0PUEEKKkW4pcw3N/c1QfbQ4g9hvOL3yVgdtHx15Y6Mep
	Fbufn8v+w3qdce/IPXe4rGQnX4RWJ2K70laCihv2s9GiTrrEjEex
X-Google-Smtp-Source: ABdhPJyhqYY8yEvWBqib8gs4/K0wrOqS8nxjFzPzl6QTx8H5ooT3t04Yv6wnvFg6SIlAlysBOCOwdluLY1PuTM8Hqjw=
X-Received: by 2002:a05:690c:d:b0:2d0:e02a:6cda with SMTP id
 bc13-20020a05690c000d00b002d0e02a6cdamr45532066ywb.192.1654781056248; Thu, 09
 Jun 2022 06:24:16 -0700 (PDT)
MIME-Version: 1.0
References: <165471871793.11266.8640979229099732140@mm2.emwd.com> <068c8a75-3f81-2367-efde-68deb6410877@gmail.com>
In-Reply-To: <068c8a75-3f81-2367-efde-68deb6410877@gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 9 Jun 2022 08:24:00 -0500
Message-ID: <CAFche=gZ8BDQah84gp62f3jHa7hfkhDXyZ_ByqVjctRzejEv5g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 5YBTU3IRM4MA7LME2G2ED74MFKYTNOI2
X-Message-ID-Hash: 5YBTU3IRM4MA7LME2G2ED74MFKYTNOI2
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Potential X410 issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5YBTU3IRM4MA7LME2G2ED74MFKYTNOI2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4225005590543239321=="

--===============4225005590543239321==
Content-Type: multipart/alternative; boundary="0000000000000a09eb05e103bd85"

--0000000000000a09eb05e103bd85
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Bob,

This is expected with the CG_400 because it does not have the DDC/DUC
blocks due to the high resource requirements for handling 500 Msps. If you
want 500 Msps, use CG_400. If you want 250 Msps or lower, use X4_200 (or
another _200 variant). Take a look at the FPGA image flavors in the X410
manual for an overview.

https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_updating_fpga_types

Wade

On Wed, Jun 8, 2022 at 3:08 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-06-08 16:03, Tillson, Bob (US) via USRP-users wrote:
>
> Peeps,
>
>
>
> So I have been working on the X410, UHD 4.2.0.0, Ubuntu 20.04, CG_400
> firmware revision=E2=80=A6
>
>
>
> No matter what Rx sampling rate I request, the device wants to supply 500
> Msps J
>
>
>
> So then I decided to try rx_samples_to_file, requested 5 Msps, and got 50=
0
> Msps as well=E2=80=A6
>
>
>
> Is there something different with the X410 when configuring the sampling
> rate that is different from other devices?
>
>
>
> If not, something seems to be amiss, any suggestions?
>
>
>
> Thanks,
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> Could you share with us the command-line parameters you used for
> rx_samples_to_file, and the "chat" that it produces at startup?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000a09eb05e103bd85
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Bob,</div><div><br></div><div>This is expected wit=
h the CG_400 because it does not have the DDC/DUC blocks due to the high re=
source requirements for handling 500 Msps. If you want 500 Msps, use CG_400=
. If you want 250 Msps or lower, use X4_200 (or another _200 variant). Take=
 a look at the FPGA image flavors in the X410 manual for an overview.</div>=
<div><br></div><div><a href=3D"https://files.ettus.com/manual/page_usrp_x4x=
x.html#x4xx_updating_fpga_types">https://files.ettus.com/manual/page_usrp_x=
4xx.html#x4xx_updating_fpga_types</a></div><div><br></div><div>Wade<br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, Jun 8, 2022 at 3:08 PM Marcus D. Leech &lt;<a href=3D"mailto:patc=
hvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-06-08 16:03, Tillson, Bob (US)
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal">Peeps,<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">So I have been working on the X410, UHD
          4.2.0.0, Ubuntu 20.04, CG_400 firmware revision=E2=80=A6<u></u><u=
></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">No matter what Rx sampling rate I request,
          the device wants to supply 500 Msps
          <span style=3D"font-family:Wingdings">J</span><u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">So then I decided to try
          rx_samples_to_file, requested 5 Msps, and got 500 Msps as
          well=E2=80=A6<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Is there something different with the X410
          when configuring the sampling rate that is different from
          other devices?<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">If not, something seems to be amiss, any
          suggestions?<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    Could you share with us the command-line parameters you used for
    rx_samples_to_file, and the &quot;chat&quot; that it produces at startu=
p?<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000a09eb05e103bd85--

--===============4225005590543239321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4225005590543239321==--
