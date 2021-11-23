Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B201C45AB39
	for <lists+usrp-users@lfdr.de>; Tue, 23 Nov 2021 19:24:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A20CD3843B1
	for <lists+usrp-users@lfdr.de>; Tue, 23 Nov 2021 13:24:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="I2vW5oT3";
	dkim-atps=neutral
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
	by mm2.emwd.com (Postfix) with ESMTPS id D53C23839A4
	for <usrp-users@lists.ettus.com>; Tue, 23 Nov 2021 13:23:21 -0500 (EST)
Received: by mail-ua1-f51.google.com with SMTP id p2so45575156uad.11
        for <usrp-users@lists.ettus.com>; Tue, 23 Nov 2021 10:23:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0BP+dJzhX2uU+YbVqM3UgM9esLHyUzynvyuTLO+kaZ8=;
        b=I2vW5oT3Qt6WUQ356BJMSrKw1OEnWS2Xwe+i0GpLRr/SoFCgVYBnylg2Xn5ND0uJnd
         ySQ+0Nvm5Bwvckdovq/vdJkIPSyCJXivytqztwOHOQWu8eyfwR6cJspdX3yyoZmVystK
         js8x6f/BbP5gst1sjJWNSArnSNeqM89HP77vyeiGnzMMquBiYuE5VETxf5SNtfRl8ub7
         CvuKtXgKnQj+TyIcdte1OH0+4dAYlinHnTnmreoJAtcH9g/L3JxYArHnUBqSynNVobbv
         hHsF9WkoplXCMFwiDA4BNljEzZJfGynEnZ1mCFHWankKxr2C0AwNdwam4qjDSinVXZ0Y
         nHyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0BP+dJzhX2uU+YbVqM3UgM9esLHyUzynvyuTLO+kaZ8=;
        b=vebTy8LAMK2NZqwiTUjHqtsJuc8j1xUq5873sj7WJdhOY/QjqgBCjEBw1gxCQK2KCw
         2iz/2smguRxcgvmiue6rUoScDmaX9QyYYUg2k77ecC08OBTqZdxwHtqocnsO/WcK1ndB
         RtbujAiGaJlsDr0jwvPtnLeRPG9M2Wkbns89ijZrlcvf8061TZj+dw1ek3JNClUosOGN
         yXvQi5ONoxvzVTROxjGF0YwUze6HIPDSXqNwtNgzzHfdNIJWBdju+hPzlL8xlR6LKYO8
         Z1aTYf57fXKzPTTCOl8+uJLjkhoSQ6+E9y5EJXYEIQ7sWsih2hkpb69Ve6GDc6GFEcVU
         kf5w==
X-Gm-Message-State: AOAM531JzAHronwF9RLfdNL/sCvZ9+xJOVo/yP5XyCY7Ji0uuCBf01Gk
	d8EnFMoL/btB/vF5T1sHy/plBAR0hOGp+n1IqlUkkdHTKF6uog==
X-Google-Smtp-Source: ABdhPJxMjrEJZ3I4WjgbQ/VQKilgRDxhTocYEuGcnLAzpHrsk1WCZZejbLzEDPCpOinR0KzPflE86I/BtFHOR3qIfDU=
X-Received: by 2002:a9f:266f:: with SMTP id 102mr11383470uag.44.1637691800871;
 Tue, 23 Nov 2021 10:23:20 -0800 (PST)
MIME-Version: 1.0
References: <OL1P279MB00831EFE3B28943071A61160A0609@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
 <F2B2D4E0-C35D-45B0-BDF1-FFF42E1BAB89@gmail.com>
In-Reply-To: <F2B2D4E0-C35D-45B0-BDF1-FFF42E1BAB89@gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Tue, 23 Nov 2021 13:22:45 -0500
Message-ID: <CAL7q81upKM0ydjvy+Msdob_QbVdVvyo6jpoToJToRP3K9tUfHA@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: GH4JFYGIR7ZUBXYMWXYALX47VI4UKXEH
X-Message-ID-Hash: GH4JFYGIR7ZUBXYMWXYALX47VI4UKXEH
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?B?U2tvcnN0YWQsIErDuHJu?= <jsk@nkom.no>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1 memory leak?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GH4JFYGIR7ZUBXYMWXYALX47VI4UKXEH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6971244208892338391=="

--===============6971244208892338391==
Content-Type: multipart/alternative; boundary="0000000000000afec205d178d6fd"

--0000000000000afec205d178d6fd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jorn,

Can you provide an example program we can use to reproduce the issue?

Jonathon

On Tue, Nov 23, 2021 at 12:44 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> This looks like it might be a bug to me.
>
>
>
> Sent from my iPhone
>
> On Nov 23, 2021, at 6:00 AM, Skorstad, J=C3=B8rn <jsk@nkom.no> wrote:
>
> =EF=BB=BF
>
> Hello,
>
>
>
> I have some trouble using the UHD 4.1.0.2 library. I am using RFNOC block=
s
> RADIO and DDC, and setting up an RX stream using graph->create_rx_streame=
r.
> The receiver loop is running in its own thread doing something like this
> (simplified):
>
>
>
> uhd::stream_cmd_t
> stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_MORE);
>
> stream_cmd.num_samps  =3D size_t(sampsPerBuff);
>
> stream_cmd.stream_now =3D true;
>
> stream_cmd.time_spec  =3D uhd::time_spec_t();
>
>
>
> for (;;) {
>
>   rx_stream->issue_stream_cmd(stream_cmd);
>
>   rx_stream->recv(&buffer.front(), sampsPerBuff, md, 3.0, false);
>
>   std::this_thread::sleep_for(std::chrono::milliseconds(2));
>
> }
>
>
>
> I am developing for an E310 sg3.
>
>
>
> When calling issue_stream_cmd repeatedly this way memory usage goes up
> until resources are depleted (few hours). If stream_cmd is replaced with
> STREAM_MODE_START_CONTINUOUS and called just once memory usage is normal.
> But for the application developed the mode NUM_SAMPS_AND_MORE is better
> suited. It is also what we used with the 3.14.1 library, without any memo=
ry
> problems like this.
>
>
>
> Any tips?
>
>
>
> BR
>
> Jorn
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000afec205d178d6fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jorn,<div><br></div><div>Can you provide an example pro=
gram we can use to reproduce the issue?</div><div><br></div><div>Jonathon</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Tue, Nov 23, 2021 at 12:44 PM Marcus D Leech &lt;<a href=3D"mailto:p=
atchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">This looks=
 like it might be a bug to me.=C2=A0<div><br></div><div><br><br><div dir=3D=
"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cit=
e">On Nov 23, 2021, at 6:00 AM, Skorstad, J=C3=B8rn &lt;<a href=3D"mailto:j=
sk@nkom.no" target=3D"_blank">jsk@nkom.no</a>&gt; wrote:<br><br></blockquot=
e></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF






<div>
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have some trouble using the UHD 4.1.0.2 library. I=
 am using RFNOC blocks RADIO and DDC, and setting up an RX stream using gra=
ph-&gt;create_rx_streamer. The receiver loop is running in its own thread d=
oing something like this (simplified):<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STRE=
AM_MODE_NUM_SAMPS_AND_MORE);<u></u><u></u></p>
<p class=3D"MsoNormal">stream_cmd.num_samps=C2=A0 =3D size_t(sampsPerBuff);=
<u></u><u></u></p>
<p class=3D"MsoNormal">stream_cmd.stream_now =3D true;<u></u><u></u></p>
<p class=3D"MsoNormal">stream_cmd.time_spec=C2=A0 =3D uhd::time_spec_t();<u=
></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">for (;;) {<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0 rx_stream-&gt;issue_stream_cmd(stream_cmd);<u=
></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0 rx_stream-&gt;recv(&amp;buffer.front(), samps=
PerBuff, md, 3.0, false);<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0 std::this_thread::sleep_for(std::chrono::mill=
iseconds(2));<u></u><u></u></p>
<p class=3D"MsoNormal">}<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am developing for an E310 sg3.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">When calling issue_stream_cmd repeatedly this way me=
mory usage goes up until resources are depleted (few hours). If stream_cmd =
is replaced with STREAM_MODE_START_CONTINUOUS and called just once memory u=
sage is normal. But for the application
 developed the mode NUM_SAMPS_AND_MORE is better suited. It is also what we=
 used with the 3.14.1 library, without any memory problems like this.<u></u=
><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Any tips?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">BR <u></u><u></u></p>
<p class=3D"MsoNormal">Jorn<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>


<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000afec205d178d6fd--

--===============6971244208892338391==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6971244208892338391==--
