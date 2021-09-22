Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68527414F0A
	for <lists+usrp-users@lfdr.de>; Wed, 22 Sep 2021 19:28:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4FDC3384652
	for <lists+usrp-users@lfdr.de>; Wed, 22 Sep 2021 13:27:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="CM+3RwpB";
	dkim-atps=neutral
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	by mm2.emwd.com (Postfix) with ESMTPS id A94613841E9
	for <usrp-users@lists.ettus.com>; Wed, 22 Sep 2021 13:27:15 -0400 (EDT)
Received: by mail-ua1-f43.google.com with SMTP id i8so234826uae.7
        for <usrp-users@lists.ettus.com>; Wed, 22 Sep 2021 10:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+WuHS04jSoL928JgbjA/Tfp3N9S7I494ygQCCBZnse0=;
        b=CM+3RwpBu9irAh3quumpLKi7PE+u7CljXqA+iRlxldPeqn6hFVDN5Ot7jWh0tbK2Tr
         HXgByr6hxVA0kG6SWDBgjFlupDo3dddtKbL1mZefG4Z4LHIjMonrUL7KxhmN3zpinBEE
         kveUTxEPXiW0KBm7bqob/Q+67ti51W8jRCVAExli55hLCyK+SuX8xWoUkPyf6TN0J1HB
         fC57e6nZrdjv7u+GSaZyXto4X0J0bTabrtLAAEijWpyLiyFa45IC3lOfK5X9hiM2tPPN
         os9TYThVnb47YRRZPZhizuY/qbNv3TcJkEVM9wyBNBQ+IC9Km+mJMUZxhdOaly/rRTef
         mExQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+WuHS04jSoL928JgbjA/Tfp3N9S7I494ygQCCBZnse0=;
        b=L9ONtI6LKFHDcyZDQoFxBK3RqFp/PVlZmCvT8keeyuTKElUjZ7vTJdOVHd1qY1F4q3
         rRG6VZWZpkKLKSikAIfxpYG3Vz4wVqUqWtLYHcJJZgRGhTVrF26mVKY5bGF4VCenjEKC
         8NyeR8rFZ+L4E9VEH7Mz3B4NJoanKMK+hfTwvae7i7+LXFKlC0198QTeNDfZWBxIdt52
         DSNp9PleI6T+cDBIpdEb9R4ydyfiQpujI7eQcIVCMlXh0Zx6aBsimGEbICa3974D4rP8
         Zd1B+AQgRamzDbqjAWZgpYzn8vZmrW5YIljAlwBoRJGJsKekdAD92wVrmu7+kP/ZSKpo
         rkQg==
X-Gm-Message-State: AOAM531ud6yFwXrMFhoZyZGKhTCjenysyeh2jCroPT4/tYnegiBmWnEa
	UzAP9/mvwSwpjPu7YcHE4Qwe9WpLTo0yo4ki4fAtlNqQgaOiyw==
X-Google-Smtp-Source: ABdhPJzQWPY9r2qUnLCJxFo3v9YAMzy/EUDW9uhOVspHuFyLNvKwTNY8g+Ig6mlVFP+IRC4te74rqo0tgh+M6PxJxpY=
X-Received: by 2002:a9f:3412:: with SMTP id q18mr502193uab.23.1632331634802;
 Wed, 22 Sep 2021 10:27:14 -0700 (PDT)
MIME-Version: 1.0
References: <dzeo4lLK7Tl1pTALvjDmK5QNsJku8odrUY91o0AxO8@lists.ettus.com>
In-Reply-To: <dzeo4lLK7Tl1pTALvjDmK5QNsJku8odrUY91o0AxO8@lists.ettus.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Wed, 22 Sep 2021 13:27:04 -0400
Message-ID: <CAL7q81spMXa6=Ad2AP4qDT_yx2x1EhAuG0peFLPBHic3GS2rCg@mail.gmail.com>
To: thebouleoffools@gmail.com
Message-ID-Hash: GIXCSYQ4IFBG2PSLBF7LCXN2OUHH2UVS
X-Message-ID-Hash: GIXCSYQ4IFBG2PSLBF7LCXN2OUHH2UVS
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Radio loopback / "scaling@OUTPUT_EDGE:0" error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GIXCSYQ4IFBG2PSLBF7LCXN2OUHH2UVS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2175694263838419760=="

--===============2175694263838419760==
Content-Type: multipart/alternative; boundary="0000000000003f95c705cc98d3dd"

--0000000000003f95c705cc98d3dd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

What version of UHD are you using?

Jonathon

On Wed, Sep 22, 2021, 13:18 <thebouleoffools@gmail.com> wrote:

> I=E2=80=99m trying to do a simple repeater setup with my E320. I found th=
at
> there=E2=80=99s an example file that does essentially that, =E2=80=9Crfno=
c_radio_loopback.=E2=80=9D
> However, right out of the box, running this file gives the error:
>
> [ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0/DDC#0:0 -> 0/DUC#0:1 without
> disabling property_propagation_active will lead to unresolvable graph!
>
>
> So I modified the file to do the connections manually and set
> =E2=80=9Cskip_propagation" to true on that particular connection. When
> graph->commit is called, I now get this error:
>
> RuntimeError: AccessError: Attemping to read property =E2=80=98scaling@OU=
TPUT_EDGE:0=E2=80=99
> before it was initialized!
>
> I=E2=80=99m pretty stumped on this one. The only mention of setting a sca=
ling
> property is in some test programs, that call:
>
> mock_source_term.set_edge_property<double>(=E2=80=9Cscaling=E2=80=9D, 1.0=
,
> {res_source_info::OUTPUT_EDGE, 0});
>
> The DDC or DUC blocks do not have this method. Anything related to scalin=
g
> in the ddc_block_control appears to be protected or private. What am I
> doing wrong?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003f95c705cc98d3dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto"><br></div><div dir=3D"auto">What =
version of UHD are you using?</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed, Sep 22, 2021, 13:18  &lt;<a href=3D"mailto:theb=
ouleoffools@gmail.com">thebouleoffools@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><p>I=E2=80=99m trying to do a simple repeater =
setup with my E320. I found that there=E2=80=99s an example file that does =
essentially that, =E2=80=9Crfnoc_radio_loopback.=E2=80=9D However, right ou=
t of the box, running this file gives the error:</p><p>[ERROR] [RFNOC::GRAP=
H::DETAIL] Adding edge 0/DDC#0:0 -&gt; 0/DUC#0:1 without disabling property=
_propagation_active will lead to unresolvable graph!</p><p><br></p><p>So I =
modified the file to do the connections manually and set =E2=80=9Cskip_prop=
agation&quot; to true on that particular connection. When graph-&gt;commit =
is called, I now get this error:</p><p>RuntimeError: AccessError: Attemping=
 to read property =E2=80=98scaling@OUTPUT_EDGE:0=E2=80=99 before it was ini=
tialized!</p><p>I=E2=80=99m pretty stumped on this one. The only mention of=
 setting a scaling property is in some test programs, that call:</p><p>mock=
_source_term.set_edge_property&lt;double&gt;(=E2=80=9Cscaling=E2=80=9D, 1.0=
, {res_source_info::OUTPUT_EDGE, 0});</p><p>The DDC or DUC blocks do not ha=
ve this method. Anything related to scaling in the ddc_block_control appear=
s to be protected or private. What am I doing wrong?</p><p><br></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--0000000000003f95c705cc98d3dd--

--===============2175694263838419760==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2175694263838419760==--
