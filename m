Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA357F971F
	for <lists+usrp-users@lfdr.de>; Tue, 12 Nov 2019 18:31:35 +0100 (CET)
Received: from [::1] (port=52450 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iUa0s-000636-QC; Tue, 12 Nov 2019 12:31:34 -0500
Received: from mail-lj1-f173.google.com ([209.85.208.173]:35846)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <anabel.almodovar@gmail.com>)
 id 1iUa0n-0005tg-UO
 for usrp-users@lists.ettus.com; Tue, 12 Nov 2019 12:31:30 -0500
Received: by mail-lj1-f173.google.com with SMTP id k15so18743198lja.3
 for <usrp-users@lists.ettus.com>; Tue, 12 Nov 2019 09:31:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r7MNkEG/06QqvzVhOMJxi4jV0af+O4GwibsW45QU380=;
 b=IuqEhHU8zhkn28B3ylVdxjMJPuMaiHBhtFlbG+l+cOxv5YoEtB57JX661pDuXyVsRH
 k9VApx6JM6abUSF5bDUL2ZwQS0nftEavNV0Mh86MGZUfLuM0amR3ISXJ9OIS7h/TL2Kt
 h7bq/LV9SegnDStBqxLwiW/nqd/V0/Th2sIyIZ98zlrIHKTS8vlBJFr8rwUBv4wee1Ev
 23HOj0OONeXJ4/CIj4l2FUapOuqcRiLR7txUa3ozbI1j9VmExVSoukdFq2Cgi0BlcnlS
 VX0RzwPJVmzke35XSobqwQfAN2OxrHExvnL+mLoyymJh2EaC22HjIZy2vpwnXDO+13+Y
 6crQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r7MNkEG/06QqvzVhOMJxi4jV0af+O4GwibsW45QU380=;
 b=MqF4O1wP9gRP1wi6jKab4u3VMlgCmaGlGwsLlAZE5e9jheAf/ygcPFPQuTZuDpZNOx
 svWLrRBLpSkZoM183qwlZRidb/fwNHtlPDZPUIOnKT5UjlrqCuzqysJQ3iAQ++iO99KG
 xKgx+LkOru5XYgQypNOFNZYto4MeeHfw3L4jYTjgExwr0SbW/ed0Sfdnp3ys9iG5pjnx
 RVAitOX3QqqL68zlvy79PLgGZIjnNc8fP5biV1oHMEpxrAzE49jI9bNBC6Y/QfasiUBp
 9PB39eV2b0kxxR/EUt48Yg9BD3NkS9WZgCMxOxXUfjYr9SiEpBDJ49lETZVFTivDRgwB
 T1lA==
X-Gm-Message-State: APjAAAVdMA0Wl8Myr+TGixUE8wA2TmYSmJwqcjP/eZlO5PCLeKjGmWia
 YwGYXdIT/cQBB+5FfINXS46FDVrFFskGjob1rn8=
X-Google-Smtp-Source: APXvYqx1HZvKbJm93gtKrEAzg+j5A++fbetVZcvHes4OQbsef58CbkP+/ccO0XVX1Ue+Z+xG8ouFAe1c/2ZLYEa+Wnc=
X-Received: by 2002:a2e:b0d9:: with SMTP id g25mr10008651ljl.176.1573579847996; 
 Tue, 12 Nov 2019 09:30:47 -0800 (PST)
MIME-Version: 1.0
References: <CAFPzw1nnhxhioT1_dt0X9NgjAwbvPfEc2fjURg4ywOid1Vjt3Q@mail.gmail.com>
 <CAL263iwxzsfpxbQ+o5t+RF8oUcbaGcPJGSySEC_6rAA0cQL-fA@mail.gmail.com>
 <CAFPzw1=G4RiwDT_pO1uYrERR+7v-pCvuhXbDgRGNbYTR7tg6sA@mail.gmail.com>
 <CAL263izo+NEhkCeQH4u6RJiofBYTmFR30BYiEhErcxZzJzDZXg@mail.gmail.com>
In-Reply-To: <CAL263izo+NEhkCeQH4u6RJiofBYTmFR30BYiEhErcxZzJzDZXg@mail.gmail.com>
Date: Tue, 12 Nov 2019 18:30:36 +0100
Message-ID: <CAFPzw1=ahEPhbXdRMU+jR3ZRvbvLfyd7mAAcy7ZdBBy2dO0R-g@mail.gmail.com>
To: Nate Temple <nate.temple@ettus.com>
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
From: Anabel Almodovar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anabel Almodovar <anabel.almodovar@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0438023108121600268=="
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

--===============0438023108121600268==
Content-Type: multipart/related; boundary="000000000000dddd280597299be4"

--000000000000dddd280597299be4
Content-Type: multipart/alternative; boundary="000000000000dddd270597299be2"

--000000000000dddd270597299be2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I get zeros at the beginning at a lower sample rate. I run the following
commands and get results shown in the following figures:

sudo ./rx_samples_to_file --args "addr=3D192.168.60.2" --duration 10 --rate
1e6 --freq 800e6 --gain 70 --subdev "A:0" --file test3.dat


[image: original.png]

sudo ./rx_samples_to_file_4ch --args=3D"addr0=3D192.168.40.2,
second_addr0=3D192.168.30.2, recv_buff_size=3D900000000" --rate 100e6 --fre=
q
800e6 --nsamps 10000000


[image: modif.png]

sudo ./rx_samples_to_file_4ch --args=3D"addr0=3D192.168.40.2,
second_addr0=3D192.168.30.2, recv_buff_size=3D900000000" --rate 1e6 --freq
800e6 --nsamps 100000


[image: mod2.png]

Regards,

Anabel

El lun., 11 nov. 2019 a las 18:24, Nate Temple (<nate.temple@ettus.com>)
escribi=C3=B3:

> Hi,
>
> Do you get the same result if you run the included (compiled/default)
> version of rx_samples_to_file at a lower sample rate, such as:
>
> /usr/local/lib/uhd/examples/rx_samples_to_file --args "addr=3D192.168.60.=
2"
> --duration 10 --rate 1e6 --freq 100e6 --gain 10 --subdev "A:0" --file
> test.sc16
>
> What version of UHD are you using?
>
> Regards,
> Nate Temple
>
> On Mon, Nov 11, 2019 at 9:02 AM Anabel Almodovar <
> anabel.almodovar@gmail.com> wrote:
>
>> Dear Nate,
>>
>> The parameters that I introduce are the following:
>>
>>
>> *//setup the program options*
>>
>> *    po::options_description desc("Allowed options");*
>>
>> *    desc.add_options()*
>>
>> *        ("help", "help message")*
>>
>> *        ("args",
>> po::value<std::string>(&args)->default_value("addr0=3D192.168.60.2,secon=
d_addr0=3D192.168.50.2,recv_buff_size=3D900000000"),
>> "multi uhd device address args")*
>>
>> *        ("file",
>> po::value<std::string>(&file)->default_value("/home/rs3lab/Escritorio/Gr=
abaciones"),
>> "name of the file to write binary samples to")*
>>
>> *        ("type", po::value<std::string>(&type)->default_value("short"),
>> "sample type: double, float, or short")*
>>
>> *        ("nsamps",
>> po::value<size_t>(&total_num_samps)->default_value(0), "total number of
>> samples to receive")*
>>
>> *        ("duration", po::value<double>(&total_time)->default_value(0),
>> "total number of seconds to receive")*
>>
>> *        ("time", po::value<double>(&total_time), "(DEPRECATED) will go
>> away soon! Use --duration instead")*
>>
>> *        ("spb", po::value<size_t>(&spb)->default_value(10000), "samples
>> per buffer")*
>>
>> *        ("rate", po::value<double>(&rate)->default_value(25e6), "rate o=
f
>> incoming samples")*
>>
>> *        ("freq", po::value<double>(&freq)->default_value(800e6), "RF
>> center frequency in Hz")*
>>
>> *        ("gain", po::value<double>(&gain)->default_value(80), "gain for
>> the RF chain")*
>>
>> *        ("ant", po::value<std::string>(&ant), "antenna selection")*
>>
>> *        ("subdev", po::value<std::string>(&subdev)->default_value("A:0
>> A:1 B:0 B:1"), "subdevice specification")*
>>
>> *        ("channel_list",
>> po::value<std::string>(&channel_list)->default_value("0,1,2,3"), "which
>> channel to use")*
>>
>> *        ("bw", po::value<double>(&bw), "analog frontend filter bandwidt=
h
>> in Hz")*
>>
>> *        ("ref", po::value<std::string>(&ref)->default_value("external")=
,
>> "reference source (internal, external, mimo)")*
>>
>> *        ("wirefmt",
>> po::value<std::string>(&wirefmt)->default_value("sc16"), "wire format (s=
c8,
>> sc16 or s16)")*
>>
>> *        ("setup", po::value<double>(&setup_time)->default_value(1.0),
>> "seconds of setup time")*
>>
>> *        ("progress", "periodically display short-term bandwidth")*
>>
>> *        ("stats", "show average bandwidth on exit")*
>>
>> *        ("sizemap", "track packet size and display breakdown on exit")*
>>
>> *        ("null", "run without writing to file")*
>>
>> *        ("continue", "don't abort on a bad packet")*
>>
>> *        ("skip-lo", "skip checking LO lock status")*
>>
>> *        ("int-n", "tune USRP with integer-N tuning")*
>>
>> *    ;*
>>
>>
>>
>> Then I initialize a vector so I can save the data of the 4 channels:
>>
>>
>> *    uhd::rx_metadata_t md;*
>>
>> *//    std::vector<samp_type> buff(samps_per_buff);*
>>
>> *//    std::ofstream outfile;*
>>
>>
>> *//*********************************************************************=
******************
>>
>> *//allocate buffers to receive with samples (one buffer per channel)*
>>
>> *    const size_t samps_per_buff =3D rx_stream->get_max_num_samps();*
>>
>> *    std::vector<std::vector<std::complex<float> > > buffs(*
>>
>> *        usrp->get_rx_num_channels(), std::vector<std::complex<float>
>> >(samps_per_buff)*
>>
>> *    );*
>>
>>
>>
>> *    //create a vector of pointers to point to each of the channel
>> buffers*
>>
>> *    std::vector<std::complex<float> *> buff_ptrs;*
>>
>> *    for (size_t i =3D 0; i < buffs.size(); i++)
>> buff_ptrs.push_back(&buffs[i].front());*
>>
>>
>> *//*********************************************************************=
***************
>>
>>
>>
>> *  //  if (not null)*
>>
>> *  //      outfile.open(file.c_str(), std::ofstream::binary);*
>>
>> *    bool overflow_message =3D true;*
>>
>>
>>
>> *    //setup streaming*
>>
>> *    uhd::stream_cmd_t stream_cmd((num_requested_samples =3D=3D 0)?*
>>
>> *        uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS:*
>>
>> *        uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE*
>>
>> *    );*
>>
>> *    stream_cmd.num_samps =3D size_t(num_requested_samples);*
>>
>> *    stream_cmd.stream_now =3D false;*
>>
>> *    //stream_cmd.time_spec =3D uhd::time_spec_t();*
>>
>> *    stream_cmd.time_spec =3D usrp->get_time_last_pps(0)+1.1;*
>>
>> *    rx_stream->issue_stream_cmd(stream_cmd);*
>>
>>
>> In addition, once a burst is adquired, the data is save in a file:
>>
>>
>>
>> *        num_total_samps +=3D num_rx_samps;*
>>
>>
>>
>> *for (size_t i=3D0; i < num_rx_channels; i++)*
>>
>> *{              *
>>
>> *                std::ostringstream oss;*
>>
>> *                oss << file << "/Grabaciones_CH_"<< i  << buffer <<
>> ".dat";*
>>
>> *                std::ofstream oss1;*
>>
>>
>>
>> *
>> oss1.open(oss.str().c_str(),std::ofstream::app|std::ofstream::binary);*
>>
>> *  oss1.write((const char*)&buff_ptrs,
>> samps_per_buff)*sizeof(std::complex<short>)); *
>>
>> *               oss1.close();*
>>
>> *}*
>>
>>
>> Thank you in advanced.
>>
>>
>> Regards,
>>
>> Anabel
>>
>> El lun., 11 nov. 2019 a las 16:55, Nate Temple (<nate.temple@ettus.com>)
>> escribi=C3=B3:
>>
>>> Hi Anabel,
>>>
>>> What parameters are you using with the rx_samples_to_file example?
>>>
>>> Regards,
>>> Nate Temple
>>>
>>> On Mon, Nov 11, 2019 at 3:02 AM Anabel Almodovar via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hello,
>>>>
>>>> I am trying to make a continuous acquisition with an ettus x310 card
>>>> whose daughter boards are TwinRx. I have used as a base the example
>>>> "rx_samples_to_file.cpp" and I have modified it to be able to acquire
>>>> continuously with the 4 available channels. However, this gives me an
>>>> error and saves a lot of zeros even though I don't get the overflow er=
ror. By
>>>> testing the unmodified example I also get those zeros.
>>>>
>>>> Could someone tell me why this happens? How can I solve this error and
>>>> save the acquisition continuously on disk with the 4 channels?
>>>>
>>>> Thank you in advanced.
>>>>
>>>> Regards,
>>>> Anabel
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>

--000000000000dddd270597299be2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I get zeros at the be=
ginning at a lower sample rate. I run the following commands and get result=
s shown in the following figures:=C2=A0</div><div><br></div><div>sudo ./rx_=
samples_to_file --args &quot;addr=3D192.168.60.2&quot; --duration 10 --rate=
 1e6 --freq 800e6 --gain 70 --subdev &quot;A:0&quot; --file test3.dat<br></=
div><div>


=09
	<span></span>
=09
=09


<p style=3D"margin-bottom:0cm;line-height:100%"><br></p><div><div><div><img=
 src=3D"cid:ii_k2vvy58e2" alt=3D"original.png" width=3D"468" height=3D"472"=
><br></div><div><br></div><div><p style=3D"margin-bottom:0cm;line-height:10=
0%">sudo
./rx_samples_to_file_4ch --args=3D&quot;addr0=3D192.168.40.2,
second_addr0=3D192.168.30.2, recv_buff_size=3D900000000&quot; --rate
100e6 --freq 800e6 --nsamps 10000000</p><p style=3D"margin-bottom:0cm;line-=
height:100%"><br></p></div><img src=3D"cid:ii_k2vvy5851" alt=3D"modif.png" =
width=3D"527" height=3D"469"><br></div><div><br></div><div><div><p style=3D=
"margin-bottom:0cm;line-height:100%">sudo ./rx_samples_to_file_4ch --args=
=3D&quot;addr0=3D192.168.40.2, second_addr0=3D192.168.30.2, recv_buff_size=
=3D900000000&quot; --rate 1e6 --freq 800e6 --nsamps 100000</p><p style=3D"m=
argin-bottom:0cm;line-height:100%"><br></p></div><div></div></div><img src=
=3D"cid:ii_k2vvy57h0" alt=3D"mod2.png" width=3D"475" height=3D"475"><br></d=
iv><div><br></div><div>Regards,</div><div><br></div><div>Anabel</div>

</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">El lun., 11 nov. 2019 a las 18:24, Nate Temple (&lt;<a href=3D"mailto=
:nate.temple@ettus.com" target=3D"_blank">nate.temple@ettus.com</a>&gt;) es=
cribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,helve=
tica,sans-serif">Hi,<br><br>Do you get the same result if you run the inclu=
ded (compiled/default) version of rx_samples_to_file at a lower sample rate=
, such as:<br><br>/usr/local/lib/uhd/examples/rx_samples_to_file --args &qu=
ot;addr=3D192.168.60.2&quot; --duration 10 --rate 1e6 --freq 100e6 --gain 1=
0 --subdev &quot;A:0&quot; --file test.sc16 <br><br>What version of UHD are=
 you using?<br><br>Regards,<br>Nate Temple</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 11, 2019 at 9:0=
2 AM Anabel Almodovar &lt;<a href=3D"mailto:anabel.almodovar@gmail.com" tar=
get=3D"_blank">anabel.almodovar@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Dear=C2=A0Nate,<d=
iv><br><div>The parameters that I introduce are the following:<span style=
=3D"font-family:Calibri,sans-serif">=C2=A0</span><div><p class=3D"MsoNormal=
" style=3D"margin:0cm 0cm 0.0001pt;line-height:normal;font-family:Calibri,s=
ans-serif"><br></p>

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
</blockquote></div>

--000000000000dddd270597299be2--
--000000000000dddd280597299be4
Content-Type: image/png; name="mod2.png"
Content-Disposition: inline; filename="mod2.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_k2vvy57h0>
X-Attachment-Id: ii_k2vvy57h0

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
--000000000000dddd280597299be4
Content-Type: image/png; name="modif.png"
Content-Disposition: inline; filename="modif.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_k2vvy5851>
X-Attachment-Id: ii_k2vvy5851

iVBORw0KGgoAAAANSUhEUgAAAg8AAAHVCAIAAAD5Co8hAAAAA3NCSVQICAjb4U/gAAAAGXRFWHRT
b2Z0d2FyZQBnbm9tZS1zY3JlZW5zaG907wO/PgAAIABJREFUeJzt3XuU7FZ9J/qfjs81fTh2jBlI
htyFsRrIxJIBsxaZFHaMe7Vyk3aSSyYm0lyFuXngIjziDJeEyQytzJRqiJoZcIYkQ+CGUWwwSWpF
ipMb7jAGkl3Lj0ymbl74gcQEY8s5BhMeMTbn/ejW/UNvlVRSdem0Wl3fz/Jide/61dYu2exfaW+1
ftzXv/oP3/UzHyGiL9z5szS/02dOPfrFLzz11FNnz549e/as7/u76GTvraysXHrppTy/ytGhL335
yTNnTp86dWpnZ6ftce07R48evfTS53zni77zu17+Ty699NK2hwMArTm8yJtPnzn1mT/59JVXXsnz
/NGjR5/znOccOnSoqZFdPL7vnz179uzZc67rvuhFL7ruuldfccXzjh49eskll7Q9tP1lZ2fn9OnT
zz77jOc9/pk/+dQP/G8/eOmlz2l7UADQjoWyxaOPfuHKK68URbGp0ewNjuNWVlaeffZbL3rRi268
8aa2h7N/HTp06OjRo0ePHv3O7/xf/+zP7v+ff/s/X/mKV7U9KABox0KXAk995anv+I7vaGooe+yp
p7589dV826PojKuv5r/y919pexQA0JqCbPGnjP0pY3XefPbs2aNHjzY9pD1y5szZK654XtujCPn+
fZtH333/Pt71ufLKK8+dO9v2KACgNaXXFi/49udXvvns2bMrKytcN50+faq7qS7gH7vj9UdXjgb/
vP6OYxcz2Rw58txTp05dvP4BYJ8r2Lf4fkmqkyqIyPf9w4cX2vm4SL76ta8/98iRyy+/LG45fvzE
qdOnv+PbXxi37OzsdHpb2/fv06559F0nTn+C44jo2J0/fM2P0uf/+Geu4rj6nfzdsWOXX3bZ85+f
/Ot++umnj5848ZKrrspFduL+BQC4eIqngG987elvfO3pOu+v+UWe6Oufec+tb37zm9/85jffeuvH
HiHiOI7okY/d+rHPfOY9Uft7PvP1sEN65GNvjnzskbpHCXzjH57+4mOPf/bBh0+cOBm0nDhx8rMP
PvzFxx5/6qm/Tw1pDvdvhl/hX3/nsenGo5v3BS3BgtKdd/5w0L55v38s9fN0QNkFQdLz6+845vu+
f+zO14c9UHBJ8fo7nqTXbZ187+uiD/Lin/6ld7BHn5jnQx178snPPvggG4+ffjr8d/3000+z8fiz
Dz74xS8+Ntf5AYADb6F9CyI6VAPHfe6uWz9y6G133nHHHXfcccd/VL/0a3c54Ut0/+///S1B+52/
8JLf/8iffp3jOO5zd/3al/75e387aH/NZ+/6HMfVOVDgqqtefOTIkVe+UvzsQ4+cOHHyxImTn33o
kVe+Ujxy5MjLXv7SOKz+OTp25w/fTJ8+efLMyZNnPkh/GuwupBvvoR9MZZEP/BF9+OTJMyfueeev
33zktvjn2++MEsMHbnv0l8I3Xvv22z765IzDff7H7r5Gu5/jrvrpD37oc7ffGWSOj9529499cOoa
4oFP/br08qvrfyqi5z//eSsrKzfe+H3je+99+umnn3766fG999544/etrKz84xd9+zw9AcDBt9C+
BdXLFpdcct2td+k3v+iS4Nd/vPFjN933149w3KFDHNFNv/imV4Vxr3rNTY8/9bUgiVD406FDh667
9dbrLrmkfrbYvnDhxhte+8QTx6575bUPPvzIgw8/ct0rr33iiWM33vDa7QsX5s0Wvn+M/RF98K2v
C3696mfe9DqOyzXe+NYP0R/9aZQM3vmun34xEdGNG+9I/5x88ZdK3lhwuBf/9C+949c/db/vc1e9
6V3Xvv22jz755Eff9kc/9uGfuSqTKvxjd/zozQ9/cDqFzHT5ZZffeMNrH374kRtvuOHe+++79/77
brzhhocffuTGG157+WWX1+8HAJbBQvsWFC4oVfO/+in9Xb/7RDRH79CN38NxHHEUrWUFnQW/HuKu
u/Wud/32T/7UTx86REQ3/sJH+6+aYxL0fX97e/uG63t/PvmLV73yWiJ67PEnbri+t7297fv+vGtQ
RN6j7JUbL57Z+OKXXss+9QRRPqrYK186643eo4z9+jVHbkta3rlBREQ3brzz5pu/6xp65z0nMsfx
j93xo9fc/WOf/6+5FFLJ9+myyy4PTtQN119PRA8/8rkbru9ddtnl+/jmLABox17sWxA9dMe7/sdr
f/Xjd91111133fWxj/3CGnHEBemCS3WR/Hro0HVv/p3fueuuuz72fvXJ2+94qPYGScD3/WeeefbM
mbNEHBF35szZZ555NkgV8+9b8C+XHn4sv1yUbXzysc/NsQo0+438y6V33nPidLASdfLkmZMn3xtc
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
--000000000000dddd280597299be4
Content-Type: image/png; name="original.png"
Content-Disposition: inline; filename="original.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_k2vvy58e2>
X-Attachment-Id: ii_k2vvy58e2

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
--000000000000dddd280597299be4--


--===============0438023108121600268==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0438023108121600268==--

