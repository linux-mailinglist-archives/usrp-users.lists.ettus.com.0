Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B93AD21A226
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jul 2020 16:32:05 +0200 (CEST)
Received: from [::1] (port=54422 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jtXag-00036X-SN; Thu, 09 Jul 2020 10:31:58 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:40748)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jtXad-0002wd-Uh
 for usrp-users@lists.ettus.com; Thu, 09 Jul 2020 10:31:55 -0400
Received: by mail-ot1-f54.google.com with SMTP id c25so1821468otf.7
 for <usrp-users@lists.ettus.com>; Thu, 09 Jul 2020 07:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cHp9CtVTZEQPVMA33PwKs2JZj+oQ5wdTdubeA2MZBLw=;
 b=EMYVM0UA4H705wJREt5o+5AqxvMu7hrc2J/KaGu6NlccJftj5H7erCsSavZN3otsLH
 RH0MY9Gp2gqaptCXugFjAtONotteGtk8M25z/C1zWNj0zZ284ZfUpQPEVOPVhQ2tLrZL
 1T9wPHuF8nY9UiXXrayvFt5lR36Ei2Jt+PFIO8pqWyTjF+hhReqR/+8++QF1GlEaLNHU
 sO6HltYq0DIf7vqI8Gm2oSNihloRXjzoc8YrsgtFMT2DGynwU2jf7dK3p8Ysqo2i8iDU
 MM3lV30oMK5r1Adji2g/krZ4PADZ9cTjnowO7tTbY/4PKhPdC2kkQazVp/aiBkZJfLfw
 9JTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cHp9CtVTZEQPVMA33PwKs2JZj+oQ5wdTdubeA2MZBLw=;
 b=PzlIF3OVJWlTwE5x1HW01xWlCZ647ltgtZchaePe3uNNt+VyWF8RaToNPVddIF6YGr
 yktGv2QNTytXyhs5t85s7HeWAnGTh487IZtw+9ejaC/p4aHWpJZal8+RT0H8oQF+Vj30
 onM9PumYtGJztRSdpCk2MnH3AibHOgxrb0Df4px6veL9jWJBs6hdPDqdQnT3/5CNNkId
 2lTXD7Jw0Pb9ZKH11aVvJmKUVAD90CFV5j8YLhOHyjKhxx029tdKUlqjccm9kpWFBnP+
 vgja4SC6EfzS+g+dwvEGTPLPqmnCwXaUUC7z9El4WsC6WWvrKaYoe7N3vuJWW3/NHK6/
 NMWA==
X-Gm-Message-State: AOAM533pg2pkYh4yZELvC+0dFjIpa/LoTGXrhhm3xda3tfOpKA9BMbOE
 29D4JvLnQINdGRPzWGAK6CVNVy6ft6AbxkOZHDAjRw==
X-Google-Smtp-Source: ABdhPJzEwf4rO82OgK4IW3e19Bxvp2nD3jTiYUeyIwwmL88NY+0ukDAqtNOGz1scvTESPjkl2LhC+wZt2KifxKbjbAg=
X-Received: by 2002:a05:6830:1c6e:: with SMTP id
 s14mr49258372otg.58.1594305075008; 
 Thu, 09 Jul 2020 07:31:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAB50+dT4S9Q-uWfgP5-dar1A4=+DmzdjpwHuWpXH29Hq5cQSKQ@mail.gmail.com>
 <CAB50+dTUoA=ZzJGhh-bH9=MC=cNUazxvc9Spy-AM8gzun3++7g@mail.gmail.com>
 <CAL7q81sNmLhv6j+4AJdoEaE9GdvjQHyXtjNWJy3TgDu1Tnm+fg@mail.gmail.com>
In-Reply-To: <CAL7q81sNmLhv6j+4AJdoEaE9GdvjQHyXtjNWJy3TgDu1Tnm+fg@mail.gmail.com>
Date: Thu, 9 Jul 2020 10:31:03 -0400
Message-ID: <CAB__hTT-iuE4ESsd5ro1e34LLqBgC8fkncevTNR6N2-SPtycxg@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Subject: Re: [USRP-users] e310, RFNOC, GNURadio Full Duplex,
 Custom RFNOC Block
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2969066337056574645=="
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

--===============2969066337056574645==
Content-Type: multipart/alternative; boundary="000000000000a9322505aa031353"

--000000000000a9322505aa031353
Content-Type: text/plain; charset="UTF-8"

Hi Andrew,
You can likely use axi_rate_change (in between axi_wrapper and the user
logic) to handle the tuser signal if you want.
Rob

On Wed, Jul 8, 2020 at 10:48 PM Jonathon Pendlum via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Andrew,
>
> AXI Wrapper's SIMPLE_MODE can only be used with blocks that do not perform
> a rate change. Since you are using keep_one_in_n, your block is performing
> a decimation of sorts, so you cannot use SIMPLE_MODE. You should manually
> set up the header on tuser using noc_block_keep_one_in_n.v as an example.
> This may be the cause of your problem.
>
> Jonathon
>
> On Wed, Jul 8, 2020 at 7:26 PM Andrew Payne via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Actually I have found a clue! In
>> usrp3/lib/rfnoc/noc_block_keep_one_in_n.v, axi_wrapper simple_mode is
>> set to off, instead opting to use cvita_hdr_modify.  I opted to use
>> keep_one_in_n.v in my custom noc_block, BUT, I have set simple mode to
>> 1.  And if I go into usrp3/lib/rfnoc/axi_wrapper.v, at the top the
>> comments for SIMPLE_MODE say "Automatically handle header
>> (s_axis_data_tuser), packets must be consumed / produced 1-to-1".
>> What does this mean?  That the CEs installed at the crossbar are all
>> beholden to the rate of this CE?  Because remember with my issue, my
>> custom RFNOC block (which incorporates keep_one_in_n.v with simple
>> mode enabled) works well, the TX with DUC alone works well, but TX
>> with DUC and FIFO plus my custom RFNOC block seems to greatly
>> attenuate TX.  Could the TX stream be slowed down by my custom RFNOC
>> CE?
>>
>> On Wed, Jul 8, 2020 at 4:37 PM Andrew Payne <wandrewp@gmail.com> wrote:
>> >
>> > I have an issue with my setup I'm hoping to solve.
>> >
>> > I have an e310 running the UHD 3.15 LTS image.
>> >
>> > I have created one custom RFNOC block, which has 2 RX streams, and it
>> > is composed of the following chain: complex to magnitude ---> moving
>> > sum ---> keep one in n (n=2048) ---> FIFO with input parameter SIZE=5,
>> > so then I don't need the RFNOC FIFO block to save space when
>> > generating the FPGA image file.  The moving sum block generates a sum
>> > from a power of 2 samples, then I feed the keep one in n block with a
>> > resulting sum whose LSBs are truncated, effectively dividing by a
>> > power of 2 to effectively generate a moving average. I am using the
>> > AXI Wrapper with Simple Mode, noc shell, etc, all generated from the
>> > rfnoc mod tool.
>> >
>> > It works great, but I also have a TX output signal, just a sine wave,
>> > in my gnuradio flowgraph.  Its output, depending on the RF center
>> > frequency, is greatly attenuated (the greatest I can get it is like
>> > -39dBm, but it falls off to -55).  But if I just have the TX output
>> > alone without my RX RFNOC block, I can get the output over 0dBm or
>> > more, haven't tried going higher than that.
>> >
>> > My question is, how can I get the TX signal higher with my full duplex
>> > RFNOC setup?  Could anything about the RX chain be affecting my TX
>> > samples, like could it be somehow deleting samples?  Do I need to tag
>> > the streams in GNURadio so they don't interfere or something?
>> >
>> > Thanks,
>> > Andrew
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a9322505aa031353
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Andrew,<div>You can likely use axi_rate_change (in betw=
een axi_wrapper and the user logic) to handle the tuser signal if you want.=
</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed, Jul 8, 2020 at 10:48 PM Jonathon Pendlum via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi Andrew,<div><br></div><div>AXI Wrapper&#39;s=
 SIMPLE_MODE can only be used with blocks that do not perform a rate change=
. Since you are using keep_one_in_n, your block is performing a decimation =
of sorts, so you cannot use SIMPLE_MODE. You should manually set up the hea=
der on tuser using noc_block_keep_one_in_n.v as an example. This may be the=
 cause of your problem.</div><div><br></div><div>Jonathon</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul =
8, 2020 at 7:26 PM Andrew Payne via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Actually =
I have found a clue! In<br>
usrp3/lib/rfnoc/noc_block_keep_one_in_n.v, axi_wrapper simple_mode is<br>
set to off, instead opting to use cvita_hdr_modify.=C2=A0 I opted to use<br=
>
keep_one_in_n.v in my custom noc_block, BUT, I have set simple mode to<br>
1.=C2=A0 And if I go into usrp3/lib/rfnoc/axi_wrapper.v, at the top the<br>
comments for SIMPLE_MODE say &quot;Automatically handle header<br>
(s_axis_data_tuser), packets must be consumed / produced 1-to-1&quot;.<br>
What does this mean?=C2=A0 That the CEs installed at the crossbar are all<b=
r>
beholden to the rate of this CE?=C2=A0 Because remember with my issue, my<b=
r>
custom RFNOC block (which incorporates keep_one_in_n.v with simple<br>
mode enabled) works well, the TX with DUC alone works well, but TX<br>
with DUC and FIFO plus my custom RFNOC block seems to greatly<br>
attenuate TX.=C2=A0 Could the TX stream be slowed down by my custom RFNOC<b=
r>
CE?<br>
<br>
On Wed, Jul 8, 2020 at 4:37 PM Andrew Payne &lt;<a href=3D"mailto:wandrewp@=
gmail.com" target=3D"_blank">wandrewp@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I have an issue with my setup I&#39;m hoping to solve.<br>
&gt;<br>
&gt; I have an e310 running the UHD 3.15 LTS image.<br>
&gt;<br>
&gt; I have created one custom RFNOC block, which has 2 RX streams, and it<=
br>
&gt; is composed of the following chain: complex to magnitude ---&gt; movin=
g<br>
&gt; sum ---&gt; keep one in n (n=3D2048) ---&gt; FIFO with input parameter=
 SIZE=3D5,<br>
&gt; so then I don&#39;t need the RFNOC FIFO block to save space when<br>
&gt; generating the FPGA image file.=C2=A0 The moving sum block generates a=
 sum<br>
&gt; from a power of 2 samples, then I feed the keep one in n block with a<=
br>
&gt; resulting sum whose LSBs are truncated, effectively dividing by a<br>
&gt; power of 2 to effectively generate a moving average. I am using the<br=
>
&gt; AXI Wrapper with Simple Mode, noc shell, etc, all generated from the<b=
r>
&gt; rfnoc mod tool.<br>
&gt;<br>
&gt; It works great, but I also have a TX output signal, just a sine wave,<=
br>
&gt; in my gnuradio flowgraph.=C2=A0 Its output, depending on the RF center=
<br>
&gt; frequency, is greatly attenuated (the greatest I can get it is like<br=
>
&gt; -39dBm, but it falls off to -55).=C2=A0 But if I just have the TX outp=
ut<br>
&gt; alone without my RX RFNOC block, I can get the output over 0dBm or<br>
&gt; more, haven&#39;t tried going higher than that.<br>
&gt;<br>
&gt; My question is, how can I get the TX signal higher with my full duplex=
<br>
&gt; RFNOC setup?=C2=A0 Could anything about the RX chain be affecting my T=
X<br>
&gt; samples, like could it be somehow deleting samples?=C2=A0 Do I need to=
 tag<br>
&gt; the streams in GNURadio so they don&#39;t interfere or something?<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Andrew<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a9322505aa031353--


--===============2969066337056574645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2969066337056574645==--

