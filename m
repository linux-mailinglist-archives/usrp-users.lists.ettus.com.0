Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 292FA4A7E1A
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 03:47:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0BE01385887
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 21:47:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="L/uRzRl/";
	dkim-atps=neutral
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mm2.emwd.com (Postfix) with ESMTPS id D42A938563D
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 21:46:34 -0500 (EST)
Received: by mail-yb1-f181.google.com with SMTP id i62so4609490ybg.5
        for <usrp-users@lists.ettus.com>; Wed, 02 Feb 2022 18:46:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Q0oFTks3RNGEJMYQSmqerjz1j3Uem8jmqxGePT6uo58=;
        b=L/uRzRl/IoamLhl/6yC48YGOUzZzVW/t34VRcmhRFy/OXoLCqoZsQWcau7bkHt8rL5
         zbY74DjS1mbdFQAF2nEggTwH3D3cpkDjqZIYd8ggPL6TOccECWMRP20sDqUISW1hsV2A
         jg9NWSltfkq3enc+AFCeYM/3y/MAGOoDeCnVftjXfDYSYIxTnRF8hh2knAX3jOTnXH8R
         iw95eHR+16QkohkElhNxJTA6Jt5CkkEQ+Gi3+M65FtMZpvLkDozqiODtd/9zaSrgjDnB
         cA5hSPN3e72XU1INWupiPWLEak8jLmgTzGH9RnJd7QCol1h/bQ9kL3WW0JG/lK5vSuJW
         brvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Q0oFTks3RNGEJMYQSmqerjz1j3Uem8jmqxGePT6uo58=;
        b=SNArZcMumFGZ83QkbuAQYUlmgGzFTyVVV2k5i+rlA1oRg6Nq21UzOhmwxT6LB6lIoP
         zzgrtEcZ+vRcyMdZfbbfFYNzc3+79+ZouMqOl5wzK7JqGkjS/Fsx2YWeR+fb7KffoKt3
         pvRtaYW4Uyk3IiKFcdpoz2P0nO29OyQ3H/dXFSBWSuC4+4+EFPS61k6grTjEfzovf53v
         L28RsVi2z8O19a53R0chG6MSDpO9ckA9EuldQhIqC9mx0kaZEkcovYm+N0JB1X8NlYSN
         2WWHEFV1Lp2LYIcs29SKNiJqjEM39uaf1iC8o0WvRYDuv9a00soncrxTIT7vQ1WhR9Q0
         gDZw==
X-Gm-Message-State: AOAM531uc1/c80K8zKDs1JqnQwiku28UX9cMXPgfPofjDhTpsqZ2UIkV
	/dS4dVm+K8YH1XG9/RPqczFf3S0H71DsAeIIwrgMiOLS
X-Google-Smtp-Source: ABdhPJzPKiEGzPssYimpYmjrBtsxdC/Uk9kRbrv8rZYiUhxSybmA4y+nX23DSSXe8V+xHqbYdEf8/D2f/VdB8S4tcFs=
X-Received: by 2002:a25:6a06:: with SMTP id f6mr46166912ybc.193.1643856394005;
 Wed, 02 Feb 2022 18:46:34 -0800 (PST)
MIME-Version: 1.0
References: <CAOucfAOSPUtNpdPuNb3VaHKtaapZG_HLKuhvPLKgxvNU9dX-YQ@mail.gmail.com>
In-Reply-To: <CAOucfAOSPUtNpdPuNb3VaHKtaapZG_HLKuhvPLKgxvNU9dX-YQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 2 Feb 2022 20:46:18 -0600
Message-ID: <CAFche=gWa+jfsNOW_Uxt0mcVFxDnx42wa0SbWtiuvAV0RfFfnQ@mail.gmail.com>
To: Lautaro Lorenzen <lorenzen.lautaro@gmail.com>
Message-ID-Hash: JXYGL3BHO6TPNS3DFS5CGJ6FUVFSGB24
X-Message-ID-Hash: JXYGL3BHO6TPNS3DFS5CGJ6FUVFSGB24
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E31x Fosphor example with RFNoC on UHD 4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JXYGL3BHO6TPNS3DFS5CGJ6FUVFSGB24/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3687916183649796067=="

--===============3687916183649796067==
Content-Type: multipart/alternative; boundary="0000000000006d430505d71424b4"

--0000000000006d430505d71424b4
Content-Type: text/plain; charset="UTF-8"

Hi Lautaro,

The clocks section lists the clock ports you want to have on a block. The
rfnoc_chdr and rfnoc_ctrl clocks are required for all blocks. In the
block's YAML, they must be provided in the list of clocks (see other blocks
for example in
https://github.com/EttusResearch/uhd/tree/master/host/include/uhd/rfnoc/blocks).
In the device YAML (for example e310_rfnoc_image_core.yml), they are
connected automatically to every block, so you don't need to specify them
when connecting blocks unless you also want to use one of them for a
different clock input. For example, you might want to drive the ce input of
a block with rfnoc_chdr clock. The freq parameters aren't used currently,
but it's intended to specify the frequency range of a clock.

I'm not familiar with the fosphor GRC code. As far as I know this hasn't
been updated for E31x and UHD 4.

Wade


On Tue, Feb 1, 2022 at 7:07 AM Lautaro Lorenzen <lorenzen.lautaro@gmail.com>
wrote:

> Hello everyone,
>
> I'm trying to implement the Fosphor example on an Ettus E312, but I've
> come across some things that are unclear to me. I'm just starting to
> develop with RFNoC, and I've read the manual, cross compiled everything for
> the Ettus, etc.
>
> As I understand (and it was mentioned in the mailing list a time ago),
> this [1] guide is not up to date, as the "uhd_image_builder_gui.py" is no
> longer available for UHD 4.0. I'm now going through [2], and I've two main
> questions:
>
> I. When I'm trying to make my own YAML file, I'm not sure if every block
> needs to be connected to the rfnoc_chdr clock. What would be the way to
> know for sure? I've been looking the YAML block descriptions but I couldn't
> figure what exactly this "...clocks:  - name: rfnoc_chdr freq: "[]"  -
> name: rfnoc_ctrl   freq: "[]"  - name: ce   freq: "[]"... "  means.
>
> II. Lastly, I couldn't find the "rfnoc_fosphor_network_host/usrp.grc"
> examples on this version. Is there any new place where I can find them or
> should I create my own .grc? I'm trying to work with examples for now to
> use as a reference in the early stages of my development.
>
>
> [1].
> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
> [2]. https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0
>
>
>
> Thank you very much for your time.
> Regards,
> Lautaro.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006d430505d71424b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div></div><div>Hi Lautaro,</div><div><br></div><div>The c=
locks section lists the clock ports you want to have on a block. The rfnoc_=
chdr and rfnoc_ctrl clocks are required for all blocks. In the block&#39;s =
YAML, they must be provided in the list of clocks (see other blocks for exa=
mple in <a href=3D"https://github.com/EttusResearch/uhd/tree/master/host/in=
clude/uhd/rfnoc/blocks">https://github.com/EttusResearch/uhd/tree/master/ho=
st/include/uhd/rfnoc/blocks</a>). In the device YAML (for example e310_rfno=
c_image_core.yml), they are connected automatically to every block, so you =
don&#39;t need to specify them when connecting blocks unless you also want =
to use one of them for a different clock input. For example, you might want=
 to drive the ce input of a block with rfnoc_chdr clock. The freq parameter=
s aren&#39;t used currently, but it&#39;s intended to specify the frequency=
 range of a clock.<br></div><div><br></div><div>I&#39;m not familiar with t=
he fosphor GRC code. As far as I know this hasn&#39;t been updated for E31x=
 and UHD 4.<br></div><div><br></div><div>Wade<br></div><br></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 1, 2=
022 at 7:07 AM Lautaro Lorenzen &lt;<a href=3D"mailto:lorenzen.lautaro@gmai=
l.com">lorenzen.lautaro@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_defau=
lt" style=3D"font-family:arial,helvetica,sans-serif">Hello everyone, <br></=
div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-=
serif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">I&#39;m trying to implement the Fosphor example on an E=
ttus E312, but I&#39;ve come across some things that are unclear to me. I&#=
39;m just starting to develop with RFNoC, and I&#39;ve read the manual, cro=
ss compiled everything for the Ettus, etc.</div><div class=3D"gmail_default=
" style=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"=
gmail_default" style=3D"font-family:arial,helvetica,sans-serif">As I unders=
tand (and it was mentioned in the mailing list a time ago), this [1] guide =
is not up to date, as<code><font face=3D"arial,sans-serif"> the &quot;uhd_i=
mage_builder_gui.py</font></code><span style=3D"font-family:arial,sans-seri=
f"><code></code></span>&quot; is no longer available for UHD 4.0. I&#39;m n=
ow going through [2], and I&#39;ve two main questions:</div><div class=3D"g=
mail_default" style=3D"font-family:arial,helvetica,sans-serif"><br></div><d=
iv class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"=
>I. When I&#39;m trying to make my own YAML file, I&#39;m not sure if every=
 block needs to be connected to the rfnoc_chdr clock. What would be the way=
 to know for sure? I&#39;ve been looking the YAML block descriptions but I =
couldn&#39;t figure what exactly this  &quot;...clocks:=C2=A0 - name: rfnoc=
_chdr freq: &quot;[]&quot;=C2=A0 - name: rfnoc_ctrl =C2=A0 freq: &quot;[]&q=
uot;=C2=A0 - name: ce =C2=A0 freq: &quot;[]&quot;... &quot;=C2=A0 means.<br=
></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sa=
ns-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial=
,helvetica,sans-serif">II. Lastly, I couldn&#39;t find the &quot;rfnoc_fosp=
hor_network_host/usrp.grc&quot; examples on this version. Is there any new =
place where I can find them or should I create my own .grc? I&#39;m trying =
to work with examples for now to use as a reference in the early stages of =
my development.<br></div><div class=3D"gmail_default" style=3D"font-family:=
arial,helvetica,sans-serif"></div><div class=3D"gmail_default" style=3D"fon=
t-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_default"=
 style=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"g=
mail_default" style=3D"font-family:arial,helvetica,sans-serif">[1]. <a href=
=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_R=
FNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source" target=3D"_blank">https://kb.e=
ttus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_R=
adio_/_gr-ettus_from_Source</a></div><div class=3D"gmail_default" style=3D"=
font-family:arial,helvetica,sans-serif">[2]. <a href=3D"https://kb.ettus.co=
m/Getting_Started_with_RFNoC_in_UHD_4.0" target=3D"_blank">https://kb.ettus=
.com/Getting_Started_with_RFNoC_in_UHD_4.0</a></div><div class=3D"gmail_def=
ault" style=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><br></d=
iv><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-s=
erif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,hel=
vetica,sans-serif">Thank you very much for your time.</div><div class=3D"gm=
ail_default" style=3D"font-family:arial,helvetica,sans-serif">Regards,</div=
><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-ser=
if">Lautaro.<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006d430505d71424b4--

--===============3687916183649796067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3687916183649796067==--
