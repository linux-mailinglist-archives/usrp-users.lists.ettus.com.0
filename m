Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33950F79DA
	for <lists+usrp-users@lfdr.de>; Mon, 11 Nov 2019 18:24:54 +0100 (CET)
Received: from [::1] (port=38090 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iUDQo-0002Mu-KD; Mon, 11 Nov 2019 12:24:50 -0500
Received: from mail-oi1-f180.google.com ([209.85.167.180]:47064)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1iUDQk-0002Do-VS
 for usrp-users@lists.ettus.com; Mon, 11 Nov 2019 12:24:47 -0500
Received: by mail-oi1-f180.google.com with SMTP id n14so12123144oie.13
 for <usrp-users@lists.ettus.com>; Mon, 11 Nov 2019 09:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZmtwvmROhE713zwPNH8/lZ7ozMXwIrXHs93fTV7I8hU=;
 b=SSzQGcGzL/HHv34A46Fy/vtAaUgE97G/BuigvyBbyMgWHGhv3GB0mCwHFA6fiMnYdf
 kQ9j57j5RR/kOXu/U803D3DBz2+18GNb3BrX9EDsxU2ZS/sWHo6gJxK+SYme4YlZeNTh
 w6t7XjvcDjbVhmiVeKY5WL2Dy8B8v3hi4CYVzunvyTwsenyXCgVIH2Eo+t2vPkvlHSaN
 0qNdPN/5Cw/COT+GQG0PuXQj4Cclpn1iL2Fy6pL8O480wE/9VRO0HxAcd1C7MkwBRqlN
 TLx7YfBGypFLKXhLy9ZZN0RBeY1r+X8wiCy2kv1XHUEbml8hX9FEq2Pu24qDx5dfxQ/d
 eQrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZmtwvmROhE713zwPNH8/lZ7ozMXwIrXHs93fTV7I8hU=;
 b=jvXjwfCCQFuTsnwvyC30gaaBXaYz62r8OZ/6/T7Sp65f3mfWvJ6AWBNjGRHfq2rb6o
 kr0DWRJAojBKXMX6P6maRosoArxNzhAAoL5zANSfUj1DcqWIZX0W2Ke2Jz8hPfl9LSKs
 To+MzVPLmMF1a6hz5V1GH5YBzzGM80ppWx4zO5li5M4Liug9pfk0Ic830Gv+2vs3/6vr
 44c8mPdZQU7vIDvANm9oN2H9lWYnuFQNCNVLwGksrPeO2/+gdUIlsxhcIwLDXVw+w6Y4
 Le6E6SMzzZpBXz7Bxntw6rZoZyWM9vx8qYKtzjvaR/uKpZltrAntYzpoiCXkHwGGNwlD
 RpRw==
X-Gm-Message-State: APjAAAV7RaiGhRH0GQg8cYvU+XiQJAgs06tObpltMgMzr0QQExivXDHj
 jwQaDzqTH0uYaoviuGnbUCxLIz0mdECif7Q31wqBiOcC
X-Google-Smtp-Source: APXvYqwDGg8J5HBo184eN9lUdB+LILDkP1x+oXq4bHWXMX/p+XtK6FPm3IFFjuhaYB7TZ3nbZ9mhpOxFLiEw7uAame0=
X-Received: by 2002:aca:5301:: with SMTP id h1mr81297oib.154.1573493046078;
 Mon, 11 Nov 2019 09:24:06 -0800 (PST)
MIME-Version: 1.0
References: <CAFPzw1nnhxhioT1_dt0X9NgjAwbvPfEc2fjURg4ywOid1Vjt3Q@mail.gmail.com>
 <CAL263iwxzsfpxbQ+o5t+RF8oUcbaGcPJGSySEC_6rAA0cQL-fA@mail.gmail.com>
 <CAFPzw1=G4RiwDT_pO1uYrERR+7v-pCvuhXbDgRGNbYTR7tg6sA@mail.gmail.com>
In-Reply-To: <CAFPzw1=G4RiwDT_pO1uYrERR+7v-pCvuhXbDgRGNbYTR7tg6sA@mail.gmail.com>
Date: Mon, 11 Nov 2019 09:24:46 -0800
Message-ID: <CAL263izo+NEhkCeQH4u6RJiofBYTmFR30BYiEhErcxZzJzDZXg@mail.gmail.com>
To: Anabel Almodovar <anabel.almodovar@gmail.com>
Subject: Re: [USRP-users] Record in disc 4 channels in continuos mode
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8590182500122284392=="
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

--===============8590182500122284392==
Content-Type: multipart/alternative; boundary="000000000000117955059715669f"

--000000000000117955059715669f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Do you get the same result if you run the included (compiled/default)
version of rx_samples_to_file at a lower sample rate, such as:

/usr/local/lib/uhd/examples/rx_samples_to_file --args "addr=3D192.168.60.2"
--duration 10 --rate 1e6 --freq 100e6 --gain 10 --subdev "A:0" --file
test.sc16

What version of UHD are you using?

Regards,
Nate Temple

On Mon, Nov 11, 2019 at 9:02 AM Anabel Almodovar <anabel.almodovar@gmail.co=
m>
wrote:

> Dear Nate,
>
> The parameters that I introduce are the following:
>
>
> *//setup the program options*
>
> *    po::options_description desc("Allowed options");*
>
> *    desc.add_options()*
>
> *        ("help", "help message")*
>
> *        ("args",
> po::value<std::string>(&args)->default_value("addr0=3D192.168.60.2,second=
_addr0=3D192.168.50.2,recv_buff_size=3D900000000"),
> "multi uhd device address args")*
>
> *        ("file",
> po::value<std::string>(&file)->default_value("/home/rs3lab/Escritorio/Gra=
baciones"),
> "name of the file to write binary samples to")*
>
> *        ("type", po::value<std::string>(&type)->default_value("short"),
> "sample type: double, float, or short")*
>
> *        ("nsamps", po::value<size_t>(&total_num_samps)->default_value(0)=
,
> "total number of samples to receive")*
>
> *        ("duration", po::value<double>(&total_time)->default_value(0),
> "total number of seconds to receive")*
>
> *        ("time", po::value<double>(&total_time), "(DEPRECATED) will go
> away soon! Use --duration instead")*
>
> *        ("spb", po::value<size_t>(&spb)->default_value(10000), "samples
> per buffer")*
>
> *        ("rate", po::value<double>(&rate)->default_value(25e6), "rate of
> incoming samples")*
>
> *        ("freq", po::value<double>(&freq)->default_value(800e6), "RF
> center frequency in Hz")*
>
> *        ("gain", po::value<double>(&gain)->default_value(80), "gain for
> the RF chain")*
>
> *        ("ant", po::value<std::string>(&ant), "antenna selection")*
>
> *        ("subdev", po::value<std::string>(&subdev)->default_value("A:0
> A:1 B:0 B:1"), "subdevice specification")*
>
> *        ("channel_list",
> po::value<std::string>(&channel_list)->default_value("0,1,2,3"), "which
> channel to use")*
>
> *        ("bw", po::value<double>(&bw), "analog frontend filter bandwidth
> in Hz")*
>
> *        ("ref", po::value<std::string>(&ref)->default_value("external"),
> "reference source (internal, external, mimo)")*
>
> *        ("wirefmt",
> po::value<std::string>(&wirefmt)->default_value("sc16"), "wire format (sc=
8,
> sc16 or s16)")*
>
> *        ("setup", po::value<double>(&setup_time)->default_value(1.0),
> "seconds of setup time")*
>
> *        ("progress", "periodically display short-term bandwidth")*
>
> *        ("stats", "show average bandwidth on exit")*
>
> *        ("sizemap", "track packet size and display breakdown on exit")*
>
> *        ("null", "run without writing to file")*
>
> *        ("continue", "don't abort on a bad packet")*
>
> *        ("skip-lo", "skip checking LO lock status")*
>
> *        ("int-n", "tune USRP with integer-N tuning")*
>
> *    ;*
>
>
>
> Then I initialize a vector so I can save the data of the 4 channels:
>
>
> *    uhd::rx_metadata_t md;*
>
> *//    std::vector<samp_type> buff(samps_per_buff);*
>
> *//    std::ofstream outfile;*
>
>
> *//**********************************************************************=
*****************
>
> *//allocate buffers to receive with samples (one buffer per channel)*
>
> *    const size_t samps_per_buff =3D rx_stream->get_max_num_samps();*
>
> *    std::vector<std::vector<std::complex<float> > > buffs(*
>
> *        usrp->get_rx_num_channels(), std::vector<std::complex<float>
> >(samps_per_buff)*
>
> *    );*
>
>
>
> *    //create a vector of pointers to point to each of the channel buffer=
s*
>
> *    std::vector<std::complex<float> *> buff_ptrs;*
>
> *    for (size_t i =3D 0; i < buffs.size(); i++)
> buff_ptrs.push_back(&buffs[i].front());*
>
>
> *//**********************************************************************=
**************
>
>
>
> *  //  if (not null)*
>
> *  //      outfile.open(file.c_str(), std::ofstream::binary);*
>
> *    bool overflow_message =3D true;*
>
>
>
> *    //setup streaming*
>
> *    uhd::stream_cmd_t stream_cmd((num_requested_samples =3D=3D 0)?*
>
> *        uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS:*
>
> *        uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE*
>
> *    );*
>
> *    stream_cmd.num_samps =3D size_t(num_requested_samples);*
>
> *    stream_cmd.stream_now =3D false;*
>
> *    //stream_cmd.time_spec =3D uhd::time_spec_t();*
>
> *    stream_cmd.time_spec =3D usrp->get_time_last_pps(0)+1.1;*
>
> *    rx_stream->issue_stream_cmd(stream_cmd);*
>
>
> In addition, once a burst is adquired, the data is save in a file:
>
>
>
> *        num_total_samps +=3D num_rx_samps;*
>
>
>
> *for (size_t i=3D0; i < num_rx_channels; i++)*
>
> *{              *
>
> *                std::ostringstream oss;*
>
> *                oss << file << "/Grabaciones_CH_"<< i  << buffer <<
> ".dat";*
>
> *                std::ofstream oss1;*
>
>
>
> *
> oss1.open(oss.str().c_str(),std::ofstream::app|std::ofstream::binary);*
>
> *  oss1.write((const char*)&buff_ptrs,
> samps_per_buff)*sizeof(std::complex<short>)); *
>
> *               oss1.close();*
>
> *}*
>
>
> Thank you in advanced.
>
>
> Regards,
>
> Anabel
>
> El lun., 11 nov. 2019 a las 16:55, Nate Temple (<nate.temple@ettus.com>)
> escribi=C3=B3:
>
>> Hi Anabel,
>>
>> What parameters are you using with the rx_samples_to_file example?
>>
>> Regards,
>> Nate Temple
>>
>> On Mon, Nov 11, 2019 at 3:02 AM Anabel Almodovar via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hello,
>>>
>>> I am trying to make a continuous acquisition with an ettus x310 card
>>> whose daughter boards are TwinRx. I have used as a base the example
>>> "rx_samples_to_file.cpp" and I have modified it to be able to acquire
>>> continuously with the 4 available channels. However, this gives me an
>>> error and saves a lot of zeros even though I don't get the overflow err=
or. By
>>> testing the unmodified example I also get those zeros.
>>>
>>> Could someone tell me why this happens? How can I solve this error and
>>> save the acquisition continuously on disk with the 4 channels?
>>>
>>> Thank you in advanced.
>>>
>>> Regards,
>>> Anabel
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--000000000000117955059715669f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi,<br><br>Do you get the same result if you run the in=
cluded (compiled/default) version of rx_samples_to_file at a lower sample r=
ate, such as:<br><br>/usr/local/lib/uhd/examples/rx_samples_to_file --args =
&quot;addr=3D192.168.60.2&quot; --duration 10 --rate 1e6 --freq 100e6 --gai=
n 10 --subdev &quot;A:0&quot; --file test.sc16 <br><br>What version of UHD =
are you using?<br><br>Regards,<br>Nate Temple</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 11, 2019 at =
9:02 AM Anabel Almodovar &lt;<a href=3D"mailto:anabel.almodovar@gmail.com">=
anabel.almodovar@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr">Dear=C2=A0Nate,<div><br><div>The=
 parameters that I introduce are the following:<span style=3D"font-family:C=
alibri,sans-serif">=C2=A0</span><div><p class=3D"MsoNormal" style=3D"margin=
:0cm 0cm 0.0001pt;line-height:normal;font-family:Calibri,sans-serif"><br></=
p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>/=
/setup the program
options</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0 po::options_description desc(&quot;Allowed
options&quot;);</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0 desc.add_options()</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;help&quot;, &quot;help
message&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;args&quot;,
po::value&lt;std::string&gt;(&amp;args)-&gt;default_value(&quot;addr0=3D192=
.168.60.2,second_addr0=3D192.168.50.2,recv_buff_size=3D900000000&quot;),
&quot;multi uhd device address args&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;file&quot;,
po::value&lt;std::string&gt;(&amp;file)-&gt;default_value(&quot;/home/rs3la=
b/Escritorio/Grabaciones&quot;),
&quot;name of the file to write binary samples to&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;type&quot;,
po::value&lt;std::string&gt;(&amp;type)-&gt;default_value(&quot;short&quot;=
),
&quot;sample type: double, float, or short&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;nsamps&quot;,
po::value&lt;size_t&gt;(&amp;total_num_samps)-&gt;default_value(0), &quot;t=
otal
number of samples to receive&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;duration&quot;,
po::value&lt;double&gt;(&amp;total_time)-&gt;default_value(0), &quot;total
number of seconds to receive&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;time&quot;,
po::value&lt;double&gt;(&amp;total_time), &quot;(DEPRECATED) will go away s=
oon!
Use --duration instead&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;spb&quot;,
po::value&lt;size_t&gt;(&amp;spb)-&gt;default_value(10000), &quot;samples p=
er
buffer&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;rate&quot;,
po::value&lt;double&gt;(&amp;rate)-&gt;default_value(25e6), &quot;rate of
incoming samples&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;freq&quot;,
po::value&lt;double&gt;(&amp;freq)-&gt;default_value(800e6), &quot;RF cente=
r
frequency in Hz&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;gain&quot;,
po::value&lt;double&gt;(&amp;gain)-&gt;default_value(80), &quot;gain for th=
e RF
chain&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;ant&quot;,
po::value&lt;std::string&gt;(&amp;ant), &quot;antenna selection&quot;)</i><=
/b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;subdev&quot;,
po::value&lt;std::string&gt;(&amp;subdev)-&gt;default_value(&quot;A:0 A:1 B=
:0
B:1&quot;), &quot;subdevice specification&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;channel_list&quot;,
po::value&lt;std::string&gt;(&amp;channel_list)-&gt;default_value(&quot;0,1=
,2,3&quot;),
&quot;which channel to use&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;bw&quot;,
po::value&lt;double&gt;(&amp;bw), &quot;analog frontend filter bandwidth in
Hz&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0(&quot;ref&quot;,
po::value&lt;std::string&gt;(&amp;ref)-&gt;default_value(&quot;external&quo=
t;),
&quot;reference source (internal, external, mimo)&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;wirefmt&quot;,
po::value&lt;std::string&gt;(&amp;wirefmt)-&gt;default_value(&quot;sc16&quo=
t;),
&quot;wire format (sc8, sc16 or s16)&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;setup&quot;, po::value&lt=
;double&gt;(&amp;setup_time)-&gt;default_value(1.0),
&quot;seconds of setup time&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;progress&quot;,
&quot;periodically display short-term bandwidth&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;stats&quot;, &quot;show a=
verage
bandwidth on exit&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;sizemap&quot;, &quot;trac=
k
packet size and display breakdown on exit&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(&quot;null&quot;, &quot;run wit=
hout
writing to file&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;continue&quot;, &quot;don=
&#39;t
abort on a bad packet&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;skip-lo&quot;, &quot;skip
checking LO lock status&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;int-n&quot;, &quot;tune U=
SRP
with integer-N tuning&quot;)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><b><i><span lang=3D"EN-US">=
=C2=A0=C2=A0=C2=A0 </span>;</i></b></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif">=C2=A0</p><p class=3D"MsoNor=
mal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;font-size:11pt;fon=
t-family:Calibri,sans-serif">Then I initialize a vector so I can save the d=
ata of the 4 channels:=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><br></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><b><i>=C2=A0=C2=A0=C2=A0 uhd=
::rx_metadata_t md;</i></b></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>/=
/=C2=A0=C2=A0=C2=A0 std::vector&lt;samp_type&gt;
buff(samps_per_buff);</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>/=
/=C2=A0=C2=A0=C2=A0 std::ofstream outfile;</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>/=
/**************************************************************************=
************</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>/=
/allocate buffers to
receive with samples (one buffer per channel)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0 const size_t samps_per_buff =3D
rx_stream-&gt;get_max_num_samps();</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0
std::vector&lt;std::vector&lt;std::complex&lt;float&gt; &gt; &gt; buffs(</i=
></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 usrp-&gt;get_rx_num_channels(),
std::vector&lt;std::complex&lt;float&gt; &gt;(samps_per_buff)</i></b></span=
></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0 );</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0 //create a vector of pointers to point to
each of the channel buffers</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0 std::vector&lt;std::complex&lt;float&gt;
*&gt; buff_ptrs;</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0 for (size_t i =3D 0; i &lt; buffs.size();
i++) buff_ptrs.push_back(&amp;buffs[i].front());</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>/=
/**************************************************************************=
*********</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0 //=C2=A0 if
(not null)</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0 //=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
outfile.open(file.c_str(), std::ofstream::binary);</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0 bool overflow_message =3D true;</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0 //setup streaming</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0 uhd::stream_cmd_t
stream_cmd((num_requested_samples =3D=3D 0)?</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS:</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0 );</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0 stream_cmd.num_samps =3D
size_t(num_requested_samples);</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0 stream_cmd.stream_now =3D false;</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0 //stream_cmd.time_spec =3D
uhd::time_spec_t();</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0 stream_cmd.time_spec =3D usrp-&gt;get_time_last_pps(0)+1=
.1;</i></b></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><b><i>=
=C2=A0=C2=A0=C2=A0 rx_stream-&gt;issue_stream_cmd(stream_cmd);</i></b></spa=
n></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US">=C2=A0<=
/span></p>

<div>In addition, once a burst is adquired, the data is save in a file:</di=
v>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:11p=
t">=C2=A0</span><br></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><i><b>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 num_total_samps +=3D num_rx_samp=
s;</b></i></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><i><b>=
=C2=A0</b></i></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><i><b>f=
or (size_t i=3D0; i
&lt; num_rx_channels; i++)</b></i></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><i><b>{=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 </b></i></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><i><b>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 std::ostringstream oss;</b></i></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><i><b>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 oss &lt;&lt; file &lt;&lt;
&quot;/Grabaciones_CH_&quot;&lt;&lt; i=C2=A0
&lt;&lt; buffer &lt;&lt; &quot;.dat&quot;;</b></i></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><i><b>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 std::ofstream oss1;</b></i></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><i><b>=
=C2=A0</b></i></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><i><b>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 oss1.open(oss.str().c_str(),std::ofstream::app|std::ofstrea=
m::binary);</b></i></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><i><b>=
=C2=A0 oss1.write((const char*)&amp;buff_ptrs, samps_per_buff)*sizeof(std::=
complex&lt;short&gt;));
</b></i></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><i><b>=
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 oss1.close();</b></i></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;=
font-size:11pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US"><i><b>}=
</b></i></span></p><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;=
line-height:normal;font-size:11pt;font-family:Calibri,sans-serif"><span lan=
g=3D"EN-US"><br></span></p><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0=
.0001pt;line-height:normal;font-size:11pt;font-family:Calibri,sans-serif"><=
span lang=3D"EN-US">Thank you in advanced.</span></p><p class=3D"MsoNormal"=
 style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;font-size:11pt;font-fa=
mily:Calibri,sans-serif"><span lang=3D"EN-US"><br></span></p><p class=3D"Ms=
oNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;font-size:11pt=
;font-family:Calibri,sans-serif"><span lang=3D"EN-US">Regards,</span></p><p=
 class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;fo=
nt-size:11pt;font-family:Calibri,sans-serif">Anabel</p></div></div></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El=
 lun., 11 nov. 2019 a las 16:55, Nate Temple (&lt;<a href=3D"mailto:nate.te=
mple@ettus.com" target=3D"_blank">nate.temple@ettus.com</a>&gt;) escribi=C3=
=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,san=
s-serif">Hi Anabel,<br><br>What parameters are you using with the rx_sample=
s_to_file example?<br><br>Regards,<br>Nate Temple</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 11, 2019=
 at 3:02 AM Anabel Almodovar via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div><span lang=3D"en"><span title=3D"">Hello,</span></span></div><div=
><span lang=3D"en"><span title=3D""><br></span></span></div><div><span lang=
=3D"en"><span title=3D"">I am trying to make a continuous acquisition with =
an ettus x310 card whose daughter boards are TwinRx.</span> <span title=3D"=
">I have used as a base the example=C2=A0 &quot;rx_samples_to_file.cpp&quot=
; and I have modified it to be able to acquire continuously with the 4 avai=
lable channels.</span> <span title=3D"">However, this gives me an error and=
 saves a lot of zeros even though I don&#39;t get the overflow error.</span=
> <span title=3D"">By testing the unmodified example I also get those zeros=
.</span> <br></span></div><div><span lang=3D"en"><span title=3D""><br></spa=
n></span></div><div><span lang=3D"en"><span title=3D"">Could someone tell m=
e why this happens?</span> <span title=3D"">How can I solve this error and =
save the acquisition continuously on disk with the 4 channels?</span></span=
></div><div><span lang=3D"en"><span title=3D""><br></span></span></div><div=
><span lang=3D"en"><span title=3D"">Thank you in advanced.</span></span></d=
iv><div><span lang=3D"en"><span title=3D""><br></span></span></div><div><sp=
an lang=3D"en"><span title=3D"">Regards,</span></span></div><div><span lang=
=3D"en"><span title=3D"">Anabel<br></span></span></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000117955059715669f--


--===============8590182500122284392==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8590182500122284392==--

