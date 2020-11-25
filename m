Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CED2C3B43
	for <lists+usrp-users@lfdr.de>; Wed, 25 Nov 2020 09:42:50 +0100 (CET)
Received: from [::1] (port=40618 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khqNz-0002oa-KW; Wed, 25 Nov 2020 03:42:47 -0500
Received: from mail-ed1-f45.google.com ([209.85.208.45]:37158)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mamuki92@gmail.com>) id 1khqNw-0002kH-2W
 for usrp-users@lists.ettus.com; Wed, 25 Nov 2020 03:42:44 -0500
Received: by mail-ed1-f45.google.com with SMTP id cq7so1666482edb.4
 for <usrp-users@lists.ettus.com>; Wed, 25 Nov 2020 00:42:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TXnNmEIYzXb8MySz5d3bYdHgiWpyLpJP4h3eB54osh8=;
 b=Ojpefh4KHLGQyOACVp0tgubJF5RI31pREMJwgmtYieibFw42UWWVx9jTrIWBJQ9ASh
 tWlVcvqKeuiQByJkkY0kYgm1wbF6PzLLRVW1yA13K929unPlfdMF8hmFe/h8hIYkpMpY
 7HtGq1APAfolfzKi3S2CLOgy/7eNBpEK/qSdS2+DK9Q4q2ZxJzknibe/pv65vCaF958z
 aHXG98AUYeYggnvnR1YlNRzNKem9sFoIxfP7elssEhQFDYlxlt6Qh30XM7mpo6Udqdpd
 J64eNs+PR4m3f0bCvGe6LC/iVnfJ4FswtQsQfxzvnAgaq+ML2HhQfzx35OFVCp/OcKlI
 vsJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TXnNmEIYzXb8MySz5d3bYdHgiWpyLpJP4h3eB54osh8=;
 b=ofj1R7mn/a4ho7RAZoT1fQ/b7LOAQcisk8m8XujqwxvSjMh32zrIHWEzqtWSpWctrd
 E90Np2xZB8nlv7/rw5COd+lNALXgfmWOwH7XJ03IcutcTRcsCRAbcovKXlXaWRIbAyMy
 jMF5QquvDVpr2Xa4zu34JxqsloAdi8c6KHbfJqvg18fltfFxTIJmSpkeN2mEoGxZyASa
 vNwfQv1DK1Uf29yjDvjsqaiHQbE/mwRf8XmTddfnRH944VWjd0QVnLZB/YOJBA5u7zMn
 lzW5glsehoL5ee5JblE/O68wtJnCeTzX4lc8Cd55wuz6kOwFgUj0Paai2JOU7WGEQ9O0
 cjhQ==
X-Gm-Message-State: AOAM531sP5VwfuHKFb/RYbITMJe1BwHIKr05OZRpG3Y+Q+DYdlfsW1On
 lZpsFixzePkD+2Uc4nVx+8rbNO5GLH1ESlJNBdA=
X-Google-Smtp-Source: ABdhPJySmrZuS7c8F4rdVqKYuRBd5wqE7WvL9ujl4PgtqIWP0S0sqUZBScJ3RPZoini+aI/BkRVs2L2TwwfBhbJWXD4=
X-Received: by 2002:a05:6402:150d:: with SMTP id
 f13mr2459838edw.119.1606293722801; 
 Wed, 25 Nov 2020 00:42:02 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQV0xTxQxPmFpBO_5q8Og03MWVhieY2VnBhK9UTE5fVfZw@mail.gmail.com>
 <CAFche=gpYoYXydtJkmVaGA9xA4e7u6a7R-FdQ894W0dj=2CaaA@mail.gmail.com>
 <CAG16vQUW56L2-uJnaszSdB+xq+hfn2TkJ21xe-s3yLCb3j1pPA@mail.gmail.com>
 <CAG16vQV9o_5WiD6BbDFOQn8EDYEeVoQ2c=RJa98MYeiMC4ysdg@mail.gmail.com>
 <CAFche=jEF=s1uGmj_W=QeD-RVgg=eBaNmU7LPpQhjskZBWGzxg@mail.gmail.com>
In-Reply-To: <CAFche=jEF=s1uGmj_W=QeD-RVgg=eBaNmU7LPpQhjskZBWGzxg@mail.gmail.com>
Date: Wed, 25 Nov 2020 09:41:49 +0100
Message-ID: <CAG16vQWzg+5fTFqoDQWQTSqjM_EdRoosxPBLfoCkbXJHdweSQA@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="000000000000c0d4ab05b4ea6614"
Subject: Re: [USRP-users] Fwd: FPGA RFNoC Radio block with only one channel
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
From: =?utf-8?q?Maria_Mu=C3=B1oz_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
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

--000000000000c0d4ab05b4ea6614
Content-Type: multipart/alternative; boundary="000000000000c0d4a805b4ea6612"

--000000000000c0d4a805b4ea6612
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Wade,

Thanks for the answer.

I get an error if I run this command with the modifications made on the
.yml file:

~/rfnoc/src/uhd/host/utils$ ./rfnoc_image_builder.py -y
../../fpga/usrp3/top/e320/e320_rfnoc_image_core.yml -d e320 -t E320_1G -g






































*[WAR] Module jsonschema is not installed. Configuration files will not be
validated against their schema.[WAR] Skip schema validation (missing module
jsonschema).[INF] Using FPGA directory
/home/mamuqui/rfnoc/src/uhd/fpga[INF] Selected device e320[INF] Using
io_signatures.yml from ../include/uhd/rfnoc/core.[INF] Using e320_bsp.yml
from ../include/uhd/rfnoc/core.[INF] Adding block description from
replay.yml (../include/uhd/rfnoc/blocks).[INF] Adding block description
from fft_1x64.yml (../include/uhd/rfnoc/blocks).[INF] Adding block
description from duc.yml (../include/uhd/rfnoc/blocks).[INF] Adding block
description from null_src_sink.yml (../include/uhd/rfnoc/blocks).[INF]
Adding block description from moving_avg.yml
(../include/uhd/rfnoc/blocks).[INF] Adding block description from
fosphor.yml (../include/uhd/rfnoc/blocks).[INF] Adding block description
from window.yml (../include/uhd/rfnoc/blocks).[INF] Adding block
description from radio_2x64.yml (../include/uhd/rfnoc/blocks).[INF] Adding
block description from axi_ram_fifo.yml (../include/uhd/rfnoc/blocks).[INF]
Adding block description from ddc.yml (../include/uhd/rfnoc/blocks).[INF]
Adding block description from axi_ram_fifo_4x64.yml
(../include/uhd/rfnoc/blocks).[INF] Adding block description from
keep_one_in_n.yml (../include/uhd/rfnoc/blocks).[INF] Adding block
description from fir_filter.yml (../include/uhd/rfnoc/blocks).[INF] Adding
block description from vector_iir.yml (../include/uhd/rfnoc/blocks).[INF]
Adding block description from addsub.yml
(../include/uhd/rfnoc/blocks).[INF] Adding block description from
siggen.yml (../include/uhd/rfnoc/blocks).[INF] Adding block description
from split_stream.yml (../include/uhd/rfnoc/blocks).[INF] Adding block
description from axi_ram_fifo_2x64.yml (../include/uhd/rfnoc/blocks).[INF]
Adding block description from logpwr.yml
(../include/uhd/rfnoc/blocks).[INF] Adding block description from
switchboard.yml (../include/uhd/rfnoc/blocks).[INF] Adding block
description from radio.yml (../include/uhd/rfnoc/blocks).[INF] Adding block
description from radio_1x64.yml (../include/uhd/rfnoc/blocks).[ERR] 1
Unresolved connection(s)[ERR]     (_device_-x300_radio ->
radio0-x300_radio)[INF]         (('radio0', 'ctrl_port', 'master'),)[INF]
      (('radio0', 'time_keeper', 'listener'),)[INF]         (('radio0',
'radio_iface', 'slave'),)[INF]         (('fifo0', 'axi_ram',
'master'),)[INF]         (('_device_', 'ctrl_port', 'slave'),)[INF]
(('_device_', 'time_keeper', 'broadcaster'),)[INF]         (('_device_',
'x300_radio', 'master'),)[INF]         (('_device_', 'dram', 'slave'),)*

I attach the modified YAML file.
I guess this can be related to the BSP connection part of the file but I'm
not sure how to change this part to do what I want to do. Is there any
documentation about this part of the yaml file? I have read the "Getting
started with RFNoC in UHD 4.0" (
https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0) but I can't see
what makes this part of the file.

Kind Regards,

Maria

El mi=C3=A9, 25 nov 2020 a las 2:42, Wade Fife (<wade.fife@ettus.com>) escr=
ibi=C3=B3:

> Yes, that's correct. There's a radio_1x64.yml you can use to get a single
> channel radio. You might consider removing the FIFO if you don't need it.
>
> Wade
>
> On Tue, Nov 24, 2020 at 8:46 AM Maria Mu=C3=B1oz via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>>
>>
>> ---------- Forwarded message ---------
>> De: Maria Mu=C3=B1oz <mamuki92@gmail.com>
>> Date: lun, 23 nov 2020 a las 10:05
>> Subject: Re: [USRP-users] FPGA RFNoC Radio block with only one channel
>> To: Wade Fife <wade.fife@ettus.com>
>>
>>
>> Hi Wade,
>>
>> Thanks for your answer that helps me a lot.
>>
>> I have migrated to UHD 4.0 as you suggested so just a few questions to
>> make sure I have understood how the YAML file and the tool work.
>>
>> I want to have a first image with radio, DUC, DDC and FIFO only using on=
e
>> channel of the radio. As I see on the e320_rfnoc_image_core YML file, th=
e
>> DDC, DUC, radio and a fifo block are instanced. And on the static
>> connections part of the file are all the connections for each channel (I
>> guess this is radio0(0) and radio0(1)). If I want to remove channel 1 fo=
r
>> example, I must set  num ports to 1 on the instance of the DDC/DUC and t=
hen
>> remove the connections associated with the in/out_1. Is that correct?
>> Should I also change num_ports on the yml radio block file?
>> Then, to build the image I must run rfnoc_image_builder with option -y
>> and this modified yml file, that's all?
>>
>> Kind regards,
>>
>> Maria
>>
>>
>> El vie., 20 nov. 2020 16:44, Wade Fife <wade.fife@ettus.com> escribi=C3=
=B3:
>>
>>> Hi Maria,
>>>
>>> I assume you're using UHD 3.15 or earlier, since you mentioned the "fpg=
a
>>> repository". I've never tried what you're suggesting, so I don't know w=
hat
>>> challenges you'll run into. I think changing NUM_CHANNELS_PER_RADIO wil=
l do
>>> what you want, but it will have some side effects, like removing the GP=
IO
>>> for that channel. I think it might be safer to just change the NUM_CHAN=
NELS
>>> that gets passed to e320_core, since I think that will remove just the
>>> radio and associated DDC/DUC while leaving all the other board signals
>>> connected. Again, I haven't tried it, so I can't say for sure.
>>>
>>> In general, these kinds of changes need to be considered carefully,
>>> since it leaves signals undriven, which usually means they will be driv=
en
>>> to 0 by default. 0 is often the right value for something that's unused=
,
>>> but not always. There may also be software implications.
>>>
>>> By the way, these kinds of changes are easier to make in UHD 4.0 since
>>> it's described by a YAML file. So it's easy to say you just want one ra=
dio
>>> and to leave out the DDC/DUC, or DRAM FIFO, for example. The required
>>> Verilog is then generated by rfnoc_image_builder.
>>>
>>> Thanks,
>>>
>>> Wade
>>>
>>> On Thu, Nov 19, 2020 at 8:52 AM Maria Mu=C3=B1oz via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hi everyone,
>>>>
>>>> I'm using an USRP E320 using the RFNoC image to implement a code that
>>>> requires too much FPGA resources. I only need to use one of the channe=
ls of
>>>> the USRP so I was wondering if it could be possible to eliminate the l=
ogic
>>>> associated with the other channel to save resources on the FPGA and if
>>>> there is a 'safe' way to do that.
>>>>  I mean I have seen on the verilog source code, that there is a
>>>> parameter 'NUM_CHANNELS_PER_RADIO' (e320.v on fpga repository) which
>>>> configures the channels of the radio, but what happens with the tx_i1,
>>>> tx_q1, rx_i1 and rx_1q signals that goes to the LVDS interface with th=
e
>>>> ADC? Can they be left unconnected?  Is there another parameter that I =
must
>>>> change to use only one channel and eliminate the 'extra' logic?
>>>>
>>>> Kind Regards,
>>>>
>>>> Maria
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000c0d4a805b4ea6612
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Wade,</div><div><br></div><div>Thanks for the answ=
er.</div><div><br></div><div>I get an error if I run this command with the =
modifications made on the .yml file:</div><div><br></div><div>~/rfnoc/src/u=
hd/host/utils$ ./rfnoc_image_builder.py -y ../../fpga/usrp3/top/e320/e320_r=
fnoc_image_core.yml -d e320 -t E320_1G -g</div><div><br></div><div><i>[WAR]=
 Module jsonschema is not installed. Configuration files will not be valida=
ted against their schema.<br>[WAR] Skip schema validation (missing module j=
sonschema).<br>[INF] Using FPGA directory /home/mamuqui/rfnoc/src/uhd/fpga<=
br>[INF] Selected device e320<br>[INF] Using io_signatures.yml from ../incl=
ude/uhd/rfnoc/core.<br>[INF] Using e320_bsp.yml from ../include/uhd/rfnoc/c=
ore.<br>[INF] Adding block description from replay.yml (../include/uhd/rfno=
c/blocks).<br>[INF] Adding block description from fft_1x64.yml (../include/=
uhd/rfnoc/blocks).<br>[INF] Adding block description from duc.yml (../inclu=
de/uhd/rfnoc/blocks).<br>[INF] Adding block description from null_src_sink.=
yml (../include/uhd/rfnoc/blocks).<br>[INF] Adding block description from m=
oving_avg.yml (../include/uhd/rfnoc/blocks).<br>[INF] Adding block descript=
ion from fosphor.yml (../include/uhd/rfnoc/blocks).<br>[INF] Adding block d=
escription from window.yml (../include/uhd/rfnoc/blocks).<br>[INF] Adding b=
lock description from radio_2x64.yml (../include/uhd/rfnoc/blocks).<br>[INF=
] Adding block description from axi_ram_fifo.yml (../include/uhd/rfnoc/bloc=
ks).<br>[INF] Adding block description from ddc.yml (../include/uhd/rfnoc/b=
locks).<br>[INF] Adding block description from axi_ram_fifo_4x64.yml (../in=
clude/uhd/rfnoc/blocks).<br>[INF] Adding block description from keep_one_in=
_n.yml (../include/uhd/rfnoc/blocks).<br>[INF] Adding block description fro=
m fir_filter.yml (../include/uhd/rfnoc/blocks).<br>[INF] Adding block descr=
iption from vector_iir.yml (../include/uhd/rfnoc/blocks).<br>[INF] Adding b=
lock description from addsub.yml (../include/uhd/rfnoc/blocks).<br>[INF] Ad=
ding block description from siggen.yml (../include/uhd/rfnoc/blocks).<br>[I=
NF] Adding block description from split_stream.yml (../include/uhd/rfnoc/bl=
ocks).<br>[INF] Adding block description from axi_ram_fifo_2x64.yml (../inc=
lude/uhd/rfnoc/blocks).<br>[INF] Adding block description from logpwr.yml (=
../include/uhd/rfnoc/blocks).<br>[INF] Adding block description from switch=
board.yml (../include/uhd/rfnoc/blocks).<br>[INF] Adding block description =
from radio.yml (../include/uhd/rfnoc/blocks).<br>[INF] Adding block descrip=
tion from radio_1x64.yml (../include/uhd/rfnoc/blocks).<br>[ERR] 1 Unresolv=
ed connection(s)<br>[ERR] =C2=A0 =C2=A0 (_device_-x300_radio -&gt; radio0-x=
300_radio)<br>[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;radio0&#39;, &#39;ct=
rl_port&#39;, &#39;master&#39;),)<br>[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#=
39;radio0&#39;, &#39;time_keeper&#39;, &#39;listener&#39;),)<br>[INF] =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;radio0&#39;, &#39;radio_iface&#39;, &#39;sl=
ave&#39;),)<br>[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;fifo0&#39;, &#39;ax=
i_ram&#39;, &#39;master&#39;),)<br>[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39=
;_device_&#39;, &#39;ctrl_port&#39;, &#39;slave&#39;),)<br>[INF] =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ((&#39;_device_&#39;, &#39;time_keeper&#39;, &#39;broadca=
ster&#39;),)<br>[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;_device_&#39;, &#3=
9;x300_radio&#39;, &#39;master&#39;),)<br>[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 ((&#39;_device_&#39;, &#39;dram&#39;, &#39;slave&#39;),)</i></div><div><i>=
<br></i></div><div>I attach the modified YAML file.</div><div>I guess this =
can be related to the BSP connection part of the file but I&#39;m not sure =
how to change this part to do what I want to do. Is there any documentation=
 about this part of the yaml file? I have read the &quot;Getting started wi=
th RFNoC in UHD 4.0&quot; (<a href=3D"https://kb.ettus.com/Getting_Started_=
with_RFNoC_in_UHD_4.0">https://kb.ettus.com/Getting_Started_with_RFNoC_in_U=
HD_4.0</a>) but I can&#39;t see what makes this part of the file.</div><div=
><br></div><div>Kind Regards,</div><div><br></div><div>Maria<br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El mi=
=C3=A9, 25 nov 2020 a las 2:42, Wade Fife (&lt;<a href=3D"mailto:wade.fife@=
ettus.com">wade.fife@ettus.com</a>&gt;) escribi=C3=B3:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Yes, that&#39;=
s correct. There&#39;s a radio_1x64.yml you can use to get a single channel=
 radio. You might consider removing the FIFO if you don&#39;t need it. <br>=
</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 24, 2020 at 8:46 AM Mar=
ia Mu=C3=B1oz via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><br><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">---------- F=
orwarded message ---------<br>De: <strong class=3D"gmail_sendername" dir=3D=
"auto">Maria Mu=C3=B1oz</strong> <span dir=3D"auto">&lt;<a href=3D"mailto:m=
amuki92@gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&gt;</span><br>D=
ate: lun, 23 nov 2020 a las 10:05<br>Subject: Re: [USRP-users] FPGA RFNoC R=
adio block with only one channel<br>To: Wade Fife &lt;<a href=3D"mailto:wad=
e.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt;<br></div><b=
r><br><div dir=3D"ltr"><div dir=3D"auto"><div>Hi Wade,</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">Thanks for your answer that=C2=A0helps me a =
lot.</div><div dir=3D"auto"><br></div><div dir=3D"auto">I have migrated to =
UHD 4.0 as you suggested so just a few questions to make sure I have unders=
tood how the YAML file and the tool work.</div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">I want to have a first image with radio, DUC, DDC and FIF=
O only using one channel of the radio. As I see on the e320_rfnoc_image_cor=
e YML file, the DDC, DUC, radio and a fifo block are instanced. And on the =
static connections=C2=A0part=C2=A0of the file are all the connections for e=
ach channel (I guess this is radio0(0) and radio0(1)). If I want to remove =
channel 1 for example, I must set=C2=A0 num ports to 1 on the instance of t=
he DDC/DUC and then remove the connections associated with the in/out_1. Is=
 that correct?</div><div dir=3D"auto">Should I also change num_ports on the=
 yml radio block file?=C2=A0=C2=A0</div><div dir=3D"auto">Then, to build th=
e image I must run rfnoc_image_builder with option -y and this modified yml=
 file, that&#39;s all?</div><div dir=3D"auto"><br></div><div>Kind regards,<=
/div><div><br></div><div>Maria</div><div dir=3D"auto"><br><br><div class=3D=
"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">El vie., 2=
0 nov. 2020 16:44, Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" tar=
get=3D"_blank">wade.fife@ettus.com</a>&gt; escribi=C3=B3:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Maria,</=
div><div><br></div><div>
I assume you&#39;re using UHD 3.15 or earlier, since you mentioned the &quo=
t;fpga repository&quot;.

I&#39;ve never tried what you&#39;re suggesting, so I don&#39;t know what c=
hallenges you&#39;ll run into. I think changing NUM_CHANNELS_PER_RADIO will=
 do what you want, but it will have some side effects, like removing the GP=
IO for that channel. I think it might be safer to just change the NUM_CHANN=
ELS that gets passed to e320_core, since I think that will remove just the =
radio and associated DDC/DUC while leaving all the other board signals conn=
ected. Again, I haven&#39;t tried it, so I can&#39;t say for sure.<br></div=
><div><br></div><div>In general, these kinds of changes need to be consider=
ed carefully, since it leaves signals undriven, which usually means they wi=
ll be driven to 0 by default. 0 is often the right value for something that=
&#39;s unused, but not always. There may also be software implications.<br>=
</div><div><br></div>By the way, these kinds of changes are easier to make =
in UHD 4.0 since it&#39;s described by a YAML file. So it&#39;s easy to say=
 you just want one radio and to leave out the DDC/DUC, or DRAM FIFO, for ex=
ample. The required Verilog is then generated by rfnoc_image_builder.<br><d=
iv><br></div><div>Thanks,</div><div><br></div><div>Wade<br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, No=
v 19, 2020 at 8:52 AM Maria Mu=C3=B1oz via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">usrp-user=
s@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr">Hi everyone,<div><br></div><div>I&#39;m u=
sing an USRP E320=20

 using the RFNoC image

to implement a code that requires too much FPGA resources. I only need to u=
se one of the channels of the USRP so I was wondering if it could be possib=
le to eliminate the logic associated with the other channel=C2=A0to save re=
sources on the FPGA and if there is a &#39;safe&#39; way to do that.</div><=
div>=C2=A0I mean I have seen on the verilog source code, that there is a pa=
rameter &#39;NUM_CHANNELS_PER_RADIO&#39; (e320.v on fpga repository) which =
configures the channels of the radio, but what happens with the tx_i1, tx_q=
1, rx_i1 and rx_1q signals that goes to the LVDS interface with the ADC? Ca=
n they be left unconnected?=C2=A0 Is there another parameter that I must ch=
ange to use only one channel and eliminate the &#39;extra&#39; logic?</div>=
<div><br></div><div>Kind Regards,</div><div><br></div><div>Maria=C2=A0</div=
></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div></div>
</div>
</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000c0d4a805b4ea6612--
--000000000000c0d4ab05b4ea6614
Content-Type: application/x-yaml; name="e320_rfnoc_image_core.yml"
Content-Disposition: attachment; filename="e320_rfnoc_image_core.yml"
Content-Transfer-Encoding: base64
Content-ID: <f_khx5io830>
X-Attachment-Id: f_khx5io830

IyBHZW5lcmFsIHBhcmFtZXRlcnMKIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQpzY2hlbWE6IHJmbm9jX2ltYWdlYnVpbGRlcl9hcmdzICAgICAgICAgIyBJZGVudGlm
aWVyIGZvciB0aGUgc2NoZW1hIHVzZWQgdG8gdmFsaWRhdGUgdGhpcyBmaWxlCmNvcHlyaWdodDog
J0V0dHVzIFJlc2VhcmNoLCBBIE5hdGlvbmFsIEluc3RydW1lbnRzIEJyYW5kJyAjIENvcHlyaWdo
dCBpbmZvcm1hdGlvbiB1c2VkIGluIGZpbGUgaGVhZGVycwpsaWNlbnNlOiAnU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IExHUEwtMy4wLW9yLWxhdGVyJyAjIExpY2Vuc2UgaW5mb3JtYXRpb24gdXNl
ZCBpbiBmaWxlIGhlYWRlcnMKdmVyc2lvbjogMS4wICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICMgRmlsZSB2ZXJzaW9uCnJmbm9jX3ZlcnNpb246IDEuMCAgICAgICAgICAgICAgICAgICAgICAj
IFJGTm9DIHByb3RvY29sIHZlcnNpb24KY2hkcl93aWR0aDogNjQgICAgICAgICAgICAgICAgICAg
ICAgICAgICMgQml0IHdpZHRoIG9mIHRoZSBDSERSIGJ1cyBmb3IgdGhpcyBpbWFnZQpkZXZpY2U6
ICdlMzIwJwpkZWZhdWx0X3RhcmdldDogJ0UzMjBfMUcnCgoKCiMgQSBsaXN0IG9mIGFsbCBzdHJl
YW0gZW5kcG9pbnRzIGluIGRlc2lnbgojIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0Kc3RyZWFtX2VuZHBvaW50czoKICBlcDA6ICAgICAgICAgICAgICAgICAgICAgICAj
IFN0cmVhbSBlbmRwb2ludCBuYW1lCiAgICBjdHJsOiBUcnVlICAgICAgICAgICAgICAgICAgICAg
ICMgRW5kcG9pbnQgcGFzc2VzIGNvbnRyb2wgdHJhZmZpYwogICAgZGF0YTogVHJ1ZSAgICAgICAg
ICAgICAgICAgICAgICAjIEVuZHBvaW50IHBhc3NlcyBkYXRhIHRyYWZmaWMKICAgIGJ1ZmZfc2l6
ZTogMzI3NjggICAgICAgICAgICAgICAgIyBJbmdyZXNzIGJ1ZmZlciBzaXplIGZvciBkYXRhCiMg
IGVwMTogICAgICAgICAgICAgICAgICAgICAgICMgU3RyZWFtIGVuZHBvaW50IG5hbWUKIyAgICBj
dHJsOiBGYWxzZSAgICAgICAgICAgICAgICAgICAgICMgRW5kcG9pbnQgcGFzc2VzIGNvbnRyb2wg
dHJhZmZpYwojICAgIGRhdGE6IFRydWUgICAgICAgICAgICAgICAgICAgICAgIyBFbmRwb2ludCBw
YXNzZXMgZGF0YSB0cmFmZmljCiMgICAgYnVmZl9zaXplOiAzMjc2OCAgICAgICAgICAgICAgICAj
IEluZ3Jlc3MgYnVmZmVyIHNpemUgZm9yIGRhdGEKICBlcDI6ICAgICAgICAgICAgICAgICAgICAg
ICAjIFN0cmVhbSBlbmRwb2ludCBuYW1lCiAgICBjdHJsOiBGYWxzZSAgICAgICAgICAgICAgICAg
ICAgICMgRW5kcG9pbnQgcGFzc2VzIGNvbnRyb2wgdHJhZmZpYwogICAgZGF0YTogVHJ1ZSAgICAg
ICAgICAgICAgICAgICAgICAjIEVuZHBvaW50IHBhc3NlcyBkYXRhIHRyYWZmaWMKICAgIGJ1ZmZf
c2l6ZTogODE5MiAgICAgICAgICAgICAgICAgIyBJbmdyZXNzIGJ1ZmZlciBzaXplIGZvciBkYXRh
CiAgZXAzOiAgICAgICAgICAgICAgICAgICAgICAgIyBTdHJlYW0gZW5kcG9pbnQgbmFtZQogICAg
Y3RybDogRmFsc2UgICAgICAgICAgICAgICAgICAgICAjIEVuZHBvaW50IHBhc3NlcyBjb250cm9s
IHRyYWZmaWMKICAgIGRhdGE6IFRydWUgICAgICAgICAgICAgICAgICAgICAgIyBFbmRwb2ludCBw
YXNzZXMgZGF0YSB0cmFmZmljCiAgICBidWZmX3NpemU6IDgxOTIgICAgICAgICAgICAgICAgICMg
SW5ncmVzcyBidWZmZXIgc2l6ZSBmb3IgZGF0YQoKIyBBIGxpc3Qgb2YgYWxsIE5vQyBibG9ja3Mg
aW4gZGVzaWduCiMgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpub2NfYmxvY2tz
OgogIGR1YzA6ICAgICAgICAgICAgICAgICAgICAgICMgTm9DIGJsb2NrIG5hbWUKICAgIGJsb2Nr
X2Rlc2M6ICdkdWMueW1sJyAgICAjIEJsb2NrIGRldmljZSBkZXNjcmlwdG9yIGZpbGUKICAgIHBh
cmFtZXRlcnM6CiAgICAgIE5VTV9QT1JUUzogMQogIGRkYzA6CiAgICBibG9ja19kZXNjOiAnZGRj
LnltbCcKICAgIHBhcmFtZXRlcnM6CiAgICAgIE5VTV9QT1JUUzogMQogIHJhZGlvMDoKICAgIGJs
b2NrX2Rlc2M6ICdyYWRpb18xeDY0LnltbCcKICBmaWZvMDoKICAgIGJsb2NrX2Rlc2M6ICdheGlf
cmFtX2ZpZm9fMng2NC55bWwnCiAgICBwYXJhbWV0ZXJzOgogICAgICAjIFRoZXNlIHBhcmFtZXRl
cnMgY29ycmVzcG9uZCB0byB0aGUgbWVtb3J5IGludGVyZmFjZSBvbiB0aGUgRTMyMAogICAgICBN
RU1fQUREUl9XOiAgIDMxCiAgICAgIE1FTV9EQVRBX1c6ICAgNjQKICAgICAgTUVNX0NMS19SQVRF
OiAiMzAwZTYiCiAgICAgICMgQ3JlYXRlIHR3byBub24tb3ZlcmxhcHBpbmcgMzIgTUIgYnVmZmVy
cyBieSBkZWZhdWx0CiAgICAgIEZJRk9fQUREUl9CQVNFOiAiezMxJ2gwMjAwMDAwMCwgMzEnaDAw
MDAwMDAwfSIKICAgICAgRklGT19BRERSX01BU0s6ICJ7MzEnaDAxRkZGRkZGLCAzMSdoMDFGRkZG
RkZ9IgoKIyBBIGxpc3Qgb2YgYWxsIHN0YXRpYyBjb25uZWN0aW9ucyBpbiBkZXNpZ24KIyAtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIyBGb3JtYXQ6IEEgbGlzdCBv
ZiBjb25uZWN0aW9uIG1hcHMgKGxpc3Qgb2Yga2V5LXZhbHVlIHBhaXJzKSB3aXRoIHRoZSBmb2xs
b3dpbmcga2V5cwojICAgICAgICAgLSBzcmNibGsgID0gU291cmNlIGJsb2NrIHRvIGNvbm5lY3QK
IyAgICAgICAgIC0gc3JjcG9ydCA9IFBvcnQgb24gdGhlIHNvdXJjZSBibG9jayB0byBjb25uZWN0
CiMgICAgICAgICAtIGRzdGJsayAgPSBEZXN0aW5hdGlvbiBibG9jayB0byBjb25uZWN0CiMgICAg
ICAgICAtIGRzdHBvcnQgPSBQb3J0IG9uIHRoZSBkZXN0aW5hdGlvbiBibG9jayB0byBjb25uZWN0
CmNvbm5lY3Rpb25zOgogICMgZXAwIHRvIHJhZGlvMCgwKSAtIFJGMCBUWAogIC0geyBzcmNibGs6
IGVwMCwgICAgc3JjcG9ydDogb3V0MCwgIGRzdGJsazogZHVjMCwgICBkc3Rwb3J0OiBpbl8wIH0K
ICAtIHsgc3JjYmxrOiBkdWMwLCAgIHNyY3BvcnQ6IG91dF8wLCBkc3RibGs6IHJhZGlvMCwgZHN0
cG9ydDogaW5fMCB9CiAgIyByYWRpbzAoMCkgdG8gZXAwIC0gUkYwIFJYCiAgLSB7IHNyY2Jsazog
cmFkaW8wLCBzcmNwb3J0OiBvdXRfMCwgZHN0YmxrOiBkZGMwLCAgIGRzdHBvcnQ6IGluXzAgfQog
IC0geyBzcmNibGs6IGRkYzAsICAgc3JjcG9ydDogb3V0XzAsIGRzdGJsazogZXAwLCAgICBkc3Rw
b3J0OiBpbjAgIH0KIyAgIyBlcDEgdG8gcmFkaW8wKDEpIC0gUkYxIFRYCiMgIC0geyBzcmNibGs6
IGVwMSwgICAgc3JjcG9ydDogb3V0MCwgIGRzdGJsazogZHVjMCwgICBkc3Rwb3J0OiBpbl8xIH0K
IyAgLSB7IHNyY2JsazogZHVjMCwgICBzcmNwb3J0OiBvdXRfMSwgZHN0YmxrOiByYWRpbzAsIGRz
dHBvcnQ6IGluXzEgfQojICAjIHJhZGlvMCgxKSB0byBlcDEgLSBSRjEgUlgKIyAgLSB7IHNyY2Js
azogcmFkaW8wLCBzcmNwb3J0OiBvdXRfMSwgZHN0YmxrOiBkZGMwLCAgIGRzdHBvcnQ6IGluXzEg
fQojICAtIHsgc3JjYmxrOiBkZGMwLCAgIHNyY3BvcnQ6IG91dF8xLCBkc3RibGs6IGVwMSwgICAg
ZHN0cG9ydDogaW4wICB9CiAgIyBlcDIgdG8gZmlmbzAoMCkKICAtIHsgc3JjYmxrOiBlcDIsICAg
IHNyY3BvcnQ6IG91dDAsICBkc3RibGs6IGZpZm8wLCAgZHN0cG9ydDogaW5fMCB9CiAgLSB7IHNy
Y2JsazogZmlmbzAsICBzcmNwb3J0OiBvdXRfMCwgZHN0YmxrOiBlcDIsICAgIGRzdHBvcnQ6IGlu
MCAgfQogICMgZXAzIHRvIGZpZm8wKDEpCiAgLSB7IHNyY2JsazogZXAzLCAgICBzcmNwb3J0OiBv
dXQwLCAgZHN0YmxrOiBmaWZvMCwgIGRzdHBvcnQ6IGluXzEgfQogIC0geyBzcmNibGs6IGZpZm8w
LCAgc3JjcG9ydDogb3V0XzEsIGRzdGJsazogZXAzLCAgICBkc3Rwb3J0OiBpbjAgIH0KICAjIEJT
UCBDb25uZWN0aW9ucwogIC0geyBzcmNibGs6IHJhZGlvMCwgICBzcmNwb3J0OiBjdHJsX3BvcnQs
ICAgZHN0YmxrOiBfZGV2aWNlXywgZHN0cG9ydDogY3RybF9wb3J0ICAgfQogIC0geyBzcmNibGs6
IF9kZXZpY2VfLCBzcmNwb3J0OiB4MzAwX3JhZGlvLCAgZHN0YmxrOiByYWRpbzAsICAgZHN0cG9y
dDogeDMwMF9yYWRpbyAgfQogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiB0aW1lX2tl
ZXBlciwgZHN0YmxrOiByYWRpbzAsICAgZHN0cG9ydDogdGltZV9rZWVwZXIgfQogIC0geyBzcmNi
bGs6IGZpZm8wLCAgICBzcmNwb3J0OiBheGlfcmFtLCAgICAgZHN0YmxrOiBfZGV2aWNlXywgZHN0
cG9ydDogZHJhbSAgICAgICAgfQoKIyBBIGxpc3Qgb2YgYWxsIGNsb2NrIGRvbWFpbiBjb25uZWN0
aW9ucyBpbiBkZXNpZ24KIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KIyBGb3JtYXQ6IEEgbGlzdCBvZiBjb25uZWN0aW9uIG1hcHMgKGxpc3Qgb2Yga2V5
LXZhbHVlIHBhaXJzKSB3aXRoIHRoZSBmb2xsb3dpbmcga2V5cwojICAgICAgICAgLSBzcmNibGsg
ID0gU291cmNlIGJsb2NrIHRvIGNvbm5lY3QgKEFsd2F5cyAiX2RldmljZSJfKQojICAgICAgICAg
LSBzcmNwb3J0ID0gQ2xvY2sgZG9tYWluIG9uIHRoZSBzb3VyY2UgYmxvY2sgdG8gY29ubmVjdAoj
ICAgICAgICAgLSBkc3RibGsgID0gRGVzdGluYXRpb24gYmxvY2sgdG8gY29ubmVjdAojICAgICAg
ICAgLSBkc3Rwb3J0ID0gQ2xvY2sgZG9tYWluIG9uIHRoZSBkZXN0aW5hdGlvbiBibG9jayB0byBj
b25uZWN0CmNsa19kb21haW5zOgogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiByYWRp
bywgICAgICBkc3RibGs6IHJhZGlvMCwgZHN0cG9ydDogcmFkaW8gfQogIC0geyBzcmNibGs6IF9k
ZXZpY2VfLCBzcmNwb3J0OiByZm5vY19jaGRyLCBkc3RibGs6IGR1YzAsICAgZHN0cG9ydDogY2Ug
ICAgfQogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0OiByZm5vY19jaGRyLCBkc3RibGs6
IGRkYzAsICAgZHN0cG9ydDogY2UgICAgfQogIC0geyBzcmNibGs6IF9kZXZpY2VfLCBzcmNwb3J0
OiBkcmFtLCAgICAgICBkc3RibGs6IGZpZm8wLCAgZHN0cG9ydDogbWVtICAgfQo=
--000000000000c0d4ab05b4ea6614
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--000000000000c0d4ab05b4ea6614--

