Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1025544A1
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jun 2022 10:29:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0FDC8383D4D
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jun 2022 04:29:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655886585; bh=hzvrEG4/TCZzRtO0k3qjUcJGxqLUvqr2Alat7xb2qFE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=EAdT50HWDzdzDSUWtNMwd/AYLW514enlTXOATiomZlHZ3HyhKRvodSxPN9OXPV9P6
	 YiZxz66jy7SWv2/2J/5vKEBcTiNCt533hu7l/sQ38RD56w+NNjZQGsrLlOezUmJJUV
	 snCqrl15k2Mox2RCfaraAFs3VEwqLWq3+V9gONTDoAxhAveCoexuxSZ726oFxxfSR+
	 38h94EPF6PJR50nFR/XVY8dltL30cbpJud163L2uHMlYHb11kHaAZDhY9et7yVuwIw
	 WKtq5OKdRvDQqWPJuEtEld1gKZbNmMlZVH8yPG4JQCT061L3qaOglmjck0GoCnS7PV
	 yFqEOulwnvtZA==
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 2D206383D4A
	for <usrp-users@lists.ettus.com>; Wed, 22 Jun 2022 04:28:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mDRarZk1";
	dkim-atps=neutral
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-31780ad7535so129024897b3.8
        for <usrp-users@lists.ettus.com>; Wed, 22 Jun 2022 01:28:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+g9tCmaegeobE0h5+5iBU4AUC9dWfNQWrktObWblvbA=;
        b=mDRarZk1V3Vr3AiojqcdZF3Q8epPbAyzu60eP+kVJDG3/dYrfCksZBQ2koaPgd696m
         9d1Q0azu/bb1/6xssTkD4E4r8UlJZcGFg6miMDIDiXJtI2/uauFw8FtbgRJK3WrczlED
         I8mz90bEsyPijmmfObqrPb53EjBboxhQol6zxCq2YE8ztzTu764krQI5cz3wL2y2+MtU
         AiwHBTzhN66KxoM6TG5BfDxqqA9nQUeEGrdVXpsWuksuStojo5QcoglP2N1oO0y4QhTE
         bg/8bbMozvrQrQPsg3t+lViKWVxc0gurmGKd+TrpPIYP+eL+LubsLeohPd3A5jS/XyTu
         GsQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+g9tCmaegeobE0h5+5iBU4AUC9dWfNQWrktObWblvbA=;
        b=Lafn+q736Bf8M3utz+JYmW/Lm5S9cQzZ78jo802WEQ6tOfRGnJbbC/+M+umlvRPCzT
         uDeMZbpetp2tWXR5k0/Kgf8dZfQswdg94/V2reEfN+IxvCcmxsJ/8xUJZpHeqlocLeRD
         /OO2NuqwFT4nwu1ZgeDb95oFOFf+vGDA0IWK6piE5pGE8SP1dnzh+a6KTRI1whWYspC1
         oW8IQfYsWi/ozg2RsOS0Ur4291MU9OoZ8iUbae4rCbuWFS9n6UUCOoudieWiCgzA/TxS
         IKIzShWW0Td7DBXvDz8qqpJnvEiSz7oRUPEJG1lInpgeadOndWWN/rK40BD/RSw+EKAb
         zY2g==
X-Gm-Message-State: AJIora/D6bruHRV3yww36Ieo/q4eBVFn9typibl8zoR2lnQiPbU2sd6I
	D7Wl5TTWVEhDQ3JcvmYjdsBY4vqKliD4cojjm48=
X-Google-Smtp-Source: AGRyM1uwds7E3i08+r3PQ5Kx+BYJRI9j5NXDjuj4QQEeHIbCNS+7pzThghtTl3ELYY6TdF0jMjDD3KQnsss3D7hmGyE=
X-Received: by 2002:a0d:df8d:0:b0:317:c206:2e7c with SMTP id
 i135-20020a0ddf8d000000b00317c2062e7cmr2759453ywe.97.1655886525969; Wed, 22
 Jun 2022 01:28:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PvuEJ47OvSVN2_xHHWAv7Mth2Uu-6N-dFdgb2v_UyyK1Q@mail.gmail.com>
 <CAFche=iRA3z6wRPJ9=tXYB188zOHeRZT4KyPdeZOmT=iRWxhGg@mail.gmail.com>
 <CAA=S3PtodaRo2=rBvK8Dh8MLv_rKoORfW_9McCMoZiWq-7=2QQ@mail.gmail.com>
 <CAFche=igUatjSj3SWzbrQgfn6V8uBAc9_YWPkkuhNuP3F59nRA@mail.gmail.com>
 <CAA=S3PvbA3RYB62ZVheqmc+sJOv4XsU4ZVOK096WiwCGdGX4OA@mail.gmail.com> <CAA=S3PsOF4C8e+UEPtZUFLRN-NX0ze1ycA5mbwUe74sf5uCxyQ@mail.gmail.com>
In-Reply-To: <CAA=S3PsOF4C8e+UEPtZUFLRN-NX0ze1ycA5mbwUe74sf5uCxyQ@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Wed, 22 Jun 2022 12:58:34 +0430
Message-ID: <CAA=S3Pv7JS4RiuLavmdyrOAikYiq7zb_8ukB77cOmFauHMP-Ww@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: SOYILDWL5RTU6IRS4BKQJ2W7PYEVJIQD
X-Message-ID-Hash: SOYILDWL5RTU6IRS4BKQJ2W7PYEVJIQD
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why RFNOC gain example building FPGA, I faced with module 'rfnoc_block_gain' not found?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SOYILDWL5RTU6IRS4BKQJ2W7PYEVJIQD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7124667534562866057=="

--===============7124667534562866057==
Content-Type: multipart/alternative; boundary="0000000000002b39bd05e205200c"

--0000000000002b39bd05e205200c
Content-Type: text/plain; charset="UTF-8"

Finally, I mention that, I found there is a bug in UHD 4.1.0.5 or UHD
4.2.0.0 when I used rfnocmodtool to create a rfnoc block:
In a file block.yml file there is a section you should edit...
You should instead ${fpga_lib_dir} add the address rfnoc module folder, For
me this folder is not in UHD RFNOC block folder and I was faced with error
not found...

> makefile_srcs:
> "${fpga_lib_dir}/blocks/rfnoc_block_correlate/Makefile.srcs"



On Wed, Jun 22, 2022 at 12:53 PM sp h <stackprogramer@gmail.com> wrote:

> Finally, I mention that, I found there is a bug in UHD 4.1.0.5 or UHD
> 4.2.0.0 when I used rfnocmodtool to create a rfnoc block:
> In a file block.yml file there is a section you should edit...
> You should instead ${fpga_lib_dir} add the address rfnoc module folder,
> For me this folder is not in UHD RFNOC block folder and I was faced with
> error not found...
>
>> makefile_srcs:
>> "${fpga_lib_dir}/blocks/rfnoc_block_correlate/Makefile.srcs"
>
>
>
> On Sun, Feb 13, 2022 at 10:30 AM sp h <stackprogramer@gmail.com> wrote:
>
>> Thank you Wade Fife, I checked it. Finally, my problem is solved... When
>> I create a new project with the below command, now everything works.
>>
>> $rfnocmodtool newmod transceiver
>> $cd rfnoc-transceiver
>> $ rfnocmodtool add gain
>>
>> After it I don't edit in clone file...
>>
>> My Gnuradio 3.8.1,UHD 4.1.0.5, I attached example clone file here for
>> futures...
>>
>> On Sat, Feb 12, 2022 at 7:46 PM Wade Fife <wade.fife@ettus.com> wrote:
>>
>>> I'm sorry to hear it's still not working for you. Can you try a clean
>>> repo and use the unmodified example from the repo? If that works then you
>>> could compare your copy to the example to see what's different.
>>>
>>> The way the build-process works with OOT modules is that
>>> rfnoc_image_builder looks for the Makefile.srcs for your OOT module, which,
>>> in the example, includes the Makefile.srcs for the gain block. The HDL
>>> files get added to a variable named RFNOC_OOT_SRCS. So it could be one of
>>> these files has a mistake in your OOT module:
>>>
>>>
>>> https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example/fpga/Makefile.srcs
>>>
>>> https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain/Makefile.srcs
>>>
>>> Or it could be that the path provided to rfnoc_image_builder is not
>>> correct, which would prevent it from finding the Makefile.srcs. It did look
>>> like the path was incorrect in one of your other email threads.
>>>
>>> If nothing else works, you can modify the Makefile.inc for X300 and add
>>> the missing files directly.
>>>
>>>
>>> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x300/Makefile.x300.inc
>>>
>>> Thanks,
>>>
>>> Wade
>>>
>>> On Fri, Feb 11, 2022 at 10:47 PM sp h <stackprogramer@gmail.com> wrote:
>>>
>>>> Thanks, I checked your guidance. I am sure that everything is true but
>>>> I faced past errors:
>>>> module 'rfnoc_block_gain' not found....
>>>>
>>>> On Wed, Feb 9, 2022 at 10:52 PM Wade Fife <wade.fife@ettus.com> wrote:
>>>>
>>>>> That error means the source code for your gain block wasn't included.
>>>>> My guess is that the include path was wrong, so your Makefile.srcs wasn't
>>>>> added. If you're coping the rfnoc-example, here's how to build it (I've
>>>>> attempted to use your file paths in this example):
>>>>>
>>>>> cd /home/sp/Documents/rfnoc-tutorial
>>>>> mkdir build
>>>>> cd build
>>>>> cmake -DUHD_FPGA_DIR=/home/sp/Documents/uhd-4.1.0.5/fpga ../
>>>>> make x310_rfnoc_image_core
>>>>>
>>>>> If you want to build without using cmake, you could do this:
>>>>>
>>>>> rfnoc_image_builder -F /home/sp/Documents/uhd-4.1.0.5/fpga -I
>>>>> /home/sp/Documents/rfnoc-tutorial -p /home/sp/xilinx/Vivado -y
>>>>> /home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.yml
>>>>>
>>>>> Note the include path is the base of the OOT module. Please check that
>>>>> all the paths are correct for your setup when trying.
>>>>>
>>>>> Wade
>>>>>
>>>>>
>>>>> On Tue, Feb 8, 2022 at 1:35 AM sp h <stackprogramer@gmail.com> wrote:
>>>>>
>>>>>> I copied RFNOC gain example from UHD folder, I installed it
>>>>>> successfully in Gnuradio, But for building FPGA
>>>>>> I was faced with these errors.
>>>>>> How can I solve this problem?
>>>>>>
>>>>>> Thanks in advance
>>>>>>
>>>>>> ERROR: [Synth 8-439] module 'rfnoc_block_gain' not found
>>>>>> [/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.v:1055]
>>>>>> ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_image_core'
>>>>>> [/home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x310_rfnoc_image_core.v:24]
>>>>>> ERROR: [Synth 8-6156] failed synthesizing module 'bus_int'
>>>>>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/bus_int.v:9]
>>>>>> ERROR: [Synth 8-6156] failed synthesizing module 'x300_core'
>>>>>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_core.v:9]
>>>>>> ERROR: [Synth 8-6156] failed synthesizing module 'x300'
>>>>>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300.v:20]
>>>>>> ERROR: [Common 17-69] Command failed: Synthesis failed - please see
>>>>>> the console or run log file for details
>>>>>> [00:04:05] Current task: Synthesis +++ Current Phase: Starting
>>>>>> [00:04:05] Current task: Synthesis +++ Current Phase: Finished
>>>>>> [00:04:05] Process terminated. Status: Failure
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>>

--0000000000002b39bd05e205200c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Finally,=C2=A0I mention that, I found there is a bug in UH=
D 4.1.0.5 or UHD 4.2.0.0 when I used rfnocmodtool to create a rfnoc block:<=
div>In a file block.yml file there is a section you should edit...</div><di=
v>You should instead=C2=A0${fpga_lib_dir} add the address rfnoc module fold=
er, For me this folder is not in UHD RFNOC block folder and I was faced wit=
h error not found...</div><div><div style=3D"color:rgb(0,0,0);font-family:&=
quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans=
 Fallback&quot;;font-size:14px;line-height:19px;white-space:pre-wrap"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><span style=3D"color:rgb(128,0=
,0)">makefile_srcs</span>: <span style=3D"color:rgb(163,21,21)">&quot;${fpg=
a_lib_dir}/blocks/rfnoc_block_correlate/Makefile.srcs&quot;</span></blockqu=
ote><div class=3D"gmail-yj6qo gmail-ajU" style=3D"outline:none;padding:10px=
 0px;width:22px;margin:2px 0px 0px"><br class=3D"gmail-Apple-interchange-ne=
wline"></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Wed, Jun 22, 2022 at 12:53 PM sp h &lt;<a href=
=3D"mailto:stackprogramer@gmail.com">stackprogramer@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">Finally,=C2=A0I mention that, I found there is a bug in UHD 4.1.0.5 or U=
HD 4.2.0.0 when I used rfnocmodtool to create a rfnoc block:<div>In a file =
block.yml file there is a section you should edit...</div><div>You should i=
nstead=C2=A0${fpga_lib_dir} add the address rfnoc module folder, For me thi=
s folder is not in UHD RFNOC block folder and I was faced with error not fo=
und...</div><div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid San=
s Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot=
;;font-size:14px;line-height:19px;white-space:pre-wrap"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><span style=3D"color:rgb(128,0,0)">makefil=
e_srcs</span>: <span style=3D"color:rgb(163,21,21)">&quot;${fpga_lib_dir}/b=
locks/rfnoc_block_correlate/Makefile.srcs&quot;</span></blockquote><br></di=
v></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Sun, Feb 13, 2022 at 10:30 AM sp h &lt;<a href=3D"mailto:stackpr=
ogramer@gmail.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">Thank you Wade Fife, I checked it. Finally, my problem is solved... When=
 I create a new project with the below command, now=C2=A0everything works.<=
br><div><br></div><div><code>$rfnocmodtool newmod transceiver</code></div><=
div>$cd rfnoc-<span style=3D"font-family:monospace">transceiver</span></div=
><div>$ rfnocmodtool add gain</div><div><br></div><div>After it I don&#39;t=
 edit in clone file...</div><div><br></div><div>My Gnuradio 3.8.1,UHD 4.1.0=
.5, I attached=C2=A0example clone file here for futures...</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Feb=
 12, 2022 at 7:46 PM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" t=
arget=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>I&#39;m sorry to =
hear it&#39;s still not working for you. Can you try a clean repo and use t=
he unmodified example from the repo? If that works then you could compare y=
our copy to the example to see what&#39;s different.<br></div><div><br></di=
v><div>The way the build-process works with OOT modules is that rfnoc_image=
_builder looks for the Makefile.srcs for your OOT module, which, in the exa=
mple, includes the Makefile.srcs for the gain block. The HDL files get adde=
d to=20
a variable named RFNOC_OOT_SRCS.

So it could be one of these files has a mistake in your OOT module:</div><d=
iv><br></div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/mast=
er/host/examples/rfnoc-example/fpga/Makefile.srcs" target=3D"_blank">https:=
//github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example/fpga=
/Makefile.srcs</a></div><div><a href=3D"https://github.com/EttusResearch/uh=
d/blob/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain/Makefile.sr=
cs" target=3D"_blank">https://github.com/EttusResearch/uhd/blob/master/host=
/examples/rfnoc-example/fpga/rfnoc_block_gain/Makefile.srcs</a></div><div><=
br></div><div>Or it could be that the path provided to rfnoc_image_builder =
is not correct, which would prevent it from finding the Makefile.srcs. It d=
id look like the path was incorrect in one of your other email threads.</di=
v><div><br></div><div>If nothing else works, you can modify the Makefile.in=
c for X300 and add the missing files directly.</div><div><br></div><div><a =
href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/x30=
0/Makefile.x300.inc" target=3D"_blank">https://github.com/EttusResearch/uhd=
/blob/master/fpga/usrp3/top/x300/Makefile.x300.inc</a></div><div><br></div>=
<div>Thanks,<br>

</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 11, 2022 at 10:47 PM sp=
 h &lt;<a href=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stackp=
rogramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr">Thanks, I checked your guidance. I am su=
re that everything is true but I faced past errors:<br><div>module &#39;rfn=
oc_block_gain&#39; not found....<br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 9, 2022 at 10:52 PM W=
ade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.=
fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div>That error means the source code for yo=
ur gain block wasn&#39;t included. My guess is that the include path was wr=
ong, so your Makefile.srcs wasn&#39;t added. If you&#39;re coping the rfnoc=
-example, here&#39;s how to build it (I&#39;ve attempted to use your file p=
aths in this example):</div><div><br></div><div>cd /home/sp/Documents/rfnoc=
-tutorial</div><div>mkdir build</div><div>cd build</div><div>cmake -DUHD_FP=
GA_DIR=3D/home/sp/Documents/uhd-4.1.0.5/fpga ../<br></div><div>make x310_rf=
noc_image_core</div><div><br></div><div>If you want to build without using =
cmake, you could do this:</div><div><br></div><div>rfnoc_image_builder -F /=
home/sp/Documents/uhd-4.1.0.5/fpga -I /home/sp/Documents/rfnoc-tutorial -p =
/home/sp/xilinx/Vivado -y /home/sp/Documents/rfnoc-tutorial/rfnoc/icores/x3=
10_rfnoc_image_core.yml</div><div><br></div><div>Note the include path is t=
he base of the OOT module. Please check that all the paths are correct for =
your setup when trying.<br></div><div><br></div><div>Wade<br></div><div><br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, Feb 8, 2022 at 1:35 AM sp h &lt;<a href=3D"mailto:stackprogr=
amer@gmail.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
I copied RFNOC gain example from UHD folder, I installed it successfully=C2=
=A0in Gnuradio, But for building FPGA=C2=A0<div>I was=C2=A0faced with these=
 errors.</div><div>How can I solve this problem?</div><div><br></div><div>T=
hanks in advance</div><div><br></div><div>ERROR: [Synth 8-439] module &#39;=
rfnoc_block_gain&#39; not found [/home/sp/Documents/rfnoc-tutorial/rfnoc/ic=
ores/x310_rfnoc_image_core.v:1055]<br>ERROR: [Synth 8-6156] failed synthesi=
zing module &#39;rfnoc_image_core&#39; [/home/sp/Documents/rfnoc-tutorial/r=
fnoc/icores/x310_rfnoc_image_core.v:24]<br>ERROR: [Synth 8-6156] failed syn=
thesizing module &#39;bus_int&#39; [/home/sp/Documents/uhd-4.1.0.5/fpga/usr=
p3/top/x300/bus_int.v:9]<br>ERROR: [Synth 8-6156] failed synthesizing modul=
e &#39;x300_core&#39; [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x=
300_core.v:9]<br>ERROR: [Synth 8-6156] failed synthesizing module &#39;x300=
&#39; [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300.v:20]<br>ERR=
OR: [Common 17-69] Command failed: Synthesis failed - please see the consol=
e or run log file for details<br>[00:04:05] Current task: Synthesis +++ Cur=
rent Phase: Starting<br>[00:04:05] Current task: Synthesis +++ Current Phas=
e: Finished<br>[00:04:05] Process terminated. Status: Failure<br></div></di=
v>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000002b39bd05e205200c--

--===============7124667534562866057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7124667534562866057==--
