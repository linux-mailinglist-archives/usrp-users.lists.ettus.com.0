Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1D03C5E44
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 16:20:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CCB3F383DD1
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 10:20:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EBWiNUnF";
	dkim-atps=neutral
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	by mm2.emwd.com (Postfix) with ESMTPS id C08DA383E8B
	for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 10:12:45 -0400 (EDT)
Received: by mail-lj1-f172.google.com with SMTP id h19so13578962ljl.4
        for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 07:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QpHJx5U6gUcMIPIv9IBMX2FFgJFUjPMqtqBLPo1n/Wk=;
        b=EBWiNUnF3bQJnd6HNEr98S3KVmnKcZ03kfQym1baqgzuaub3Xp8vpi0xNvHT83Rzhs
         8xCLEZ1Xvw0R5JT+QT1FDNQd3xethM6vJmrtt++JxoKVXPIN2E8EsM45WLEhG6NwPebw
         K14e5kPzyn7ljbeQA8Lj0etFaIIHmuTr4kAQX0QTaD2VcKRx0C5+3b1UmRFuqaEaA9Gj
         JyWdDD7gKMW+kE4mEKOAd6eOJ8XY77Oc1sl4L0nDJN9QV0UNbcXm0NEWQk4jy+wLKqer
         Pjcsr9kotj7ER4drrWMLd9Pgdn7bF0xeTgQgzru33kmsh4G1zadvZEj1rFcmp0xWZML5
         iKbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QpHJx5U6gUcMIPIv9IBMX2FFgJFUjPMqtqBLPo1n/Wk=;
        b=QYp109qjugT+D+2VfTjc/aO5ehqbQZnamaOmqaqHjew5DPFSbiIXZojkcccOtIi9bP
         XIiwqY3Ztzh6K7Ribe1OOI6foyZ8BOR01ZOou2GYwCBba/HTv2axW8rJd1fzupYufGqK
         cBb9T3l7vSoGQqea9IzZP2kvX8QbGiAdWT9L0kQir1s3ZOp+IdxDFkwifalqe9LCkbC1
         5PTVcQ1+V4C8sDEME4PFFPDpTKZNAGA2DJ5mhItl+Fuai9UJu+YeunalUzKyM9qFhd+6
         SL/NQz2AjXGfNRVwydIJD4b3RJOXTBKOxj9g8/36Nr9X7/L5gsvq0DZzjLUC4eKgZXlu
         qyzQ==
X-Gm-Message-State: AOAM531aD0WD7HafeXn//KzgXAwHF/5+J+rw29rhsdco94j9sThpjYIO
	tGgDBmz/K7QZZ0JnvXgU1izwZvj7CdYJKfiqjSU=
X-Google-Smtp-Source: ABdhPJyxwJlew0sh0vvbTKJZ8NJQ1V+I7TNKns5zxLp+FqTlrup8PNsjsJaQOI6LJEq9oI4eCvX5eAlh+A/w69kKULY=
X-Received: by 2002:a2e:a307:: with SMTP id l7mr16446235lje.71.1626099164487;
 Mon, 12 Jul 2021 07:12:44 -0700 (PDT)
MIME-Version: 1.0
References: <ef868d72c8cd4f889c9efa8ed61d4db3@tudelft.nl>
In-Reply-To: <ef868d72c8cd4f889c9efa8ed61d4db3@tudelft.nl>
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Mon, 12 Jul 2021 10:12:33 -0400
Message-ID: <CACwKM9JXQ+XqyhvoPz-jMeD_PXMWSfjN9or2byObC8XWUAkzoQ@mail.gmail.com>
To: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
Message-ID-Hash: FRWW3NYGY2IBVJHYEDNHZNYW3UYZCVUV
X-Message-ID-Hash: FRWW3NYGY2IBVJHYEDNHZNYW3UYZCVUV
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC TX Streamer issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FRWW3NYGY2IBVJHYEDNHZNYW3UYZCVUV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1300485825013866394=="

--===============1300485825013866394==
Content-Type: multipart/alternative; boundary="00000000000011a52205c6edb787"

--00000000000011a52205c6edb787
Content-Type: text/plain; charset="UTF-8"

the default X310 image has static connections in between the radio and the
endpoint on the crossbar, so while the dynamic routing of the stream is
still available, the two need to be used as a pair
in the image the layout is like this:
RX->DDC->EP->crossbar
EP->DUC->EP->crossbar

the crossbar isn't exposed to the user via GNURadio, but i'm alluding to
the deepre architecture of RFNoC.
i'd recommend watching and reviewing these two presentations and their
accompanying video thoroughly as they describe the general architecture and
move into development.

Presentations:
https://www.gnuradio.org/grcon/grcon20/grcon20_RFNoC_4_Part1.pdf
https://www.gnuradio.org/grcon/grcon20/grcon20_RFNoC_4_Part2.pdf
Video: https://youtu.be/M9ntwQie9vs





On Mon, Jul 12, 2021 at 7:41 AM Cherif Diouf <C.E.V.Diouf@tudelft.nl> wrote:

> Hi,
>
>
>
> I am using an X310 device and I have freshly install RFNoC 4, (Vivado
> 2019.1, UHD 4.0, GNU Radio 3.8, gr-ettus )using the migration guide
>
>
>
> (https://kb.ettus.com/RFNoC_4_Migration_Guide#Prerequisites).
>
>
>
> I tried to build a simple GNU Radio flowgraph
>
>
>
> GNU Radio source signal (cosine) -> RFNoC TX streamer -> RFNoC Radio.
>
> But when I run the graph I obtain the following error:
>
>
>
> *"/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py", line 1584, in
> make     return _ettus_swig.rfnoc_tx_streamer_make(graph, num_chans,
> stream_args, vlen) RuntimeError: LookupError: KeyError: [convert] Cannot
> find an item size for: `'*
>
>
>
> Do you have any idea where it should come from.
>
>
>
> Best Regards
>
> Cherif
>
>
>
> Below is the full tx script
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000011a52205c6edb787
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">the default X310 image has static connections in between t=
he radio and the endpoint on the crossbar, so while the dynamic routing of =
the stream is still available, the two need to be used as a pair<div>in the=
 image the layout is like this:<br>RX-&gt;DDC-&gt;EP-&gt;crossbar</div><div=
>EP-&gt;DUC-&gt;EP-&gt;crossbar</div><div><br></div><div>the crossbar isn&#=
39;t exposed to the user via GNURadio, but i&#39;m alluding=C2=A0to the dee=
pre architecture of RFNoC.=C2=A0</div><div>i&#39;d recommend watching and r=
eviewing these two presentations and their accompanying video thoroughly as=
 they describe the general architecture and move into development.</div><di=
v><br></div><div>Presentations:</div><div><a href=3D"https://www.gnuradio.o=
rg/grcon/grcon20/grcon20_RFNoC_4_Part1.pdf">https://www.gnuradio.org/grcon/=
grcon20/grcon20_RFNoC_4_Part1.pdf</a><br></div><div><a href=3D"https://www.=
gnuradio.org/grcon/grcon20/grcon20_RFNoC_4_Part2.pdf">https://www.gnuradio.=
org/grcon/grcon20/grcon20_RFNoC_4_Part2.pdf</a><br></div><div>Video:=C2=A0<=
a href=3D"https://youtu.be/M9ntwQie9vs">https://youtu.be/M9ntwQie9vs</a></d=
iv><div><br></div><div><br></div><div><br></div><div><br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jul =
12, 2021 at 7:41 AM Cherif Diouf &lt;<a href=3D"mailto:C.E.V.Diouf@tudelft.=
nl">C.E.V.Diouf@tudelft.nl</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">





<div lang=3D"NL">
<div class=3D"gmail-m_-58900789772059627WordSection1">
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I am using an X310 device and I=
 have freshly install RFNoC 4, (Vivado 2019.1, UHD 4.0, GNU Radio 3.8, gr-e=
ttus )using the migration guide<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">(<a href=3D"https://kb.ettus.co=
m/RFNoC_4_Migration_Guide#Prerequisites" target=3D"_blank">https://kb.ettus=
.com/RFNoC_4_Migration_Guide#Prerequisites</a>).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I tried to build a simple GNU R=
adio flowgraph<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">GNU Radio source signal (cosine=
) -&gt; RFNoC TX streamer -&gt; RFNoC Radio.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">But when I run the graph I obta=
in the following error:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-GB" style=3D"color:black">&quot;=
/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py&quot;, line 1584, =
in make<br>
=C2=A0=C2=A0=C2=A0 return _ettus_swig.rfnoc_tx_streamer_make(graph, num_cha=
ns, stream_args, vlen)<br>
RuntimeError: LookupError: KeyError: [convert] Cannot find an item size for=
: `&#39;</span></b><b><span lang=3D"EN-GB" style=3D"font-size:12pt;color:bl=
ack"><u></u><u></u></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Do you have any idea where it s=
hould come from.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Best Regards<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Cherif<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Below is the full tx script<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000011a52205c6edb787--

--===============1300485825013866394==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1300485825013866394==--
