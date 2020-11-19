Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E92462B8AB1
	for <lists+usrp-users@lfdr.de>; Thu, 19 Nov 2020 05:55:02 +0100 (CET)
Received: from [::1] (port=33592 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfbyE-00069X-Rh; Wed, 18 Nov 2020 23:54:58 -0500
Received: from mail-vk1-f178.google.com ([209.85.221.178]:37066)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kfbyB-00065L-4Z
 for usrp-users@lists.ettus.com; Wed, 18 Nov 2020 23:54:55 -0500
Received: by mail-vk1-f178.google.com with SMTP id w123so1060998vka.4
 for <usrp-users@lists.ettus.com>; Wed, 18 Nov 2020 20:54:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IoREGimqkmv1xc5nNIx1JPREAlXxyW4J+Po6XA2N+dg=;
 b=tIWLNjjLBD82aS0Zlq2+73JG4ELDKwIwkN8bZ2gbqhCRVbNu/lVQ4T6gbQiajiY5ov
 v+r4f2Ao5w8dWOyQuTsHEXKUCDu2GvD4VArW8WLs/flW6egA+3cmq96pKrh9wahe4v8D
 giVbLhxM1hs4UT5h2V9Opf3EDayrs2GUuiMBYFBnZlA+bRterzpngvAVaFfsp7T/Cfhd
 zVj5bzTtysR8o3BSckot4lICL7p0RYZG52vXR8RF/va4lDw9uyYXu3hZmW0Hrme/fVaZ
 dck72icyAA/VGAx+tQJ4xrfOBHnqaIqFTBz+ycaNK8nCs5VH6b/SYCqQP9ooIuENorHx
 CUag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IoREGimqkmv1xc5nNIx1JPREAlXxyW4J+Po6XA2N+dg=;
 b=SjTLpmqU8013smU/rczvR2ab2rIsLLF8cDlRZ4BCOsB5da/iz2Eh1UKB3AdlGaNslF
 6uiCDuDsOqowm2V9LSdP8VZahnzZQCzU29w87yxUXoXzksXgpLOYbhHmHzCJFpZpAyWw
 36RxvD24zoCKfAocY+2x/NQTDFm1vq46rb6JFbsynqHgEL88x3r9E3fPN9K0EXPPESVz
 dQmKGU93Lf5Mj8daPBXF7n6K3DygIlwegNSV4byOP7TpgyyaG+yzLtuNFdn1YlxkSweH
 KFygd9PaTKWf9HS3iRWh1kDGWdyDq3eG7W5GKMIKhivNZNXcUaai8c2HX/FMA19T7OOu
 lrZg==
X-Gm-Message-State: AOAM532VcjrLvrQN9rqQqroBCuw/YCGIe9efsq3xKTJtFRI7kxrWeVmi
 D9WdGbRzGKCVcvkwMrwRLdZ4n+sUDXJoGgEdxmCekruw
X-Google-Smtp-Source: ABdhPJx6ksTQKSyCOJ5HGeKEEpjrlXxApkcHwSX1ggY7icQnTzFHfNz0LarFtqCqccJv5lM5I70Aaikx8hW8PYCORso=
X-Received: by 2002:a1f:2cd4:: with SMTP id s203mr7468445vks.6.1605761654267; 
 Wed, 18 Nov 2020 20:54:14 -0800 (PST)
MIME-Version: 1.0
References: <CAPRRyxt8qaJ-DbgKbDQbXYMt8=0PKC42JReqb=LrUxR0ZCEJqg@mail.gmail.com>
 <1B15B53D-E33A-4D5A-8CFB-B20AA0853B5D@tiscali.it>
 <CAPRRyxuHE=c3Kx2ywT=4kdk1LExzk-_Tbo_7Dxag1CpEbM6xdA@mail.gmail.com>
 <2e936e16-5b7c-404c-7393-e11bde32f437@elitecoding.org>
 <d8f6c823-b59f-3917-9b9f-96733db91f75@bitstovolts.com>
 <CAPRRyxthGC9vsfSDBwX2bj71frR9Hs=uLgYmFMBwHwCH0D+DJw@mail.gmail.com>
In-Reply-To: <CAPRRyxthGC9vsfSDBwX2bj71frR9Hs=uLgYmFMBwHwCH0D+DJw@mail.gmail.com>
Date: Wed, 18 Nov 2020 23:53:38 -0500
Message-ID: <CAL7q81u7CzFZqTEyVp-kjzVOqVF4p4b-omUsT+pdu1ZBLVD__w@mail.gmail.com>
To: Ivan Zahartchuk <adray0001@gmail.com>
Cc: Derek Kozel <derek@bitstovolts.com>,
 usrp-users <usrp-users@lists.ettus.com>, 
 discuss-gnuradio <discuss-gnuradio@gnu.org>, Ivan Iudice <krono86@tiscali.it>
Subject: Re: [USRP-users] Direction finding based on USRP E310 board
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============1116111876452721440=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============1116111876452721440==
Content-Type: multipart/alternative; boundary="000000000000ff430005b46e84d4"

--000000000000ff430005b46e84d4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ivan,

Try building with the gr-ettus maint-3.7 branch.

Jonathon

On Wed, Nov 18, 2020 at 1:08 PM Ivan Zahartchuk via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
> Hello I am trying to install RFNoC for uhd 3.15. As far as I understand,
> this version supports RFNoC. And in order for me to have blocks in
> gnuradio, as I understand it, I need to install gr-ettus. But when
> installing, I get this error The found UHD version (3.15.0.0-3build2) is
> not compatible with the version required (4.0). how can I be in such a
> situation?
>
> =D1=81=D1=80, 18 =D0=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=B3. =D0=B2 16:24, Der=
ek Kozel <derek@bitstovolts.com>:
>
>> Hi Ivan,
>>
>> The TX/RX and RX2 are ports on the same receiver channel. As Julian says
>> there are two receivers, A and B. For a receive only application the RX2
>> ports are slightly better performing as they have one less switch that
>> the signal passes through.
>>
>> Regards,
>> Derek
>>
>> On 18/11/2020 14:01, Julian Arnold wrote:
>> > Ivan,
>> >
>> > to the best of my knowledge, there should not be any RX1 port.
>> > Instead, you should have two (coherent) channels "A" and "B" both
>> > allowing you to select one out of two available antenna ports when
>> > receiving ("TX/RX" or "RX2").
>> >
>> > Cheers,
>> > Julian
>> >
>> > On 11/18/20 10:31 AM, Ivan Zahartchuk via USRP-users wrote:
>> >>
>> >> Another question of interest is which channels are coherent? Rx1 and
>> >> RX2 or RX1 and RX / TX?
>> >>
>> >> =D0=B2=D1=82, 17 =D0=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=B3. =D0=B2 01:56,=
 Ivan Iudice <krono86@tiscali.it
>> >> <mailto:krono86@tiscali.it>>:
>> >>
>> >>     Right!
>> >>     Be careful, DOA estimation using only 2 antennas works but it=E2=
=80=99s not
>> >>     so accurate.
>> >>     Enjoy!
>> >>
>> >>     Ivan
>> >>
>> >>      > Il giorno 17 nov 2020, alle ore 00:35, Ivan Zahartchuk
>> >>     <adray0001@gmail.com <mailto:adray0001@gmail.com>> ha scritto:
>> >>      >
>> >>      > =EF=BB=BF
>> >>      >
>> >>      >
>> >>      >
>> >>      > That is, in theory, I can simply start two streams from two
>> >>     channels and further process them using certain direction finding
>> >>     algorithms?
>> >>      >
>> >>      >
>> >>
>> >>
>> >> _______________________________________________
>> >> USRP-users mailing list
>> >> USRP-users@lists.ettus.com
>> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> >>
>> >
>>
>> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ff430005b46e84d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ivan,<div><br></div><div>Try building with the gr-ettus=
 maint-3.7 branch.</div><div><br></div><div>Jonathon</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 18, 2=
020 at 1:08 PM Ivan Zahartchuk via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><br><span s=
tyle=3D"color:rgb(32,33,36);font-family:arial,sans-serif;font-size:28px;whi=
te-space:pre-wrap;background-color:rgb(248,249,250)"></span>Hello I am tryi=
ng to install RFNoC for uhd 3.15. As far as I understand, this version supp=
orts RFNoC. And in order for me to have blocks in gnuradio, as I understand=
 it, I need to install gr-ettus. But when installing, I get this error The =
found UHD version (3.15.0.0-3build2) is not compatible with the version
  required (4.0). how can I be in such a situation?<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D1=80, 18 =D0=
=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=B3. =D0=B2 16:24, Derek Kozel &lt;<a href=
=3D"mailto:derek@bitstovolts.com" target=3D"_blank">derek@bitstovolts.com</=
a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Ivan,=
<br>
<br>
The TX/RX and RX2 are ports on the same receiver channel. As Julian says <b=
r>
there are two receivers, A and B. For a receive only application the RX2 <b=
r>
ports are slightly better performing as they have one less switch that <br>
the signal passes through.<br>
<br>
Regards,<br>
Derek<br>
<br>
On 18/11/2020 14:01, Julian Arnold wrote:<br>
&gt; Ivan,<br>
&gt;<br>
&gt; to the best of my knowledge, there should not be any RX1 port.<br>
&gt; Instead, you should have two (coherent) channels &quot;A&quot; and &qu=
ot;B&quot; both <br>
&gt; allowing you to select one out of two available antenna ports when <br=
>
&gt; receiving (&quot;TX/RX&quot; or &quot;RX2&quot;).<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Julian<br>
&gt;<br>
&gt; On 11/18/20 10:31 AM, Ivan Zahartchuk via USRP-users wrote:<br>
&gt;&gt;<br>
&gt;&gt; Another question of interest is which channels are coherent? Rx1 a=
nd <br>
&gt;&gt; RX2 or RX1 and RX / TX?<br>
&gt;&gt;<br>
&gt;&gt; =D0=B2=D1=82, 17 =D0=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=B3. =D0=B2 01:=
56, Ivan Iudice &lt;<a href=3D"mailto:krono86@tiscali.it" target=3D"_blank"=
>krono86@tiscali.it</a> <br>
&gt;&gt; &lt;mailto:<a href=3D"mailto:krono86@tiscali.it" target=3D"_blank"=
>krono86@tiscali.it</a>&gt;&gt;:<br>
&gt;&gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 Right!<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 Be careful, DOA estimation using only 2 antenna=
s works but it=E2=80=99s not<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 so accurate.<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 Enjoy!<br>
&gt;&gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 Ivan<br>
&gt;&gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; Il giorno 17 nov 2020, alle ore 00:3=
5, Ivan Zahartchuk<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 &lt;<a href=3D"mailto:adray0001@gmail.com" targ=
et=3D"_blank">adray0001@gmail.com</a> &lt;mailto:<a href=3D"mailto:adray000=
1@gmail.com" target=3D"_blank">adray0001@gmail.com</a>&gt;&gt; ha scritto:<=
br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; =EF=BB=BF<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; That is, in theory, I can simply sta=
rt two streams from two<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 channels and further process them using certain=
 direction finding<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 algorithms?<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;<br>
&gt;<br>
<br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000ff430005b46e84d4--


--===============1116111876452721440==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1116111876452721440==--

