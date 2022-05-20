Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A1C52EC16
	for <lists+usrp-users@lfdr.de>; Fri, 20 May 2022 14:31:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96D0B384D66
	for <lists+usrp-users@lfdr.de>; Fri, 20 May 2022 08:31:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653049896; bh=cXQ+q5zwCNpjzFcZhqpJya+9CXYrmo3zqcGw2vV0L00=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=gaqq45dUoOsNpfu32DekLCYEDEXG4YH3vscuhGbeZT56yP1tSJZHy/RqXnv+tM9Hk
	 2eziQCtOQggCODxn6IejUaBmANf43WAE0uVSalkMYS1oODJLNzmRmYn3cxhSw8XnjY
	 Pmdb5URRxtCIArWojVFOsDn4O5u/el8ryDhk/JYHmQ4e++rNusOXUkOAH4OhRHTqZm
	 JsrE1cjSLQxYPkvq/EuVamyVHM1P91GsF+SXVmeGZ/u/Ig6QLZGIN8ImvRHYGNk35H
	 PerkIgrnXdSeSSorfyu+XKvrVWHSPdAwq3ENgfQIh4vhIGOfln0R/X030W1ewptjmh
	 PUM6sq9WTIgbg==
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	by mm2.emwd.com (Postfix) with ESMTPS id B2A22384BBB
	for <usrp-users@lists.ettus.com>; Fri, 20 May 2022 08:30:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="Hwdt/c7r";
	dkim-atps=neutral
Received: by mail-oi1-f172.google.com with SMTP id v65so9748883oig.10
        for <usrp-users@lists.ettus.com>; Fri, 20 May 2022 05:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yAsjVYvcaBJix5EheRUJa2VA8p0WKbokP43NrfJgvc4=;
        b=Hwdt/c7rE7+YzLANpF8rRQTo7/VucCE8HXsKlBs/oraJ79vq+4VGIYHngsq1kim+XT
         8p+Ve5PbAPf12n4+vKE1N/vtQ4Djct+t8tUK+VXgRnJqgLSGz9ZsSnawv9PJNb7jNcfZ
         mbHEpLNwBrb6V/jo0EUESGYgOuFAxAtCiIKRVIDqdoTsPjW/MP219TTU9BjuqGDdUtWB
         MYOe38abRDqX3Dd2vz86wi+43Yy/NUxRBFV+FSAIVJPngErL7ZstBDBZCsfNQM4rVxtk
         73vtoYrhREESDhJVaVmP11bFsY2x8CpPNOEDY5GQVe2Y8yAHtRVYFpyyuKTj0Ihd/EVC
         uQYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yAsjVYvcaBJix5EheRUJa2VA8p0WKbokP43NrfJgvc4=;
        b=EsCjD+Di638k8ZdXNT2ndcg1SXvx1QsBxdx2+2ENKO1+orYJCSeb9vXb8gxWrFToqZ
         yJHr5vj/VvcuMDxnMgeU+PDyryRgwI072bmjvJemsTDffi89JBni6RVFs4vyprYpoljx
         bZUtKvVYDmLTrYDYl0IskMh/MNauGIm0ft++dpe/zR2ynqQARlyyrJ1VtH0eASC43OSB
         Tar31rMRSVh0U4bT4c0j0V4Sv7AVWxlXdujrH76heVOZtwef18XcqSixZZdRA3SyVTsd
         snpYXtvzWytMvRQVUjR+HQeBqV5E8JxMIN5x5ZIYpGY24wafbwiZxm8Ohk3hkdkr29Xl
         t6jA==
X-Gm-Message-State: AOAM531nayMd8/wkKZP5Lc4J2fVtl55vBoDV8HYn/7B+9GRJ8jlFIAhs
	EkE/YlNZABw0r0JgKV8BeDev/NsR3xk9yNTBPOD/kbRR
X-Google-Smtp-Source: ABdhPJxTFkcfbDk4XsV42+NFL+M1F1kP/3zUOyOu61ZwTM+K7gIJsMTBUc8gQAAtxr1/6Ns2QgJtbjVOf7jSu3++hxA=
X-Received: by 2002:a05:6808:2011:b0:32b:623:713b with SMTP id
 q17-20020a056808201100b0032b0623713bmr778730oiw.59.1653049835818; Fri, 20 May
 2022 05:30:35 -0700 (PDT)
MIME-Version: 1.0
References: <AM6PR01MB4929B7524107F448A680BF19BBC29@AM6PR01MB4929.eurprd01.prod.exchangelabs.com>
In-Reply-To: <AM6PR01MB4929B7524107F448A680BF19BBC29@AM6PR01MB4929.eurprd01.prod.exchangelabs.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Fri, 20 May 2022 08:30:24 -0400
Message-ID: <CAGNhwTMocqkTkk0LaLJLGksQYpGOswhaBwusyimmBs9oXyQd7g@mail.gmail.com>
To: Mehmet Fatih Ayten <Mehmet.Fatih.Ayten@vub.be>
Message-ID-Hash: 4KF2QSARXTFTG2NOMGLLHOQPQG7RBZH5
X-Message-ID-Hash: 4KF2QSARXTFTG2NOMGLLHOQPQG7RBZH5
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [Commit-gnuradio] About Reducing Latency When Implementing CSMA/NDA Protocol on Wireless Systems Using USRP Devices
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4KF2QSARXTFTG2NOMGLLHOQPQG7RBZH5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0685272778935683711=="

--===============0685272778935683711==
Content-Type: multipart/alternative; boundary="00000000000042a51e05df70a888"

--00000000000042a51e05df70a888
Content-Type: text/plain; charset="UTF-8"

Hi Mehmet - As nobody else has responded in any capacity, let me do so from
an Ettus Support perspective.

The reason your query isn't being answered is that it is highly technical,
with lots of details, and a very specific use-case that would require
someone many hours of work to process. Sometimes we get lucky and there are
folks who are already experts in the multiple domains required and who have
thus already put in the hours to understand the intersecting domains well
enough to be able to respond quickly. Sometimes not -- and, this seems to
be one of those cases.

It is not clear to me that this issue is related to UHD / USRP; I'm
guessing it has more to do with the GNU Radio / data processing side of
things.

General advice for minimizing latency in GNU Radio can be found online
include:

* Use C++, not Python, for blocks. Broadly speaking: Python will be slower.
GNU Radio uses Python for graph connectivity & other non-speed-critical
logistics.

* Reduce the maximum number of items to be processed to whatever minimum is
possible. There are options in the block settings to do this, plus or
minus. Broadly speaking: Processing fewer samples per block reduces latency.

* If GNU Radio still supports block profiling then reinstall GR with that
option enabled (and if I recall the required Thrift dependency) and run
your flowgraph to see where the high-CPU use blocks are and then try to
create alternative implementations that reduce CPU usage. Broadly speaking:
Higher CPU usage results in more latency.

I hope this is useful! - MLD
---
Dr Michael L Dickens
Principal NI/Ettus Technical Support Engineer


On Thu, May 5, 2022 at 4:48 PM Mehmet Fatih Ayten <Mehmet.Fatih.Ayten@vub.be>
wrote:

> Hello Dear Forum Members,
>
>
>
> I have already posted at 14th April with the same issue, but since I could
> not receive any reply, I decided to post again, sorry for inconvenience.  I
> am Fatih from Vrije Universiteit Brussels, and writing to ask for any
> suggestion about the Reducing Latency When Implementing CSMA/NDA Protocol
> on Wireless Systems Using USRP Devices.
>
>
>
> Firstly, I would like to briefly mention about CSMA/NDA protocol so, my
> question means more for you.
>
>
>
> CSMA/NDA (Carrier Sense Multiple Access/Non Destructive Arbitration)
> protocol is employed mainly in Control Area Network (CAN) buses. If 2 or
> more transceiver nodes want to broadcast simultaneously, the winner node is
> determined by arbitration fields of transceivers. The winner node continues
> transmitting, while other nodes become silent. Arbitration fields are
> generally composed of 12 bits, and recessive and dominant bits can be
> chosen by the designer. To give an example, lets assume length of
> arbitration field is decided as 4 bits and 2 transceivers want to broadcast
> their message on the bus network. Also, dominant bit is selected as "1":
>
>
>
> Node 1: -start of arbitration field- 1 1 1 1 -end of arbitration field-
> -start of meaningful message- 1 0 0 1 0 0 1 0 1 -end of meaningful message-
>
>
>
> Node 2: -start of arbitration field- 1 0 0 0 -end of arbitration field-
> -start of meaningful message- 0 1 0 1 1 1 0 1 0 -end of meaningful message-
>
>
>
> Since arbitration field of Node 1 includes more 1's, it is more dominant
> than Node 2, therefore as time goes on, Node 2 will become silent and
> message of Node 1 will appear on the bus.
>
>
>
> In my project, I am trying to implement this protocol in a wireless
> fashion. I use two USRP X310
>
> SDRs, one OctoClock CDA-2990 Clock Distribution Device in order to
> maintain synchronization between
>
> SDRs, one Gigabit ethernet switch in order to make connection between PC
> and SDRs. Wireless communication between SDRs has been maintained using
> VERT2450 Vertical Antennas. Also, experiments have been conducted in
> real-time on the host PC using the GNU Radio framework.
>
>
>
> The flowgraph that I use is in this link:
> https://drive.google.com/file/d/1iBkg8wWBPxVkYtm8LsT2qiPHqlvlZ6mj/view?usp=sharing
>
>
>
> As you can see from the flowgraph, two Tx nodes transmit their bits, one
> receiver reveives bits, then according to resulting received bits, command
> is sent to transmitters. In order to create this command, I have created an
> Embedded Python Block and its content is as follows (or you can check
> screenshot from the link:
> https://drive.google.com/file/d/1NCLQIKK_qp1Ltdf3fswCUsjxGKay1HKH/view?usp=sharing
> ):
>
>
>
> import numpy as np
>
> from gnuradio import gr
>
> import pmt
>
>
>
> class blk(gr.basic_block):
>
>
>
>     def __init__(self, check=1.0):
>
>         gr.sync_block.__init__(
>
>             self,
>
>             name='Embedded Python Block',
>
>             in_sig=[np.int32,np.int32],
>
>             out_sig=[np.int32]
>
>         )
>
>         self.check = check
>
>         self.message_port_register_out(pmt.intern('Gain Changer Message
> Port'))
>
>     def work(self, input_items,output_items):
>
>         if self.check ==1:
>
>             if (not (sum(input_items[0][0:4]) ==
> sum(input_items[1][0:4]))):
>
>                 self.message_port_pub(pmt.intern('Gain Changer Message
> Port') , pmt.dict_add( pmt.make_dict() , pmt.intern("gain") ,
> pmt.from_double(0)))
>
>                 self.check =2
>
>         if self.check ==2:
>
>             pass
>
>         return(len(output_items[0]))
>
>
>
> By doing so, I am trying to compare first 4 bits of message (arbitration
> field of the corresponding node) and the first 4 bits of the received bits.
> If they are equal, gain is kept same (or high); otherwise gain is set to 0
> dB, i.e, transmission stops.
>
>
>
> Also, I maintain the synchronization by adding the flollowing commands to
> generated Python file:
>
>
>
> self.uhd_usrp_source_0.set_time_next_pps(uhd.time_spec_t(0.0));
>
> self.uhd_usrp_sink_0.set_time_next_pps(uhd.time_spec_t(0.0));
>
> self.uhd_usrp_sink_0_0.set_time_next_pps(uhd.time_spec_t(0.0));
>
> time.sleep(1)
>
>
>
> self.uhd_usrp_sink_0.set_start_time(uhd.time_spec_t(2))
>
> self.uhd_usrp_sink_0.clear_command_time()
>
> self.uhd_usrp_sink_0_0.set_start_time(uhd.time_spec_t(2))
>
> self.uhd_usrp_sink_0_0.clear_command_time()
>
> self.uhd_usrp_source_0.set_start_time(uhd.time_spec_t(2))
>
> self.uhd_usrp_source_0.clear_command_time()
>
>
>
> By doing so, I aim to make the SDRs start transmission at the same time.
>
>
>
>
>
> In this configuration, I have faced 2 problems:
>
>
>
> 1. Delay is not as low as I desired: The data rate is kept in 1 kbps.
> After this methods, the effect of  CSMA/NDA appears in 74th received bit
> which means nearly 74 ms delay.
>
>
>
> 2. For different arbitration fields, the delay changes. For example, when
> 2 Tx nodes with arbitration field "1111" and "1000" transmit, the delay is
> 73 ms; where 2 Tx nodes with arbitration field "1111" and "1100" transmit,
> the delay is 167 ms. Therefore, the delay could not be standardized and it
> does not offer a fit implementation.
>
>
>
> With all this information, I would like to kindly ask for your suggestions
> to reduce and fix the delay. Any idea about the flowgraph and Embedded
> Python Block is highly appreciated.
>
>
>
> Kind Regards,
>
> Mehmet Fatih Ayten
>
>
>
> Sent from Mail <https://go.microsoft.com/fwlink/?LinkId=550986> for
> Windows
>
>
> _______________________________________________
> Commit-gnuradio mailing list
> Commit-gnuradio@gnu.org
> https://lists.gnu.org/mailman/listinfo/commit-gnuradio
>

--00000000000042a51e05df70a888
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Mehmet - As nobody else has responded in any capacity, =
let me do so from an Ettus Support perspective.<div><br></div><div>The reas=
on your query isn&#39;t being answered is that it is highly technical, with=
 lots of details, and a very specific use-case that would require someone m=
any hours of work to process. Sometimes we get lucky and there are folks wh=
o are already experts in the multiple domains required and who have thus al=
ready put in the hours to understand the intersecting domains well enough t=
o be able to respond quickly. Sometimes not -- and, this seems to be one of=
 those=C2=A0cases.</div><div><br></div><div>It is not clear to me that this=
 issue is related=C2=A0to UHD / USRP; I&#39;m guessing it has more to do wi=
th the GNU Radio / data processing side of things.</div><div><br></div><div=
>General advice for minimizing latency in GNU Radio can be found online inc=
lude:</div><div><br></div><div>* Use C++, not Python,=C2=A0for blocks. Broa=
dly speaking: Python will be slower. GNU Radio uses Python for graph connec=
tivity &amp; other non-speed-critical logistics.</div><div><br></div><div>*=
 Reduce the maximum number of items to be processed to whatever minimum is =
possible. There are options in the block settings to do this, plus or minus=
. Broadly speaking: Processing fewer samples per block reduces latency.</di=
v><div><br></div><div>* If GNU Radio still supports block profiling then re=
install GR with that option enabled (and if I recall the required Thrift de=
pendency) and run your=C2=A0flowgraph to see where the high-CPU use blocks =
are and then try to create alternative implementations that reduce CPU usag=
e. Broadly speaking: Higher CPU usage results in more latency.</div><div><d=
iv><br></div><div>I hope this is useful! - MLD<br clear=3D"all"><div><div d=
ir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><di=
v dir=3D"ltr"><div dir=3D"ltr">---</div><div dir=3D"ltr"><div dir=3D"ltr" s=
tyle=3D"color:rgb(34,34,34)"><span style=3D"color:rgb(0,0,0);font-family:Ca=
libri,Arial,Helvetica,sans-serif;font-size:15px">Dr Michael L Dickens</span=
></div><div dir=3D"ltr" style=3D"color:rgb(34,34,34)"><div dir=3D"ltr"><div=
 dir=3D"ltr" style=3D"margin:0px;padding:0px;border:0px;font-stretch:inheri=
t;font-size:15px;line-height:inherit;font-family:Calibri,Arial,Helvetica,sa=
ns-serif;vertical-align:baseline;color:rgb(0,0,0)"><div style=3D"margin:0px=
;padding:0px;border:0px;font:inherit;vertical-align:baseline;color:inherit"=
>Principal NI/Ettus Technical Support Engineer</div></div></div></div></div=
></div></div></div><br></div></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Thu, May 5, 2022 at 4:48 PM Mehmet Fa=
tih Ayten &lt;<a href=3D"mailto:Mehmet.Fatih.Ayten@vub.be">Mehmet.Fatih.Ayt=
en@vub.be</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">





<div lang=3D"TR" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_7168884660833685572WordSection1">
<p class=3D"MsoNormal"><span lang=3D"FR-BE">Hello Dear Forum Members,<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">I have already posted at 14th A=
pril with the same issue, but since I could not receive any reply, I decide=
d to post again, sorry for inconvenience.=C2=A0 I am Fatih from Vrije Unive=
rsiteit Brussels, and writing to ask for
 any suggestion about the Reducing Latency When Implementing CSMA/NDA Proto=
col on Wireless Systems Using USRP Devices.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">Firstly, I would like to briefl=
y mention about CSMA/NDA protocol so, my question means more for you.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">CSMA/NDA (Carrier Sense Multipl=
e Access/Non Destructive Arbitration) protocol is employed mainly in Contro=
l Area Network (CAN) buses. If 2 or more transceiver nodes want to broadcas=
t simultaneously, the winner node is
 determined by arbitration fields of transceivers. The winner node continue=
s transmitting, while other nodes become silent. Arbitration fields are gen=
erally composed of 12 bits, and recessive and dominant bits can be chosen b=
y the designer. To give an example,
 lets assume length of arbitration field is decided as 4 bits and 2 transce=
ivers want to broadcast their message on the bus network. Also, dominant bi=
t is selected as &quot;1&quot;:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">Node 1: -start of arbitration f=
ield- 1 1 1 1 -end of arbitration field-=C2=A0 -start of meaningful message=
- 1 0 0 1 0 0 1 0 1 -end of meaningful message-<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">Node 2: -start of arbitration f=
ield- 1 0 0 0 -end of arbitration field-=C2=A0 -start of meaningful message=
- 0 1 0 1 1 1 0 1 0 -end of meaningful message-<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">Since arbitration field of Node=
 1 includes more 1&#39;s, it is more dominant than Node 2, therefore as tim=
e goes on, Node 2 will become silent and message of Node 1 will appear on t=
he bus.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">In my project, I am trying to i=
mplement this protocol in a wireless fashion. I use two USRP X310<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">SDRs, one OctoClock CDA-2990 Cl=
ock Distribution Device in order to maintain synchronization between<u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">SDRs, one Gigabit ethernet swit=
ch in order to make connection between PC and SDRs. Wireless communication =
between SDRs has been maintained using VERT2450 Vertical Antennas. Also, ex=
periments have been conducted in real-time
 on the host PC using the GNU Radio framework.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">The flowgraph that I use is in =
this link: <a href=3D"https://drive.google.com/file/d/1iBkg8wWBPxVkYtm8LsT2=
qiPHqlvlZ6mj/view?usp=3Dsharing" target=3D"_blank">https://drive.google.com=
/file/d/1iBkg8wWBPxVkYtm8LsT2qiPHqlvlZ6mj/view?usp=3Dsharing</a><u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">As you can see from the flowgra=
ph, two Tx nodes transmit their bits, one receiver reveives bits, then acco=
rding to resulting received bits, command is sent to transmitters. In order=
 to create this command, I have created
 an Embedded Python Block and its content is as follows (or you can check s=
creenshot from the link: <a href=3D"https://drive.google.com/file/d/1NCLQIK=
K_qp1Ltdf3fswCUsjxGKay1HKH/view?usp=3Dsharing" target=3D"_blank">https://dr=
ive.google.com/file/d/1NCLQIKK_qp1Ltdf3fswCUsjxGKay1HKH/view?usp=3Dsharing<=
/a>):<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">import numpy as np<u></u><u></u=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">from gnuradio import gr<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">import pmt<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">class blk(gr.basic_block):<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">=C2=A0=C2=A0=C2=A0 def __init__=
(self, check=3D1.0):<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 gr.sync_block.__init__(<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 name=3D&#39;Embedded Python Block&#39;=
,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 in_sig=3D[np.int32,np.int32],<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 out_sig=3D[np.int32]<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 )<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 self.check =3D check<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 self.message_port_register_out(pmt.intern(&#39;Gain Changer Me=
ssage Port&#39;))<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">=C2=A0=C2=A0=C2=A0 def work(sel=
f, input_items,output_items):<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 if self.check =3D=3D1:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (not (sum(input_items[0][0:4]) =3D=
=3D sum(input_items[1][0:4]))):
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0self.mess=
age_port_pub(pmt.intern(&#39;Gain Changer Message Port&#39;) , pmt.dict_add=
( pmt.make_dict() , pmt.intern(&quot;gain&quot;) , pmt.from_double(0)))<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.check =3D=
2<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 if self.check =3D=3D2:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pass=C2=A0=C2=A0=C2=A0 <u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0return(len(output_items[0]))<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">By doing so, I am trying to com=
pare first 4 bits of message (arbitration field of the corresponding node) =
and the first 4 bits of the received bits. If they are equal, gain is kept =
same (or high); otherwise gain is set
 to 0 dB, i.e, transmission stops.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">Also, I maintain the synchroniz=
ation by adding the flollowing commands to generated Python file:<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">self.uhd_usrp_source_0.set_time=
_next_pps(uhd.time_spec_t(0.0));<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">self.uhd_usrp_sink_0.set_time_n=
ext_pps(uhd.time_spec_t(0.0));<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">self.uhd_usrp_sink_0_0.set_time=
_next_pps(uhd.time_spec_t(0.0));<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">time.sleep(1)<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">self.uhd_usrp_sink_0.set_start_=
time(uhd.time_spec_t(2))<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">self.uhd_usrp_sink_0.clear_comm=
and_time()<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">self.uhd_usrp_sink_0_0.set_star=
t_time(uhd.time_spec_t(2))<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">self.uhd_usrp_sink_0_0.clear_co=
mmand_time()<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">self.uhd_usrp_source_0.set_star=
t_time(uhd.time_spec_t(2))<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">self.uhd_usrp_source_0.clear_co=
mmand_time()<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">By doing so, I aim to make the =
SDRs start transmission at the same time.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">In this configuration, I have f=
aced 2 problems:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">1. Delay is not as low as I des=
ired: The data rate is kept in 1 kbps. After this methods, the effect of=C2=
=A0 CSMA/NDA appears in 74th received bit which means nearly 74 ms delay.<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">2. For different arbitration fi=
elds, the delay changes. For example, when 2 Tx nodes with arbitration fiel=
d &quot;1111&quot; and &quot;1000&quot; transmit, the delay is 73 ms; where=
 2 Tx nodes with arbitration field &quot;1111&quot; and &quot;1100&quot; tr=
ansmit,
 the delay is 167 ms. Therefore, the delay could not be standardized and it=
 does not offer a fit implementation.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">With all this information, I wo=
uld like to kindly ask for your suggestions to reduce and fix the delay. An=
y idea about the flowgraph and Embedded Python Block is highly appreciated.=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">Kind Regards,<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"FR-BE">Mehmet Fatih Ayten</span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Sent from <a href=3D"https://go.microsoft.com/fwlink=
/?LinkId=3D550986" target=3D"_blank">
Mail</a> for Windows</p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
Commit-gnuradio mailing list<br>
<a href=3D"mailto:Commit-gnuradio@gnu.org" target=3D"_blank">Commit-gnuradi=
o@gnu.org</a><br>
<a href=3D"https://lists.gnu.org/mailman/listinfo/commit-gnuradio" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.gnu.org/mailman/listinfo/commit-=
gnuradio</a><br>
</blockquote></div>

--00000000000042a51e05df70a888--

--===============0685272778935683711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0685272778935683711==--
