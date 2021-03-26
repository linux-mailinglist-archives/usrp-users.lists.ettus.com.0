Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C7934AD45
	for <lists+usrp-users@lfdr.de>; Fri, 26 Mar 2021 18:26:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4B1A8383DC6
	for <lists+usrp-users@lfdr.de>; Fri, 26 Mar 2021 13:26:20 -0400 (EDT)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 5B2F3383D3A
	for <usrp-users@lists.ettus.com>; Fri, 26 Mar 2021 13:25:33 -0400 (EDT)
Received: by mail-ua1-f42.google.com with SMTP id b7so1786277uam.10
        for <usrp-users@lists.ettus.com>; Fri, 26 Mar 2021 10:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+Ss5F/Pi3a67Sq7WHO0wmBrab/2id18TZCSfAk1/bRI=;
        b=g2U5zelUHaczIoKaZpc15QyuBtYyQFY803dGDt6lr1xMwE4xiynhwE6kSQQvaBrZFz
         Q8qLDGfo6gmw+sFd0+dNA5m1qFa/4YjXrpdrrjDt+jL9PvYQ3RNeiXkZp/Kk4S4qj5Vr
         nre4cdJZKfy4M1pO8VfpWgFl8QdggxkKPiNHY0IB+zWXqvIUOsFCLxoBpKA6yb3M6HO8
         KEsJy05L2Hk1iss/fYWPGp9r/k7kzC0I9PoTrvErqwUZ2Ef+gQbPwpFNA1+5DBMHQTHJ
         X6t+HBq2wF5FC88sGfM0sQSrBpIYwcIgzZmoSjZrF2N9k9NL3GY2Fz6Y2Kfr5AwRKpOM
         OI0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+Ss5F/Pi3a67Sq7WHO0wmBrab/2id18TZCSfAk1/bRI=;
        b=iA+AP10FR53G/FJCPIR/PxkjjEB6rYQD5H/hfV/lbb8QavkwkfsOhMfMkw3GUYRpt7
         HIvyvXAduGh+O3c+/wp+zR9tM6LcclBWcaJ0cWeuyXPqrVK4K5/QdozSmRHSt2FP5uyT
         FDJLgcjwff2Pt5IKRcOJnLwhar+QcSlQ9fNxWC1VwlIv7n4kYFIM/SBavfQgf9zrowC8
         FkOoQST8Uddpl1L2LtglppK30tjmn/F679NrkR/7kgMwUcaa/OhH8NoNrfKS6+hTQSxe
         ePj4ZJQdlFo89Zxgsb5hhRiDjLCgqZVtcSLjWs3G36lwZ+ARhtRhuf6nTqsCQ1VlK8Ya
         afcQ==
X-Gm-Message-State: AOAM532x3XOmWwZ0kopC1qOCFcGgGzej2yGLt9x3vsb4q1cLKeN8hGVi
	KhFnbEl16kMzs9xWI8L2/joH4H/KDvcCfvrCCEhh+XoTwaCTdA==
X-Google-Smtp-Source: ABdhPJxdukRWbhLisREs2y6us5KeF6pf01boR2PR/ZOk5zY3o6HCOYD2ovmNKMVwY9Q0MaOMIJkeA5K5By4DnMUbUtw=
X-Received: by 2002:ab0:23c2:: with SMTP id c2mr9164458uan.49.1616779532672;
 Fri, 26 Mar 2021 10:25:32 -0700 (PDT)
MIME-Version: 1.0
References: <60f5117b-0305-0ab6-1a25-edeedefb7dc9@dcsmail.net>
In-Reply-To: <60f5117b-0305-0ab6-1a25-edeedefb7dc9@dcsmail.net>
From: Ben Magistro <koncept1@gmail.com>
Date: Fri, 26 Mar 2021 13:25:20 -0400
Message-ID: <CAKx8PBhA1QVxwtOzGbbZNfQXus0Op7Prt8hqmW4GoQGnR_Csvg@mail.gmail.com>
To: Barry Duggan <barry@dcsmail.net>
Message-ID-Hash: O2RO3MKFYEVIYY4YV5SBY7GMNPHWLOST
X-Message-ID-Hash: O2RO3MKFYEVIYY4YV5SBY7GMNPHWLOST
X-MailFrom: koncept1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP list <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Shared UHD Access
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O2RO3MKFYEVIYY4YV5SBY7GMNPHWLOST/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7367225595937686418=="

--===============7367225595937686418==
Content-Type: multipart/alternative; boundary="000000000000b9a5c105be73d153"

--000000000000b9a5c105be73d153
Content-Type: text/plain; charset="UTF-8"

Thanks for sharing.  I did have a full duplex single channel working.  This
started from a question of "can you run the exact same for a second channel
so we can compare performance of different antennas".  The simple approach
I wanted for that was to just run two copies of the flowgraph.  Based on
the comments here I bumped the sink/source blocks to have two channels, set
the subdevs (A:0 A:1) on both, and stream channels ([0, 1]) and then copied
all the blocks in the graph to create a parallel path (different UDP
source/sinks mapping back to the different channels).  However when I try
to run this, I get the below error.  I created a simplified graph with two
signal sources and two null sinks just to see if the UHD blocks were setup
correctly and that graph runs.  Any thoughts on what else to look at?

[ERROR] [0/Radio#0] Invalid channel configuration: This device does not
support 1 TX x 2 RX or 2 TX x 1 RX configurations!
thread[thread-per-block[28]: <block usrp_sink(11)>]: RuntimeError: Invalid
channel configuration: This device does not support 1 TX x 2 RX or 2 TX x 1
RX configurations!

Below are the sink/source blocks from the generated graph.

 66         self.uhd_usrp_source_0 = uhd.usrp_source(
 67             ",".join(("", "")),
 68             uhd.stream_args(
 69                 cpu_format="fc32",
 70                 args='',
 71                 channels=[0,1],
 72             ),
 73         )
 74         self.uhd_usrp_source_0.set_subdev_spec('A:0 A:1', 0)
 75         self.uhd_usrp_source_0.set_center_freq(center_freq, 0)
 76         self.uhd_usrp_source_0.set_gain(rx_gain, 0)
 77         self.uhd_usrp_source_0.set_antenna('RX2', 0)
 78         self.uhd_usrp_source_0.set_bandwidth(500000, 0)
 79         self.uhd_usrp_source_0.set_center_freq(center_freq, 1)
 80         self.uhd_usrp_source_0.set_gain(rx_gain, 1)
 81         self.uhd_usrp_source_0.set_antenna('RX2', 1)
 82         self.uhd_usrp_source_0.set_bandwidth(500000, 1)
 83         self.uhd_usrp_source_0.set_samp_rate(samp_rate)
 84         self.uhd_usrp_source_0.set_time_unknown_pps(uhd.time_spec())
 85         self.uhd_usrp_sink_0 = uhd.usrp_sink(
 86             ",".join(("", "")),
 87             uhd.stream_args(
 88                 cpu_format="fc32",
 89                 args='',
 90                 channels=[0,1],
 91             ),
 92             '',
 93         )
 94         self.uhd_usrp_sink_0.set_subdev_spec('A:0 A:1', 0)
 95         self.uhd_usrp_sink_0.set_center_freq(center_freq, 0)
 96         self.uhd_usrp_sink_0.set_gain(tx_gain, 0)
 97         self.uhd_usrp_sink_0.set_antenna('TX/RX', 0)
 98         self.uhd_usrp_sink_0.set_bandwidth(500000, 0)
 99         self.uhd_usrp_sink_0.set_center_freq(center_freq, 1)
100         self.uhd_usrp_sink_0.set_gain(tx_gain, 1)
101         self.uhd_usrp_sink_0.set_antenna('TX/RX', 1)
102         self.uhd_usrp_sink_0.set_bandwidth(500000, 1)
103         self.uhd_usrp_sink_0.set_samp_rate(samp_rate)
104         self.uhd_usrp_sink_0.set_time_unknown_pps(uhd.time_spec())

Thanks!

On Thu, Mar 25, 2021 at 2:07 PM Barry Duggan <barry@dcsmail.net> wrote:

> Hi Ben,
>
> As I understand it, the UHD Source and Sink blocks must be in the same
> flowgraph. Otherwise, after you start one flowgraph, the other will say
> it can't find the device, or some similar error.
>
> For how I solved the problem, see
>
> https://raw.githubusercontent.com/duggabe/gr-control/main/xmt_rcv_switch.grc
>
> Feel free to ask questions.
>
> Good luck,
> --
> Barry Duggan KV4FV
> https://github.com/duggabe
>
> On Thu, 25 Mar 2021 13:23:40 -0400, Ben Magistro <koncept1@gmail.com>
> wrote:
>
> This might be more of a GNURadio question, but is it possible to share a
> single USRP device (E310 in this case) with two flowgraphs?  What I mean is
> the E310 has a "A" and "B" channel, could you use channel "A" with one
> flowgraph and "B" with another or does everything have to be implemented in
> a single flowgraph with the UHD sink/source configured to have two
> channels?  I'm guessing the latter due to how UHD interacts with the
> hardware.
>
> Thanks!
>

--000000000000b9a5c105be73d153
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for sharing.=C2=A0 I did have a full duplex si=
ngle channel working.=C2=A0 This started from a question of &quot;can you r=
un the exact same for a second channel so we can compare performance of dif=
ferent antennas&quot;.=C2=A0 The simple approach I wanted for that was to j=
ust run two copies of the flowgraph.=C2=A0 Based on the comments here I bum=
ped the sink/source blocks to have two channels, set the subdevs (A:0 A:1) =
on both, and stream channels ([0, 1]) and then copied all the blocks in the=
 graph to create a parallel path (different UDP source/sinks mapping back t=
o the different channels).=C2=A0 However when I try to run this, I get the =
below error.=C2=A0 I created a simplified graph with two signal sources and=
 two null sinks just to see if the UHD blocks were setup correctly and that=
 graph runs.=C2=A0 Any thoughts on what else to look at?<br></div><div><br>=
</div><div>[ERROR] [0/Radio#0] Invalid channel configuration: This device d=
oes not support 1 TX x 2 RX or 2 TX x 1 RX configurations!<br>thread[thread=
-per-block[28]: &lt;block usrp_sink(11)&gt;]: RuntimeError: Invalid channel=
 configuration: This device does not support 1 TX x 2 RX or 2 TX x 1 RX con=
figurations!</div><div><br></div><div>Below are the sink/source blocks from=
 the generated graph.</div><div><br></div><div>=C2=A066 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 self.uhd_usrp_source_0 =3D uhd.usrp_source(<br>=C2=A067 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;,&quot;.join((&quot;&quot;, &quot;=
&quot;)),<br>=C2=A068 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd.stream_=
args(<br>=C2=A069 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 c=
pu_format=3D&quot;fc32&quot;,<br>=C2=A070 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 args=3D&#39;&#39;,<br>=C2=A071 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 channels=3D[0,1],<br>=C2=A072 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ),<br>=C2=A073 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 )<br>=C2=A074 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_su=
bdev_spec(&#39;A:0 A:1&#39;, 0)<br>=C2=A075 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sel=
f.uhd_usrp_source_0.set_center_freq(center_freq, 0)<br>=C2=A076 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_gain(rx_gain, 0)<br>=C2=A077 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_antenna(&#39;RX2&#39=
;, 0)<br>=C2=A078 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_ba=
ndwidth(500000, 0)<br>=C2=A079 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_so=
urce_0.set_center_freq(center_freq, 1)<br>=C2=A080 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 self.uhd_usrp_source_0.set_gain(rx_gain, 1)<br>=C2=A081 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 self.uhd_usrp_source_0.set_antenna(&#39;RX2&#39;, 1)<br>=C2=
=A082 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_bandwidth(5000=
00, 1)<br>=C2=A083 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_s=
amp_rate(samp_rate)<br>=C2=A084 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_s=
ource_0.set_time_unknown_pps(uhd.time_spec())<br>=C2=A085 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 self.uhd_usrp_sink_0 =3D uhd.usrp_sink(<br>=C2=A086 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;,&quot;.join((&quot;&quot;, &quot;&qu=
ot;)),<br>=C2=A087 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd.stream_arg=
s(<br>=C2=A088 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cpu_=
format=3D&quot;fc32&quot;,<br>=C2=A089 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 args=3D&#39;&#39;,<br>=C2=A090 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 channels=3D[0,1],<br>=C2=A091 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ),<br>=C2=A092 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 &#39;&#39;,<br>=C2=A093 =C2=A0 =C2=A0 =C2=A0 =C2=A0 )<br>=C2=
=A094 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_subdev_spec(&#39=
;A:0 A:1&#39;, 0)<br>=C2=A095 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sin=
k_0.set_center_freq(center_freq, 0)<br>=C2=A096 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 self.uhd_usrp_sink_0.set_gain(tx_gain, 0)<br>=C2=A097 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 self.uhd_usrp_sink_0.set_antenna(&#39;TX/RX&#39;, 0)<br>=C2=A098 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_bandwidth(500000, 0)<b=
r>=C2=A099 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_center_freq=
(center_freq, 1)<br>100 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.se=
t_gain(tx_gain, 1)<br>101 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.=
set_antenna(&#39;TX/RX&#39;, 1)<br>102 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd=
_usrp_sink_0.set_bandwidth(500000, 1)<br>103 =C2=A0 =C2=A0 =C2=A0 =C2=A0 se=
lf.uhd_usrp_sink_0.set_samp_rate(samp_rate)<br>104 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 self.uhd_usrp_sink_0.set_time_unknown_pps(uhd.time_spec())<br></div><di=
v><br></div><div>Thanks!<br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 25, 2021 at 2:07 PM Barry Dug=
gan &lt;<a href=3D"mailto:barry@dcsmail.net">barry@dcsmail.net</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Ben,<br>
<br>
As I understand it, the UHD Source and Sink blocks must be in the same <br>
flowgraph. Otherwise, after you start one flowgraph, the other will say <br=
>
it can&#39;t find the device, or some similar error.<br>
<br>
For how I solved the problem, see <br>
<a href=3D"https://raw.githubusercontent.com/duggabe/gr-control/main/xmt_rc=
v_switch.grc" rel=3D"noreferrer" target=3D"_blank">https://raw.githubuserco=
ntent.com/duggabe/gr-control/main/xmt_rcv_switch.grc</a><br>
<br>
Feel free to ask questions.<br>
<br>
Good luck,<br>
-- <br>
Barry Duggan KV4FV<br>
<a href=3D"https://github.com/duggabe" rel=3D"noreferrer" target=3D"_blank"=
>https://github.com/duggabe</a><br>
<br>
On Thu, 25 Mar 2021 13:23:40 -0400, Ben Magistro &lt;<a href=3D"mailto:konc=
ept1@gmail.com" target=3D"_blank">koncept1@gmail.com</a>&gt; wrote:<br>
<br>
This might be more of a GNURadio question, but is it possible to share a<br=
>
single USRP device (E310 in this case) with two flowgraphs?=C2=A0 What I me=
an is<br>
the E310 has a &quot;A&quot; and &quot;B&quot; channel, could you use chann=
el &quot;A&quot; with one<br>
flowgraph and &quot;B&quot; with another or does everything have to be impl=
emented in<br>
a single flowgraph with the UHD sink/source configured to have two<br>
channels?=C2=A0 I&#39;m guessing the latter due to how UHD interacts with t=
he<br>
hardware.<br>
<br>
Thanks!<br>
</blockquote></div>

--000000000000b9a5c105be73d153--

--===============7367225595937686418==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7367225595937686418==--
