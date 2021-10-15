Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9967542F885
	for <lists+usrp-users@lfdr.de>; Fri, 15 Oct 2021 18:44:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 620D8384803
	for <lists+usrp-users@lfdr.de>; Fri, 15 Oct 2021 12:44:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hbnJtpgA";
	dkim-atps=neutral
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id EFB10383DBB
	for <USRP-users@lists.ettus.com>; Fri, 15 Oct 2021 12:44:08 -0400 (EDT)
Received: by mail-yb1-f177.google.com with SMTP id i84so24074258ybc.12
        for <USRP-users@lists.ettus.com>; Fri, 15 Oct 2021 09:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
        bh=SePPUTkJ5ctFY5q3/H/xNHuYF4F3aglK8/3BnYtckbI=;
        b=hbnJtpgA7PgngRaoQF2pRL0AaacGV0cL59/Cvg81WnzJfzg08zc015QxydGykAcOvY
         BU2v2yns0jrMCdj8IuFj3k76YChvq2qhcVdZbszt28NEaB+NYexXMByqGq+eRTSBUv6s
         L0PD6Xmnj9mxlr/Bfw+xrfAw/9O0lIY+9VMrSNo863kHWCVQ0bsks2Hvq5xMfITm5CSd
         hhflnXcnv6XTwZ+f2+8UGCF+3h1mAJYCmKrC8SI7Idm5Ac/wndpb0mLNJf2QVyo7xaVA
         3oB4NxGqYD7hdGIChYXtsdK7ZwRFqlizE+iPpMAmWnCvyOU4hA9YuOMjDavd1VUK3U8W
         dyZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc;
        bh=SePPUTkJ5ctFY5q3/H/xNHuYF4F3aglK8/3BnYtckbI=;
        b=A3KiYUKkvunRKw1mCRJehEIZazZsZ4aLp55NkCuqRkJO8BZ8gEG+7ZSu1VXdgmi+XA
         94JbNQL5bsdmD0ndiZyUdMSU3eTK2docksSuhv/icHrsHDeBrEK79hco8sDleqzz08CC
         5FA5BsONLdQftV3fI0S7djnGhAswSUrl5bTwCpyqio9/BAV6G2rcPVxIFxgejGUYyptv
         3CYqg6hsEqlA2ewriwdKxIgPQHD4CWb0StSI28DTC6u5OVVDEt8qGYeS8FBEK8/DYWMC
         tJn8WQFuIUkZz/rsKmRzlO/7rH1QKOqgSUdZU9Y9CSUWu+sIF22csUTT+DvaohZUsPgP
         +DOA==
X-Gm-Message-State: AOAM531rk62zy5/RonaKJfmlC6p06GjCdxFgG3yFQpUMFpKWjbWrgE/I
	Piv3q+iiVr6CNHWCvn/LEAFBf9hdL1WaEAsJtCx+n2d8mCw=
X-Google-Smtp-Source: ABdhPJyvtdpOFbJFP4f7hjFDwT0N+OBkeJQjEmTmo3KZa7XZpyC0wfb8h+u69WrQn0UXSqHn5FipDwTQ7rWoOhWSBJs=
X-Received: by 2002:a25:db49:: with SMTP id g70mr13164503ybf.341.1634316248120;
 Fri, 15 Oct 2021 09:44:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAErymBgdKeG9dKdwN_LTmYW0=gXTvO+POuGZ6Ge9VOkk5X33aw@mail.gmail.com>
 <564F776E-53EB-4128-A46E-D0C4047BD66C@gmail.com>
In-Reply-To: <564F776E-53EB-4128-A46E-D0C4047BD66C@gmail.com>
From: isaac mario tupac davila <isacctd92@gmail.com>
Date: Fri, 15 Oct 2021 11:43:56 -0500
Message-ID: <CAN+Y6vB901JY71q7HgzLPh+11ONNcW8K6B-xNP-r1pah3gjB6w@mail.gmail.com>
Message-ID-Hash: VAZJKOEPCRDZXCRI2DL356P3KPHWXGNK
X-Message-ID-Hash: VAZJKOEPCRDZXCRI2DL356P3KPHWXGNK
X-MailFrom: isacctd92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X310 with internal GPSDO: GSM led in front panel
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VAZJKOEPCRDZXCRI2DL356P3KPHWXGNK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8907151070632917029=="

--===============8907151070632917029==
Content-Type: multipart/alternative; boundary="0000000000006b7fdb05ce66e77f"

--0000000000006b7fdb05ce66e77f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I was just asking myself if there is a code to probe the gps.

Thanks
Regards
Isaac T.

El jue, 14 oct 2021 a las 14:51, Marcus D Leech (<patchvonbraun@gmail.com>)
escribi=C3=B3:

> Using uhd_usrp_probe is one way. You can also use the sync_to_gps example
> which will balk if there isn=E2=80=99t a GPS.
>
> My recollection is that the PPS light will start blinking once the GPS ha=
s
> acquired lock. Which can take 10s of minutes from a cold start.
>
> Sent from my iPhone
>
> > On Oct 14, 2021, at 2:33 PM, Achilleas Anastasopoulos <anastas@umich.ed=
u>
> wrote:
> >
> > =EF=BB=BF
> > I have some questions regarding the operation of X310.
> >
> > 1) How do I know if I have an internal GPSDO (we have 20 USRPs in the
> Lab and I remember we bought some of them with GPSDO). I know that when I
> do "uhd_usrp_probe", a device without GPSDO says "no internal GPSDO
> detected" but in the absence of this message, should I assume there is on=
e
> inside?
> >
> > 2) Upon powering up the USRP and assuming I have an active antenna
> connected in the back side (GPS antenna) input, should I expect that at
> some point the GPS led (front panel) will start blinking? or do I have to
> do something to initiate GPS acquisition?
> >
> > thanks
> > Achilleas
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006b7fdb05ce66e77f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I was just asking myself if there is a code to probe =
the gps.<br></div><div><br></div><div>Thanks</div><div>Regards</div><div>Is=
aac T.<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">El jue, 14 oct 2021 a las 14:51, Marcus D Leech (&lt;<a hre=
f=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;) escri=
bi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Using =
uhd_usrp_probe is one way. You can also use the sync_to_gps example which w=
ill balk if there isn=E2=80=99t a GPS. <br>
<br>
My recollection is that the PPS light will start blinking once the GPS has =
acquired lock. Which can take 10s of minutes from a cold start. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Oct 14, 2021, at 2:33 PM, Achilleas Anastasopoulos &lt;<a href=3D"m=
ailto:anastas@umich.edu" target=3D"_blank">anastas@umich.edu</a>&gt; wrote:=
<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; I have some questions regarding the operation of X310.<br>
&gt; <br>
&gt; 1) How do I know if I have an internal GPSDO (we have 20 USRPs in the =
Lab and I remember we bought some of them with GPSDO). I know that when I d=
o &quot;uhd_usrp_probe&quot;, a device without GPSDO says &quot;no internal=
 GPSDO detected&quot; but in the absence of this message, should I assume t=
here is one inside?<br>
&gt; <br>
&gt; 2) Upon powering up the USRP and assuming I have an active antenna con=
nected in the back side (GPS antenna) input, should I expect that at some p=
oint the GPS led (front panel) will start blinking? or do I have to do some=
thing to initiate GPS acquisition?<br>
&gt; <br>
&gt; thanks<br>
&gt; Achilleas<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006b7fdb05ce66e77f--

--===============8907151070632917029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8907151070632917029==--
