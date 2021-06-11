Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CA33A4B8A
	for <lists+usrp-users@lfdr.de>; Sat, 12 Jun 2021 01:59:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 176A0384098
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 19:59:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ourowndomain-com.20150623.gappssmtp.com header.i=@ourowndomain-com.20150623.gappssmtp.com header.b="AP6dihN3";
	dkim-atps=neutral
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 8412F38406D
	for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 19:58:51 -0400 (EDT)
Received: by mail-io1-f48.google.com with SMTP id b25so32925359iot.5
        for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 16:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ourowndomain-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fCnNqYl28NeZCf4iGEdhEixJBWhoepy2E5kO/ITwtbo=;
        b=AP6dihN3I/p3mXgvniQp+NvJThq1SKLmXsDDO88xC86LF0tPdDyazUzYt/CycZ3TvQ
         mzi730c5j3Uq96c1VvglTzl6zP3JtphvyULpOzL5PAAvajNZ51xNVpfuwthZ1qscV62/
         HT4CfquD7tRqInRQnxZ8DpBLU4gKt7uOEaaiVc6MEfK/qkHAnVz2tQ5Vo231psCLTYGs
         R4QcR+gQIXksy/awGIP8yCx6M6LQat8aMFuCiuvDRs/GIiqA80OsPdeQ5SEWcKQuQcwe
         F3XdF8h4gQ6+EqjLxVM+kQHa0tXtq25dYHnUhxZ6ezWkO/gQ8mpb4ONipOeQVxj4ezwH
         Vvnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fCnNqYl28NeZCf4iGEdhEixJBWhoepy2E5kO/ITwtbo=;
        b=MveOWz8hTAD8bmhVE9koRx86ZiZctSjpc6k3Vl3U7l7fYsCPM/I0S/e+mhSIxToysm
         X8fGshB/36MX52a9RIeqEU2+Lyd8PKSbaithG6lOBbobg2tB/hvdDhpgKmLxbJ63npD5
         9KNsjYTCDwEoOH17QoVGCSzE0bY3QS2ZLzIbWNE3VC1EWpvS9HnQJfmOfPgLpHGXm8g9
         h2bGUuCISdwULYoG7T5irfXh8HnkluLHJ9cTpZeozg34L3NNLj5AJoCrqpXy4TfBoP3i
         4RcvIjxJl2ksHKgKnHD1qQ1cHF0NeEXagh2jJgxilfaqWRll4s01wiCIvhxrCjsEUGmG
         Cbkg==
X-Gm-Message-State: AOAM530pNyC2R+Ky3BBlMTJkV6VVrWzDEcWHieHwZTpZdff3v1+gMtcP
	TzSyzaEtYomPfZS79mgR0n6N3VJOC4YS9k3DtXemibTZ1TPixg==
X-Google-Smtp-Source: ABdhPJyRSnlDkAfHAhRSn4+zVfjxi2Kc7lm/2N3sFuP8nK/e6RK6+ICdb8cP364y+A7FKwOkMcxJ5fQFICgqm3M+S5k=
X-Received: by 2002:a05:6602:2283:: with SMTP id d3mr5087864iod.121.1623455930674;
 Fri, 11 Jun 2021 16:58:50 -0700 (PDT)
MIME-Version: 1.0
References: <CANsNear-N8KBfZO87wVk8btEnQk=tsvF_Td0zjv1YDoE2ATVFw@mail.gmail.com>
 <9a02875e-a4a9-aa5a-0e3f-6d0f301aee0e@ettus.com>
In-Reply-To: <9a02875e-a4a9-aa5a-0e3f-6d0f301aee0e@ettus.com>
From: Rich Gopstein <rich@ourowndomain.com>
Date: Fri, 11 Jun 2021 19:58:39 -0400
Message-ID: <CANsNeap0PxCncob=tfYBZ0BVvKaGBZ=oDJDo521rrULqDj9w8Q@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: 4QOKCFGILGRQ47TSLUBIIEJOUDBQ2CMQ
X-Message-ID-Hash: 4QOKCFGILGRQ47TSLUBIIEJOUDBQ2CMQ
X-MailFrom: rich@ourowndomain.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Replacing idle FPGA image on an E310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4QOKCFGILGRQ47TSLUBIIEJOUDBQ2CMQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2047092077803431337=="

--===============2047092077803431337==
Content-Type: multipart/alternative; boundary="0000000000000e873705c4864a84"

--0000000000000e873705c4864a84
Content-Type: text/plain; charset="UTF-8"

Thanks.  I'll give that a try.

Rich


On Fri, Jun 11, 2021 at 10:32 AM Martin Braun <martin.braun@ettus.com>
wrote:

> On 04/06/2021 21:19, Rich Gopstein wrote:
> > I've successfully replaced the non-idle FPGA image on my UHD 4.0 E310
> > using uhd_image_loader.
> >
> > What's the process to replace the idle FPGA image?  I didn't see any
> > documentation on using uhd_image_loader for that.
> >
> > I saw FPGA images in /user/share/uhd/images and /lib/firmware, but
> > wasn't sure if I could just copy on top of those?
>
> Yes, you can copy on top of those. /lib/firmware is the one that'll get
> applied, the next time an idle image is loaded.
>
> --M
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000e873705c4864a84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks.=C2=A0 I&#39;ll give that a try.<div><br></div><div=
>Rich</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Fri, Jun 11, 2021 at 10:32 AM Martin Braun &lt=
;<a href=3D"mailto:martin.braun@ettus.com">martin.braun@ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 04/06/2=
021 21:19, Rich Gopstein wrote:<br>
&gt; I&#39;ve successfully replaced the non-idle FPGA image on my UHD 4.0 E=
310 <br>
&gt; using=C2=A0uhd_image_loader.<br>
&gt; <br>
&gt; What&#39;s the process to replace the idle FPGA image?=C2=A0 I didn&#3=
9;t see any <br>
&gt; documentation on using=C2=A0uhd_image_loader for that.<br>
&gt; <br>
&gt; I saw FPGA images in /user/share/uhd/images and /lib/firmware, but <br=
>
&gt; wasn&#39;t sure if I could just copy on top of those?<br>
<br>
Yes, you can copy on top of those. /lib/firmware is the one that&#39;ll get=
 <br>
applied, the next time an idle image is loaded.<br>
<br>
--M<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000e873705c4864a84--

--===============2047092077803431337==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2047092077803431337==--
