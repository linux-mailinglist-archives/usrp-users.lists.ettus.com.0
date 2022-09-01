Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5575A9FF2
	for <lists+usrp-users@lfdr.de>; Thu,  1 Sep 2022 21:28:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B743F388B5C
	for <lists+usrp-users@lfdr.de>; Thu,  1 Sep 2022 15:28:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662060496; bh=vGEttFXsOKSRTinxR4xVRDEh3oObyPYKVYiw8EubZLg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=TY3tEAwiESOWqGiPSHv+qtJXL5WHUzX5hn3IfCnA3eJM6Ub1gS3r7lGpvNwi3jTpR
	 djvePhABlwT82LjKnZEk4LjT31nOUP3o+9yDo/nNGZVGaQV+mkfTt+BB87CwDsoSEU
	 ZEM+ReCmVyCUfxWIk7xD0xsm7LPxw/XdGAlu+xVQmIZKPib02pvcTxpZRuaNl1RE/X
	 fJi10Z1+WMBmVptZ2hpVqGNLDnHUUcZ4kltjTjcyM8NXe3wGF6s6UnskPQVQs/fPWI
	 2B2YrhBPgpWZdcsGp/HOFZBEwDWlcUi3UGWF/FywsTLfbMU7Uk5lIFncViOqzn5WKF
	 vPQp1BS5NZSbQ==
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 7BB5638840C
	for <usrp-users@lists.ettus.com>; Thu,  1 Sep 2022 15:26:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="aukv3k/a";
	dkim-atps=neutral
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-33dce2d4bc8so346843327b3.4
        for <usrp-users@lists.ettus.com>; Thu, 01 Sep 2022 12:26:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=pOc38HSRhDu6pbboEJc9acWbKjms7KknpQMLoetr5NI=;
        b=aukv3k/aW9/VK9rwL1rhJRhb2rXZxiDZD1WFgxgmV5cIOnh4WdlgCdJbsXotVfz1qD
         ts/+fTNJhz931R1Ewd+nXUrDsojUmJg5K0ps6U5PVdIxfD5MkNkCMe21HDYsldgxdgPN
         pS0ABqhTEhle5djZihlcdAHbM37Aoes3Q47PgpHmx1IYaGDBuYVAcLoAKkhKQyul6thv
         WeYhv4CE+XK4OXSO3sjbGkuFiKokzNnVy/O1io0dNVrvwYcY/fv+Yr9AzRU8YpcdtMQL
         L+KHFCP/0gfKZHzuajmFRXPhNE+e1LCDQg3372mvO31EXBCdZYUIkMA5WmJ5DlE04Mdj
         E0HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=pOc38HSRhDu6pbboEJc9acWbKjms7KknpQMLoetr5NI=;
        b=DJgRupe7r7cr5MjfxGDwVpt5n7S4nTTzFtUCLMn3JfX9OnRekymAbWSZ6WxeIQ7Duh
         gysCXsM910wA+xrL4oi7Cv3z0uoJxUlJdF/iR0zx6FnQAWIX/D61hDKL9aLJDmTixiaQ
         mc0L4Py3QWk6uS95CElfQ+uxi8fY4EHsSt+02Dhf7s9TdS8r25JdQubN2tu8WwalKeXP
         nB/USbQfPCD7wGgiY8Dh7H2ddKJEvnagxauxvC+NikA3eFQFmb/xWUOeYmWXv0JMgWoT
         PmzEiGu6G43ZixIEFpRvFrnuzjhFlyOusCrB8ZNOAeLAlCufgAwolXTUkOBnrAxwMQUh
         zy1g==
X-Gm-Message-State: ACgBeo1Da0qgl6P9fRzTxdosFdBJR+68f6ACM/oYi1fkcS9LwXUi8XIJ
	2v9Yt6uZ//IRnZc4jabMwlOjBB/7nB0qTL1Az8Zpp53xD/M=
X-Google-Smtp-Source: AA6agR6EqoJY3ADqS7EZ/uL1sipQti9ZjstDYd9/Aud1ANJNC04J8nkaddvjZgHOPWGm0bTsa4woShz1LTWUjsyCW7c=
X-Received: by 2002:a81:6f87:0:b0:33d:a780:e08a with SMTP id
 k129-20020a816f87000000b0033da780e08amr24978784ywc.38.1662060414591; Thu, 01
 Sep 2022 12:26:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTRxCVCibZ9ugK+LZ0D4jQccRyeD4=iObboo_0QXJmwNDA@mail.gmail.com>
 <DB52B5D9-F848-415D-8BF9-562FD666CA7F@gmail.com>
In-Reply-To: <DB52B5D9-F848-415D-8BF9-562FD666CA7F@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 1 Sep 2022 14:26:44 -0500
Message-ID: <CAB__hTTnjTJwi3Css61Uwa6XqZ_vij0SJLTgKQnKNAi+dw-pxQ@mail.gmail.com>
To: Paul Atreides <maud.dib1984@gmail.com>
Message-ID-Hash: KFICHBZOU3ES5MBC2LVDMWUBZCAZ47OC
X-Message-ID-Hash: KFICHBZOU3ES5MBC2LVDMWUBZCAZ47OC
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_radio_loopback
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KFICHBZOU3ES5MBC2LVDMWUBZCAZ47OC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7492053625885363577=="

--===============7492053625885363577==
Content-Type: multipart/alternative; boundary="0000000000009bb7dc05e7a298d5"

--0000000000009bb7dc05e7a298d5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Paul,
After re-reading my original email, it was a bit misleading.  The streaming
samples are never coming to the host - they are just looped from Rx to Tx
on the FPGA.  Thus, I can't determine the digital power on the host.  I'm
guessing that the probe signal block you mentioned operates on the host
rather than the FPGA.  I'm looking for some simple power detector that may
be part of the RFNoC radio block or DDC block that I could query
occasionally from the host to determine the digital signal power level.
Rob

On Thu, Sep 1, 2022 at 1:39 PM Paul Atreides <maud.dib1984@gmail.com> wrote=
:

> Hey Rob:
> If you use GNURadio, The probe signal block can take in a stream and the
> function probe block can poll The level on a time interval that you set i=
n
> the block. Then you can use that changing variable elsewhere in the
> flowgraph to adjust the gain.
>
> <end transmission>
>
> > On Sep 1, 2022, at 10:46, Rob Kossler <rkossler@nd.edu> wrote:
> >
> > =EF=BB=BF
> > Hi,
> > I am interested in implementing a relatively simple repeater applicatio=
n
> on the X310 and E310. I ran the Ettus rfnoc_radio_loopback example and th=
is
> is nearly a perfect fit for the functionality I want. However, I am
> wondering how my application can intelligently set the Rx Gain & Tx Gain.
> Actually, the Tx gain is easy: I can leave it fixed or I can change it
> inversely with the Rx gain to maintain constant loop gain.  But, the Rx
> Gain I would like to set based on input signal power.
> >
> > I'm not thinking of a fast AGC or even logic residing on the FPGA at
> all. I'm thinking more along the lines of the host PC occasionally queryi=
ng
> an "rssi" or other digital power estimate and then changing the Rx gain i=
n
> response.  I don't care about actual power levels - I just want to maximi=
ze
> the digital dynamic range.
> >
> > I know that I can implement a custom RFNoC block that simply passes
> samples through while computing this estimate such that it can be queried
> with a register read. But, before doing so, I'm wondering if something
> already exists such that I wouldn't have to do so.
> > Rob
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009bb7dc05e7a298d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Paul,<div>After re-reading my original email, it wa=
s a bit misleading.=C2=A0 The streaming samples are never coming to the hos=
t - they are just looped from Rx to Tx on the FPGA.=C2=A0 Thus, I can&#39;t=
 determine the digital power on the host.=C2=A0 I&#39;m guessing that the p=
robe signal block you mentioned operates on the host rather than the FPGA.=
=C2=A0 I&#39;m looking for some simple power detector that may be part of t=
he RFNoC radio block or DDC block that I could query occasionally from the =
host to determine the digital signal power level.</div><div>Rob</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, Sep 1, 2022 at 1:39 PM Paul Atreides &lt;<a href=3D"mailto:maud.dib1984@g=
mail.com">maud.dib1984@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Hey Rob:<br>
If you use GNURadio, The probe signal block can take in a stream and the fu=
nction probe block can poll The level on a time interval that you set in th=
e block. Then you can use that changing variable elsewhere in the flowgraph=
 to adjust the gain. <br>
<br>
&lt;end transmission&gt;<br>
<br>
&gt; On Sep 1, 2022, at 10:46, Rob Kossler &lt;<a href=3D"mailto:rkossler@n=
d.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hi,<br>
&gt; I am interested in implementing a relatively simple repeater applicati=
on on the X310 and E310. I ran the Ettus rfnoc_radio_loopback example and t=
his is nearly a perfect fit for the functionality I want. However, I am won=
dering how my application can intelligently set the Rx Gain &amp; Tx Gain. =
Actually, the Tx gain is easy: I can leave it fixed or I can change it inve=
rsely with the Rx gain to maintain constant loop gain.=C2=A0 But, the Rx Ga=
in I would like to set based on input signal power.=C2=A0 <br>
&gt; <br>
&gt; I&#39;m not thinking of a fast AGC or even logic residing on the FPGA =
at all. I&#39;m thinking more along the lines of the host PC occasionally q=
uerying an &quot;rssi&quot; or other digital power estimate and then changi=
ng the Rx gain in response.=C2=A0 I don&#39;t care about actual power level=
s - I just want to maximize the digital dynamic range.<br>
&gt; <br>
&gt; I know that I can implement a custom RFNoC block that simply passes sa=
mples through while computing this estimate such that it can be queried wit=
h a register read. But, before doing so, I&#39;m wondering if something alr=
eady exists such that I wouldn&#39;t have to do so. <br>
&gt; Rob<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009bb7dc05e7a298d5--

--===============7492053625885363577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7492053625885363577==--
