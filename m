Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B582C44A7
	for <lists+usrp-users@lfdr.de>; Wed, 25 Nov 2020 17:07:29 +0100 (CET)
Received: from [::1] (port=43592 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khxKH-0006Yu-DV; Wed, 25 Nov 2020 11:07:25 -0500
Received: from mail-ot1-f42.google.com ([209.85.210.42]:42481)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1khxKE-0006LA-7a
 for usrp-users@lists.ettus.com; Wed, 25 Nov 2020 11:07:22 -0500
Received: by mail-ot1-f42.google.com with SMTP id 11so2659154oty.9
 for <usrp-users@lists.ettus.com>; Wed, 25 Nov 2020 08:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zuyI1EiF/URFbwmRUPdkZjLkiPbGM1tkmOj1j2IBDkk=;
 b=JqJzyaXpL0qDoCGErwNnnjXQBInc8HdqKeAhECFRAGdQI8j4GEQaRIvIZ7FBJczoUB
 dXpdPVUl0EAlCwib4wc6tMGcJ1f5l38x4vgKt1vrjm/4M1054+dJAi+z8qr10kfWsehv
 ePJedmOoQjiEwFWLi2rVT06bYMSf/Fm1dStu72L5npLOBeH1tloz2rbC9U3uQOEucOZB
 0A1NxPx0N6epnjDjJWFN6JPS9jT7UkazwqJp2fGI7e06FDfy5rwFT+IAdiWscfAgVFhz
 oOnNmPhQ7vjAXKixfZ5xS0gUON2xvyRKhOlnvQmQX/AzGTD/sbwcel8F9rn6XYy9p7x2
 UUQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zuyI1EiF/URFbwmRUPdkZjLkiPbGM1tkmOj1j2IBDkk=;
 b=IMEgU2zZtQ1wJGhmewtavOO8KOhvGDj0/eUJLVnyiuBwSuAdCxJ+jWc+rH75CpIPPL
 jDohy+rykhxNmTjh/fFyXgjdanDWW8KU9sfH4P5OeBaHTtBoD+IsHjDL4sSdslqDw6xu
 dTGNrLkkHOqGfEeipcRQ0NP8fyWbTjgGG6k1JgWBdn1Wbq9AUU02zdtjr61QB39GFmny
 HENuQYs1vDnfYVkwXdIKoPyBF2VvLKsxjgUtX4WnsffHBMO45+w/ieiR5nE4iXFophKI
 YE9QWed97x1dPZwVrf5OabLcZCdI49BRkSjHCbbBw8jpiQ7lyFm+o45knyhzDSoKtJc6
 9Y3Q==
X-Gm-Message-State: AOAM530SleJ1kgCsQrm/FP6PJN75kvJjezTtNVMe7Tp4PyWQk2ojkgk/
 NsLpzFEQQBGi5H25ZVlz8pmzvJsSAPOZ8KuGICNoH2i+
X-Google-Smtp-Source: ABdhPJw7nRFIoRUh46MiFiBZo/xomIr642S14uHic6Nlznk9KkyfacV60WmiKvQBrGc+HAgRnBDdXLWSr1TVsXgz6Ro=
X-Received: by 2002:a9d:39b7:: with SMTP id y52mr3424365otb.28.1606320400700; 
 Wed, 25 Nov 2020 08:06:40 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQV0xTxQxPmFpBO_5q8Og03MWVhieY2VnBhK9UTE5fVfZw@mail.gmail.com>
 <CAFche=gpYoYXydtJkmVaGA9xA4e7u6a7R-FdQ894W0dj=2CaaA@mail.gmail.com>
 <CAG16vQUW56L2-uJnaszSdB+xq+hfn2TkJ21xe-s3yLCb3j1pPA@mail.gmail.com>
 <CAG16vQV9o_5WiD6BbDFOQn8EDYEeVoQ2c=RJa98MYeiMC4ysdg@mail.gmail.com>
 <CAFche=jEF=s1uGmj_W=QeD-RVgg=eBaNmU7LPpQhjskZBWGzxg@mail.gmail.com>
 <CAG16vQWzg+5fTFqoDQWQTSqjM_EdRoosxPBLfoCkbXJHdweSQA@mail.gmail.com>
In-Reply-To: <CAG16vQWzg+5fTFqoDQWQTSqjM_EdRoosxPBLfoCkbXJHdweSQA@mail.gmail.com>
Date: Wed, 25 Nov 2020 10:06:33 -0600
Message-ID: <CAFche=iAmqBQBdRJYYWrJ9pc-CvNqXU+htLsyZzR_rSemziG_w@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
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
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="===============4173364509844841376=="
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

--===============4173364509844841376==
Content-Type: multipart/alternative; boundary="000000000000e12a2505b4f09cc4"

--000000000000e12a2505b4f09cc4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maria,

I think you need to change the dstport on line 86 to from x300_radio to
radio_iface. When there are unresolved connections, the tool outputs the
list of connections available. The one you want is (('radio0',
'radio_iface', 'slave'),). You can also check the port name in the
radio_1x64.yml file. It's confusing that the port name is different in this
case. I was recently working on fixing that so that, hopefully, you won't
have to update the port name for changes like this in the future.

Thanks,

Wade

On Wed, Nov 25, 2020 at 2:42 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wrote=
:

> Hi Wade,
>
> Thanks for the answer.
>
> I get an error if I run this command with the modifications made on the
> .yml file:
>
> ~/rfnoc/src/uhd/host/utils$ ./rfnoc_image_builder.py -y
> ../../fpga/usrp3/top/e320/e320_rfnoc_image_core.yml -d e320 -t E320_1G -g
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *[WAR] Module jsonschema is not installed. Configuration files will not b=
e
> validated against their schema.[WAR] Skip schema validation (missing modu=
le
> jsonschema).[INF] Using FPGA directory
> /home/mamuqui/rfnoc/src/uhd/fpga[INF] Selected device e320[INF] Using
> io_signatures.yml from ../include/uhd/rfnoc/core.[INF] Using e320_bsp.yml
> from ../include/uhd/rfnoc/core.[INF] Adding block description from
> replay.yml (../include/uhd/rfnoc/blocks).[INF] Adding block description
> from fft_1x64.yml (../include/uhd/rfnoc/blocks).[INF] Adding block
> description from duc.yml (../include/uhd/rfnoc/blocks).[INF] Adding block
> description from null_src_sink.yml (../include/uhd/rfnoc/blocks).[INF]
> Adding block description from moving_avg.yml
> (../include/uhd/rfnoc/blocks).[INF] Adding block description from
> fosphor.yml (../include/uhd/rfnoc/blocks).[INF] Adding block description
> from window.yml (../include/uhd/rfnoc/blocks).[INF] Adding block
> description from radio_2x64.yml (../include/uhd/rfnoc/blocks).[INF] Addin=
g
> block description from axi_ram_fifo.yml (../include/uhd/rfnoc/blocks).[IN=
F]
> Adding block description from ddc.yml (../include/uhd/rfnoc/blocks).[INF]
> Adding block description from axi_ram_fifo_4x64.yml
> (../include/uhd/rfnoc/blocks).[INF] Adding block description from
> keep_one_in_n.yml (../include/uhd/rfnoc/blocks).[INF] Adding block
> description from fir_filter.yml (../include/uhd/rfnoc/blocks).[INF] Addin=
g
> block description from vector_iir.yml (../include/uhd/rfnoc/blocks).[INF]
> Adding block description from addsub.yml
> (../include/uhd/rfnoc/blocks).[INF] Adding block description from
> siggen.yml (../include/uhd/rfnoc/blocks).[INF] Adding block description
> from split_stream.yml (../include/uhd/rfnoc/blocks).[INF] Adding block
> description from axi_ram_fifo_2x64.yml (../include/uhd/rfnoc/blocks).[INF=
]
> Adding block description from logpwr.yml
> (../include/uhd/rfnoc/blocks).[INF] Adding block description from
> switchboard.yml (../include/uhd/rfnoc/blocks).[INF] Adding block
> description from radio.yml (../include/uhd/rfnoc/blocks).[INF] Adding blo=
ck
> description from radio_1x64.yml (../include/uhd/rfnoc/blocks).[ERR] 1
> Unresolved connection(s)[ERR]     (_device_-x300_radio ->
> radio0-x300_radio)[INF]         (('radio0', 'ctrl_port', 'master'),)[INF]
>       (('radio0', 'time_keeper', 'listener'),)[INF]         (('radio0',
> 'radio_iface', 'slave'),)[INF]         (('fifo0', 'axi_ram',
> 'master'),)[INF]         (('_device_', 'ctrl_port', 'slave'),)[INF]
> (('_device_', 'time_keeper', 'broadcaster'),)[INF]         (('_device_',
> 'x300_radio', 'master'),)[INF]         (('_device_', 'dram', 'slave'),)*
>
> I attach the modified YAML file.
> I guess this can be related to the BSP connection part of the file but I'=
m
> not sure how to change this part to do what I want to do. Is there any
> documentation about this part of the yaml file? I have read the "Getting
> started with RFNoC in UHD 4.0" (
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0) but I can't
> see what makes this part of the file.
>
> Kind Regards,
>
> Maria
>
> El mi=C3=A9, 25 nov 2020 a las 2:42, Wade Fife (<wade.fife@ettus.com>)
> escribi=C3=B3:
>
>> Yes, that's correct. There's a radio_1x64.yml you can use to get a singl=
e
>> channel radio. You might consider removing the FIFO if you don't need it=
.
>>
>> Wade
>>
>> On Tue, Nov 24, 2020 at 8:46 AM Maria Mu=C3=B1oz via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>>
>>>
>>> ---------- Forwarded message ---------
>>> De: Maria Mu=C3=B1oz <mamuki92@gmail.com>
>>> Date: lun, 23 nov 2020 a las 10:05
>>> Subject: Re: [USRP-users] FPGA RFNoC Radio block with only one channel
>>> To: Wade Fife <wade.fife@ettus.com>
>>>
>>>
>>> Hi Wade,
>>>
>>> Thanks for your answer that helps me a lot.
>>>
>>> I have migrated to UHD 4.0 as you suggested so just a few questions to
>>> make sure I have understood how the YAML file and the tool work.
>>>
>>> I want to have a first image with radio, DUC, DDC and FIFO only using
>>> one channel of the radio. As I see on the e320_rfnoc_image_core YML fil=
e,
>>> the DDC, DUC, radio and a fifo block are instanced. And on the static
>>> connections part of the file are all the connections for each channel (=
I
>>> guess this is radio0(0) and radio0(1)). If I want to remove channel 1 f=
or
>>> example, I must set  num ports to 1 on the instance of the DDC/DUC and =
then
>>> remove the connections associated with the in/out_1. Is that correct?
>>> Should I also change num_ports on the yml radio block file?
>>> Then, to build the image I must run rfnoc_image_builder with option -y
>>> and this modified yml file, that's all?
>>>
>>> Kind regards,
>>>
>>> Maria
>>>
>>>
>>> El vie., 20 nov. 2020 16:44, Wade Fife <wade.fife@ettus.com> escribi=C3=
=B3:
>>>
>>>> Hi Maria,
>>>>
>>>> I assume you're using UHD 3.15 or earlier, since you mentioned the
>>>> "fpga repository". I've never tried what you're suggesting, so I don't=
 know
>>>> what challenges you'll run into. I think changing NUM_CHANNELS_PER_RAD=
IO
>>>> will do what you want, but it will have some side effects, like removi=
ng
>>>> the GPIO for that channel. I think it might be safer to just change th=
e
>>>> NUM_CHANNELS that gets passed to e320_core, since I think that will re=
move
>>>> just the radio and associated DDC/DUC while leaving all the other boar=
d
>>>> signals connected. Again, I haven't tried it, so I can't say for sure.
>>>>
>>>> In general, these kinds of changes need to be considered carefully,
>>>> since it leaves signals undriven, which usually means they will be dri=
ven
>>>> to 0 by default. 0 is often the right value for something that's unuse=
d,
>>>> but not always. There may also be software implications.
>>>>
>>>> By the way, these kinds of changes are easier to make in UHD 4.0 since
>>>> it's described by a YAML file. So it's easy to say you just want one r=
adio
>>>> and to leave out the DDC/DUC, or DRAM FIFO, for example. The required
>>>> Verilog is then generated by rfnoc_image_builder.
>>>>
>>>> Thanks,
>>>>
>>>> Wade
>>>>
>>>> On Thu, Nov 19, 2020 at 8:52 AM Maria Mu=C3=B1oz via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> Hi everyone,
>>>>>
>>>>> I'm using an USRP E320 using the RFNoC image to implement a code that
>>>>> requires too much FPGA resources. I only need to use one of the chann=
els of
>>>>> the USRP so I was wondering if it could be possible to eliminate the =
logic
>>>>> associated with the other channel to save resources on the FPGA and i=
f
>>>>> there is a 'safe' way to do that.
>>>>>  I mean I have seen on the verilog source code, that there is a
>>>>> parameter 'NUM_CHANNELS_PER_RADIO' (e320.v on fpga repository) which
>>>>> configures the channels of the radio, but what happens with the tx_i1=
,
>>>>> tx_q1, rx_i1 and rx_1q signals that goes to the LVDS interface with t=
he
>>>>> ADC? Can they be left unconnected?  Is there another parameter that I=
 must
>>>>> change to use only one channel and eliminate the 'extra' logic?
>>>>>
>>>>> Kind Regards,
>>>>>
>>>>> Maria
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--000000000000e12a2505b4f09cc4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Maria,</div><div><br></div><div>I think you need t=
o change the dstport on line 86 to from x300_radio to radio_iface. When the=
re are unresolved connections, the tool outputs the list of connections ava=
ilable. The one you want is ((&#39;radio0&#39;, &#39;radio_iface&#39;, &#39=
;slave&#39;),). You can also check the port name in the radio_1x64.yml file=
. It&#39;s confusing that the port name is different in this case. I was re=
cently working on fixing that so that, hopefully, you won&#39;t have to upd=
ate the port name for changes like this in the future.<br></div><div><br></=
div><div>Thanks,</div><div><br></div><div>Wade<br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 25, 202=
0 at 2:42 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com">mam=
uki92@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><div>Hi Wade,</div><div><br></div><div>Than=
ks for the answer.</div><div><br></div><div>I get an error if I run this co=
mmand with the modifications made on the .yml file:</div><div><br></div><di=
v>~/rfnoc/src/uhd/host/utils$ ./rfnoc_image_builder.py -y ../../fpga/usrp3/=
top/e320/e320_rfnoc_image_core.yml -d e320 -t E320_1G -g</div><div><br></di=
v><div><i>[WAR] Module jsonschema is not installed. Configuration files wil=
l not be validated against their schema.<br>[WAR] Skip schema validation (m=
issing module jsonschema).<br>[INF] Using FPGA directory /home/mamuqui/rfno=
c/src/uhd/fpga<br>[INF] Selected device e320<br>[INF] Using io_signatures.y=
ml from ../include/uhd/rfnoc/core.<br>[INF] Using e320_bsp.yml from ../incl=
ude/uhd/rfnoc/core.<br>[INF] Adding block description from replay.yml (../i=
nclude/uhd/rfnoc/blocks).<br>[INF] Adding block description from fft_1x64.y=
ml (../include/uhd/rfnoc/blocks).<br>[INF] Adding block description from du=
c.yml (../include/uhd/rfnoc/blocks).<br>[INF] Adding block description from=
 null_src_sink.yml (../include/uhd/rfnoc/blocks).<br>[INF] Adding block des=
cription from moving_avg.yml (../include/uhd/rfnoc/blocks).<br>[INF] Adding=
 block description from fosphor.yml (../include/uhd/rfnoc/blocks).<br>[INF]=
 Adding block description from window.yml (../include/uhd/rfnoc/blocks).<br=
>[INF] Adding block description from radio_2x64.yml (../include/uhd/rfnoc/b=
locks).<br>[INF] Adding block description from axi_ram_fifo.yml (../include=
/uhd/rfnoc/blocks).<br>[INF] Adding block description from ddc.yml (../incl=
ude/uhd/rfnoc/blocks).<br>[INF] Adding block description from axi_ram_fifo_=
4x64.yml (../include/uhd/rfnoc/blocks).<br>[INF] Adding block description f=
rom keep_one_in_n.yml (../include/uhd/rfnoc/blocks).<br>[INF] Adding block =
description from fir_filter.yml (../include/uhd/rfnoc/blocks).<br>[INF] Add=
ing block description from vector_iir.yml (../include/uhd/rfnoc/blocks).<br=
>[INF] Adding block description from addsub.yml (../include/uhd/rfnoc/block=
s).<br>[INF] Adding block description from siggen.yml (../include/uhd/rfnoc=
/blocks).<br>[INF] Adding block description from split_stream.yml (../inclu=
de/uhd/rfnoc/blocks).<br>[INF] Adding block description from axi_ram_fifo_2=
x64.yml (../include/uhd/rfnoc/blocks).<br>[INF] Adding block description fr=
om logpwr.yml (../include/uhd/rfnoc/blocks).<br>[INF] Adding block descript=
ion from switchboard.yml (../include/uhd/rfnoc/blocks).<br>[INF] Adding blo=
ck description from radio.yml (../include/uhd/rfnoc/blocks).<br>[INF] Addin=
g block description from radio_1x64.yml (../include/uhd/rfnoc/blocks).<br>[=
ERR] 1 Unresolved connection(s)<br>[ERR] =C2=A0 =C2=A0 (_device_-x300_radio=
 -&gt; radio0-x300_radio)<br>[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;radio=
0&#39;, &#39;ctrl_port&#39;, &#39;master&#39;),)<br>[INF] =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ((&#39;radio0&#39;, &#39;time_keeper&#39;, &#39;listener&#39;),)=
<br>[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;radio0&#39;, &#39;radio_iface&=
#39;, &#39;slave&#39;),)<br>[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;fifo0&=
#39;, &#39;axi_ram&#39;, &#39;master&#39;),)<br>[INF] =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ((&#39;_device_&#39;, &#39;ctrl_port&#39;, &#39;slave&#39;),)<br>[IN=
F] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;_device_&#39;, &#39;time_keeper&#39;,=
 &#39;broadcaster&#39;),)<br>[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;_devi=
ce_&#39;, &#39;x300_radio&#39;, &#39;master&#39;),)<br>[INF] =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 ((&#39;_device_&#39;, &#39;dram&#39;, &#39;slave&#39;),)</i><=
/div><div><i><br></i></div><div>I attach the modified YAML file.</div><div>=
I guess this can be related to the BSP connection part of the file but I&#3=
9;m not sure how to change this part to do what I want to do. Is there any =
documentation about this part of the yaml file? I have read the &quot;Getti=
ng started with RFNoC in UHD 4.0&quot; (<a href=3D"https://kb.ettus.com/Get=
ting_Started_with_RFNoC_in_UHD_4.0" target=3D"_blank">https://kb.ettus.com/=
Getting_Started_with_RFNoC_in_UHD_4.0</a>) but I can&#39;t see what makes t=
his part of the file.</div><div><br></div><div>Kind Regards,</div><div><br>=
</div><div>Maria<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">El mi=C3=A9, 25 nov 2020 a las 2:42, Wade Fife (&=
lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus=
.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div>Yes, that&#39;s correct. There&#39;s a r=
adio_1x64.yml you can use to get a single channel radio. You might consider=
 removing the FIFO if you don&#39;t need it. <br></div><div><br></div><div>=
Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Nov 24, 2020 at 8:46 AM Maria Mu=C3=B1oz via USRP-u=
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><br><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">---------- Forwarded message -------=
--<br>De: <strong class=3D"gmail_sendername" dir=3D"auto">Maria Mu=C3=B1oz<=
/strong> <span dir=3D"auto">&lt;<a href=3D"mailto:mamuki92@gmail.com" targe=
t=3D"_blank">mamuki92@gmail.com</a>&gt;</span><br>Date: lun, 23 nov 2020 a =
las 10:05<br>Subject: Re: [USRP-users] FPGA RFNoC Radio block with only one=
 channel<br>To: Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=
=3D"_blank">wade.fife@ettus.com</a>&gt;<br></div><br><br><div dir=3D"ltr"><=
div dir=3D"auto"><div>Hi Wade,</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Thanks for your answer that=C2=A0helps me a lot.</div><div dir=3D"au=
to"><br></div><div dir=3D"auto">I have migrated to UHD 4.0 as you suggested=
 so just a few questions to make sure I have understood how the YAML file a=
nd the tool work.</div><div dir=3D"auto"><br></div><div dir=3D"auto">I want=
 to have a first image with radio, DUC, DDC and FIFO only using one channel=
 of the radio. As I see on the e320_rfnoc_image_core YML file, the DDC, DUC=
, radio and a fifo block are instanced. And on the static connections=C2=A0=
part=C2=A0of the file are all the connections for each channel (I guess thi=
s is radio0(0) and radio0(1)). If I want to remove channel 1 for example, I=
 must set=C2=A0 num ports to 1 on the instance of the DDC/DUC and then remo=
ve the connections associated with the in/out_1. Is that correct?</div><div=
 dir=3D"auto">Should I also change num_ports on the yml radio block file?=
=C2=A0=C2=A0</div><div dir=3D"auto">Then, to build the image I must run rfn=
oc_image_builder with option -y and this modified yml file, that&#39;s all?=
</div><div dir=3D"auto"><br></div><div>Kind regards,</div><div><br></div><d=
iv>Maria</div><div dir=3D"auto"><br><br><div class=3D"gmail_quote" dir=3D"a=
uto"><div dir=3D"ltr" class=3D"gmail_attr">El vie., 20 nov. 2020 16:44, Wad=
e Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fi=
fe@ettus.com</a>&gt; escribi=C3=B3:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div>Hi Maria,</div><div><br></div><di=
v>
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
</blockquote></div>

--000000000000e12a2505b4f09cc4--


--===============4173364509844841376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4173364509844841376==--

