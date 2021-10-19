Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 060AD432BE6
	for <lists+usrp-users@lfdr.de>; Tue, 19 Oct 2021 04:42:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0AB15384A57
	for <lists+usrp-users@lfdr.de>; Mon, 18 Oct 2021 22:42:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="epfT/gjZ";
	dkim-atps=neutral
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id B2C1F3846B4
	for <usrp-users@lists.ettus.com>; Mon, 18 Oct 2021 22:42:04 -0400 (EDT)
Received: by mail-yb1-f174.google.com with SMTP id a7so664066yba.6
        for <usrp-users@lists.ettus.com>; Mon, 18 Oct 2021 19:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nqQWgUFsrqUM9HzuutsnK1BYTj8BhAayEPfagrdoLis=;
        b=epfT/gjZltQQA/B+8Ra6hFA71ytW1LnU6YQOdz10PU5UtQfi7YRgExGygpexQJp0SJ
         ZXRBD1LTSlnInoepglQ8KYHPgYRAFmdOLMOP6rRO6BClZ47lxYD/AoRVYpY2XwLk6+IF
         hxIhm9isZ1V2jpaOlePVvaCIPtrU4jFVhEGrMnupP8Qbs+gqwWAP/L/UkgGVHagPeUay
         C0YnxxpO2g5UNE+I9eA+vteiytLMoGwbIX92kWsGIWInv/DBpCUT6W4tJ/4+6wyxHTGa
         G2Wi2qGHMYPD2kxrzG20y9usl6o8ySZsTnpAUugq6pRXhQgTeZyb5aGijw3fEP1UguQ4
         iB4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nqQWgUFsrqUM9HzuutsnK1BYTj8BhAayEPfagrdoLis=;
        b=NJ4loBqtphVr6SODmjRY9u61nH1N4FKDKEwwBYOw0dCD3YpjL8yrBl0sJUhUZBcN+9
         RVjNoiVh34SVwK/mFxzRg48vUvP+TRQG8jxiLK0OXeeME4BCBZK/IofeXDobRm9hUY2Y
         gjgILfk6r6ZjY3HepAAJre86QqIYRxlLmnblPjCbsMhmQ25RxaBQW0+uafpfGYQ+EqDA
         LlECMj7kSa7/0rWEb99bv0AGuz2YoKsNkpfLdn8svdGgMUaQ2S53aJi9ecbdsTrMiYKZ
         by5zV6kgAxBlHNmjoNNlNesUXHD63fjRhvUgtNaWGTsuQqv1pMPC+3fpuWTChPAGG/nE
         u/jw==
X-Gm-Message-State: AOAM532An9vffv43GqR1jdUehjeodxRYFpkhlmthPyT3VnO8sxeAoMek
	XNvVoVNh+GNNbJX91a/vQZ0ONWhXY9Rl6q3fF6c=
X-Google-Smtp-Source: ABdhPJziFybBv6mvYPXQIKJyWEWONQWteNTuezVFSUrNJV/CkujCecguoPur0BeUADnmrLeGhqAMlztjPFywVk9ef/0=
X-Received: by 2002:a25:2cc6:: with SMTP id s189mr33004450ybs.82.1634611324043;
 Mon, 18 Oct 2021 19:42:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAGeA34H5uj6pcFV39dNJBpSksVqq_jOYypBYMvBQhzJmX+Kyzw@mail.gmail.com>
 <1dd99b19-0a66-29ef-0cee-a0ae45167443@gmail.com>
In-Reply-To: <1dd99b19-0a66-29ef-0cee-a0ae45167443@gmail.com>
From: Shamil Prematunga <shamildilshan.b@gmail.com>
Date: Tue, 19 Oct 2021 08:11:52 +0530
Message-ID: <CAGeA34FgUUyAnYWnZjmzsfoOewzMoedBqBw-LFMnWpg1wUdUfw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 7PAU4NZI6SALRL7LV6BHXHNURXN43OEE
X-Message-ID-Hash: 7PAU4NZI6SALRL7LV6BHXHNURXN43OEE
X-MailFrom: shamildilshan.b@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can't communicate between USRP N310 and B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7PAU4NZI6SALRL7LV6BHXHNURXN43OEE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6510645642061684120=="

--===============6510645642061684120==
Content-Type: multipart/alternative; boundary="00000000000050c81605ceab9be6"

--00000000000050c81605ceab9be6
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,

Thank you very much for your reply. I was struggling to fix this issue for
a long time. I'll try and get back to you if it fails again.

Best Regards,
Shamil

On Mon, Oct 18, 2021 at 9:19 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-10-18 12:40 a.m., Shamil Prematunga wrote:
>
> Hi All,
>
> I am a research engineer in Dialog-University of Moratuwa Research Lab Sri
> Lanka who is new to USRP devices. I am currently working on an OAI setup
> with N310 as a gNB and B210 as a UE.
>
> When the setup is running I wasn't able to make proper communication in
> between SDRs even over the air or through cables.
>
> I tested using GNURadio and B210 working as a spectrum analyzer to capture
> signals which are transmitted by the N310. It shows small fluctuations
> around the center frequency when N310 is up and running.
>
> Can someone who has experience with OAI and USRPs please help me to figure
> out the problem.
>
> Thanks in advance.
>
> Best Regards,
> Shamil Prematunga
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> You haven't given us much to go on here--like what you mean by "small
> fluctuations".
>
> My suspicion is that you're just running into the fact that at the very
> center of the spectrum is the DC component, and direct-conversion radios
> have
>   a DC-offset compensator that can tend to alter signals right in the
> middle of the spectrum.
>
>
> The cure is usually to use offset tuning:
>
>
> https://files.ettus.com/manual/structuhd_1_1tune__request__t.html#a292194827377ad0cef865b8b433b3ecd
>
> To shift the DC offset component outside or to the edge of your passband.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000050c81605ceab9be6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<div><br></div><div>Thank you very much for your=
 reply. I was struggling to fix this issue for a long time. I&#39;ll try an=
d get back to you if it fails again.=C2=A0</div><div><br></div><div>Best Re=
gards,</div><div>Shamil=C2=A0</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 18, 2021 at 9:19 PM Marcus D=
. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">
 =20
   =20
 =20
  <div>
    <div>On 2021-10-18 12:40 a.m., Shamil
      Prematunga wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi All,
        <div><br>
        </div>
        <div>I am a research engineer in Dialog-University of Moratuwa
          Research Lab Sri Lanka who is new to USRP devices. I am
          currently working on an OAI setup with N310 as a gNB and B210
          as a UE.=C2=A0</div>
        <div><br>
        </div>
        <div>When the setup is running I wasn&#39;t able to make proper
          communication in between SDRs even over the air or through
          cables.=C2=A0</div>
        <div><br>
        </div>
        <div>I tested=C2=A0using GNURadio and B210 working as a spectrum
          analyzer to capture signals which are transmitted by the N310.
          It shows small fluctuations around the center frequency when
          N310 is up and running.=C2=A0</div>
        <div><br>
        </div>
        <div>Can someone who has experience with OAI and USRPs please
          help me to figure out the=C2=A0problem.</div>
        <div><br>
        </div>
        <div>Thanks in advance.=C2=A0</div>
        <div><br>
        </div>
        <div>Best Regards,</div>
        <div>Shamil Prematunga=C2=A0</div>
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
    You haven&#39;t given us much to go on here--like what you mean by
    &quot;small fluctuations&quot;.<br>
    <br>
    My suspicion is that you&#39;re just running into the fact that at the
    very center of the spectrum is the DC component, and
    direct-conversion radios have<br>
    =C2=A0 a DC-offset compensator that can tend to alter signals right in
    the middle of the spectrum.<br>
    <br>
    <br>
    The cure is usually to use offset tuning:<br>
    <br>
<a href=3D"https://files.ettus.com/manual/structuhd_1_1tune__request__t.htm=
l#a292194827377ad0cef865b8b433b3ecd" target=3D"_blank">https://files.ettus.=
com/manual/structuhd_1_1tune__request__t.html#a292194827377ad0cef865b8b433b=
3ecd</a><br>
    <br>
    To shift the DC offset component outside or to the edge of your
    passband.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000050c81605ceab9be6--

--===============6510645642061684120==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6510645642061684120==--
