Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA6C60AEDD
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 17:20:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B7DF383F54
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 11:19:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666624799; bh=o9TYXTxFgTDBa3h09I663Wmlpbw3goklpntHSQSRdPQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=n+zb5RegDi9x1Flv0ofawagMFrqu3Hq5acVHIUvABFgZ7nAWCmVc34W+KnY8kIzo5
	 Sqd8UqVPpdNJbYEyf9OoWPNyoJEVxX37S3Hts1hBVuy2Sa7Fdoa1lVMte4TUcKeeqd
	 05TdxtMTd7pavyn6fiKX6gpITbZAgAJtsIECzK1LKJA0PwoBmVT2yHVLY3eQGquojW
	 8DY2KL6mlYRFwwdFvHh4aAAix8jzyz6jMBo0tkyNzHcBlh4Dgh1ivR4kYO6Z/479Uy
	 oNkzh8uCM8JTwl+jpkN0+tU24frMosWI3eaK8JRsWADdxXYWHs9Qxd83aRO+0p1708
	 +yec42As1JCVQ==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 3DDF2380964
	for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 11:18:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="QS59+Gx3";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id 13so5821134ejn.3
        for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 08:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=X7xlEjakhCqEHjmxqZWuJ9KvJ1aMit9aD4LAb22ZeBI=;
        b=QS59+Gx32H/cohbnZi4w5/FZX6vECp8/l5chGWQJX6UPJcw8XRjvdNFzUAo7xe8DgU
         NHl9kVGBNhusENWhhdehRL2tlhoS0SntjGC6F/PqV68rSgsBes/cLEkK1tBqeLepd74n
         qnQ5+zN5RtMBWUaixIF8XfBmEJv6lrG5HH5XzO/5owH3JD2F5wVGRnCOPQFUCd8ORisL
         /CvsdYHivpl02Qn1YbeGxf+z00bBte1QL0RuLCmiZKjStc1GPBk5dD97Vj0GpZKpM/jk
         UNo0YQS+pJOp2w5l2ZdAta9t2alAkmp1aKf3gmU9O7cQmh3vjAhRLoo+aV4Q9zCHGkKt
         iz5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X7xlEjakhCqEHjmxqZWuJ9KvJ1aMit9aD4LAb22ZeBI=;
        b=tYAVKEXLa6aymeN9wgQqznltD004zBzhpxm7A2daZCmgZaJAItwi2sKa+Un80dI4hJ
         b//eELvxhIBHP9X2oMG2vf/A1Bg9hAvd1MmeBmSlp+9Sfzqek/C6Yu55bWE4CWvGi/wg
         3npgK9KKojJnxW6tzKYkc9Js5ftBlBTdB8EcKm8eBMw+0S7Q4BFqTWyphKKDE9nzROTA
         zWLd+OVsbjBmbkAcoZlwTKhV5tytPLh/EIk/E1seZfXP/OYIteBQCT3hS+1ynZjZ6oAc
         yhOVWx1xlXsLSKH8YZwHMn5It1WBRwqSFuEiqJacF/1PQgwiuI5BinA1Jk442aF1cSyV
         eXKg==
X-Gm-Message-State: ACrzQf2SmwfECEHlGaRa26DpaWdM0XtzlnTILLQ7WRavFDzBhrrnljwx
	cbgOGNBj+mNQhhuxcF4kIMLdKDZZnAOEdfneNBEf9T/1S3YL0THJ
X-Google-Smtp-Source: AMsMyM6KuJX0XFe5rC1ITq5gL/ViXDzhthE++f+cKEMyUPFm6nPVCNIBoGEc5Q9DQbzZKXquRStCsq2ha/+Qz7i/024=
X-Received: by 2002:a17:907:a042:b0:7a0:3323:2883 with SMTP id
 gz2-20020a170907a04200b007a033232883mr11906407ejc.37.1666624730104; Mon, 24
 Oct 2022 08:18:50 -0700 (PDT)
MIME-Version: 1.0
References: <CALooG3-PGwwXgn5_Q0T_nSXPYm5vXfV+XsNx+i6k=7UCSEnCCQ@mail.gmail.com>
 <CAFche=hGqYWBwGMAhcNbNzcOhC5Uez0WNvu4n59aLZjyestFCg@mail.gmail.com> <CALooG39+1kJ8wY0ExgDRnRa0oHv-CsO3MSuSAyfOJW2USe1iWw@mail.gmail.com>
In-Reply-To: <CALooG39+1kJ8wY0ExgDRnRa0oHv-CsO3MSuSAyfOJW2USe1iWw@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 24 Oct 2022 10:18:33 -0500
Message-ID: <CAFche=ju+DH0aN-mX5YNgpVud7nQ3pa94AU5w7FVdFC19H+XBw@mail.gmail.com>
To: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Message-ID-Hash: GLQX2DSEO46HYLLWXD6BUXSAB3VNYIME
X-Message-ID-Hash: GLQX2DSEO46HYLLWXD6BUXSAB3VNYIME
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Debugging E320 with JTAG causes a problem
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GLQX2DSEO46HYLLWXD6BUXSAB3VNYIME/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7254259066788923499=="

--===============7254259066788923499==
Content-Type: multipart/alternative; boundary="0000000000000324c505ebc94f47"

--0000000000000324c505ebc94f47
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The NoC Shell is configurable for different use cases. You can read about
the differences in the RFNoC Specification.
https://files.ettus.com/app_notes/RFNoC_Specification.pdf

I suppose in your case, I would use the axis_data interface type (what the
DDC block uses).

What is the source of your trigger? How important is it that you sample at
the time your trigger occurs? If the timing of the trigger is important,
then you might need to look at the radio_time to figure out at what time
the trigger occurred, then put logic in your block to capture two samples
starting at that time. Otherwise, your trigger will be off due to the delay
for the transfer of data from the radio to your block. But maybe the
precision of the trigger isn't important and you can ignore that delay.

In an RFNoC block, the data will come in on AXI-Stream (tdata, tlast,
tavlid, tready). You need to follow the protocol of that bus to capture the
data. The data won't be valid on every clock cycle because the data bus
runs on a different clock rate from the ADC. It will only be valid when
tvalid is high, and you must acknowledge the data by asserting tready. If
this isn't clear, then I suggest you read up on how AXI-Stream works.

Wade

On Mon, Oct 24, 2022 at 12:35 AM Yasir =C3=96z=C3=A7al=C4=B1k <simultaneous=
11@gmail.com>
wrote:

> Hi Wade,
> thank you very much for your answer. I have successfully debugged it. Can
> you also help me with my original problem?
> I am using the E320 and UHD 4.0 version. I want to save 2 ADC samples int=
o
> block ram and read them later. For that reason, I have a trigger which
> starts the saving process. When I saved 2 ADC samples into block ram and
> read them later, I realized that some samples are zero. I debugged it and=
 I
> saw that valid signals of ADCs are not always 1. They sometimes switch ba=
ck
> to 0. While doing that, I have used the RFNoC-example as a starting point=
.
> I don't know what the real problem is, but I examined different examples
> and I realized that they used different files in their noc_shell files. F=
or
> example, the gain example used chdr_to_axis_pyld_ctxt which generates
> payload and context data. But, ddc example used chdr_to_axis_data which
> generates only axis datas. Therefore; I have tried different files in
> noc_shell, but none of them worked as  I expected. I don't want to take a=
ll
> the examples to the host or anywhere else. I just want all ADC samples to
> go into my custom RFNoC-block. I don't want any other datas such as
> metadatas or anything else, but only ADC samples.
>
> My System:
> Device : E320
> OS : Ubuntu 20.04.4
> UHD: 4.0
>
> Kind Regards,
> Yasir.
>
> Wade Fife <wade.fife@ettus.com>, 21 Eki 2022 Cum, 20:34 tarihinde =C5=9Fu=
nu
> yazd=C4=B1:
>
>> Hi Yasir,
>>
>> The E320 runs Linux on the SoC of FPGA. There are devices in the FPGA
>> which are visible to the Linux kernel, so updating the FPGA without firs=
t
>> bringing down those devices causes problems. uhd_image_loader takes care=
 of
>> all this for you. You can use uhd_image_loader to first load your bitstr=
eam
>> (the one you want to debug over JTAG), then use the Vivado hardware mana=
ger
>> to connect to that bitstream via JTAG after it is already loaded.
>>
>> Wade
>>
>> On Thu, Oct 20, 2022 at 3:31 AM Yasir =C3=96z=C3=A7al=C4=B1k <simultaneo=
us11@gmail.com>
>> wrote:
>>
>>> Hi everyone,
>>> I am trying to debug E320 with JTAG. I connected to the E320 JTAG
>>> console with Vivado 2019.1 hardware manager. Vivado successfully
>>> recognized E320. Then, I loaded my custom bitfile. The problem is E320
>>> started to give me errors saying that "IO Error during GSM initializati=
on."
>>> I thought that might be because of the bit file. Therefore; I tried to =
load
>>> the default bit file, but the same problem occurred again. When I use
>>> uhd_image_loader, bitfiles work without problem. But when I wanted to d=
ebug
>>> it with JTAG and loaded the bit file with jtag, uhd_usrp_probe gave me =
an
>>> error message. Can anyone help me with this, please? What might be the
>>> problem?
>>>
>>> Kind Regards,
>>> Yasir.
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--0000000000000324c505ebc94f47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The NoC Shell is configurable for different use cases=
. You can read about the differences in the RFNoC Specification. <a href=3D=
"https://files.ettus.com/app_notes/RFNoC_Specification.pdf">https://files.e=
ttus.com/app_notes/RFNoC_Specification.pdf</a></div><div><br></div><div>I s=
uppose in your case, I would use the axis_data interface type (what the DDC=
 block uses).</div><div><br></div><div>What is the source of your trigger? =
How important is it that you sample at the time your trigger occurs? If the=
 timing of the trigger is important, then  you might need to look at the ra=
dio_time to figure out at what time the trigger occurred, then put logic in=
 your block to capture two samples starting at that time. Otherwise, your t=
rigger will be off due to the delay for the transfer of data from the radio=
 to your block. But maybe the precision of the trigger isn&#39;t important =
and you can ignore that delay.</div><div><br></div><div>In an RFNoC block, =
the data will come in on AXI-Stream (tdata, tlast, tavlid, tready). You nee=
d to follow the protocol of that bus to capture the data. The data won&#39;=
t be valid on every clock cycle because the data bus runs on a different cl=
ock rate from the ADC. It will only be valid when tvalid is high, and you m=
ust acknowledge the data by asserting tready. If this isn&#39;t clear, then=
 I suggest you read up on how AXI-Stream works.<br></div><div><br></div><di=
v>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Oct 24, 2022 at 12:35 AM Yasir =C3=96z=C3=A7al=C4=
=B1k &lt;<a href=3D"mailto:simultaneous11@gmail.com">simultaneous11@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr">Hi Wade,<div>thank you very much for your answer. I have=
 successfully debugged it. Can you also help me with my original problem?</=
div><div>I am using the E320 and UHD 4.0 version. I want to save 2 ADC samp=
les into block ram and read them later. For that reason, I have a trigger w=
hich starts the saving process. When I saved 2 ADC samples into block ram a=
nd read them later, I realized that some samples are zero. I debugged it an=
d I saw that valid signals of ADCs are not always 1. They sometimes switch =
back to 0. While doing=C2=A0that, I have used the RFNoC-example as a starti=
ng point. I don&#39;t know what the real problem is, but I examined differe=
nt examples and I realized that they used different files in their noc_shel=
l files. For example, the gain example used chdr_to_axis_pyld_ctxt which ge=
nerates payload and context data. But, ddc example used chdr_to_axis_data w=
hich=C2=A0 generates=C2=A0only axis datas. Therefore; I have tried differen=
t files in noc_shell, but none of them worked as=C2=A0 I expected. I don&#3=
9;t want to take all the examples to the host or anywhere else. I just want=
 all ADC samples to go into my custom RFNoC-block. I don&#39;t want any oth=
er datas such as metadatas or anything else, but only ADC samples.</div><di=
v><br></div><div>My System:</div><div>Device : E320</div><div>OS : Ubuntu 2=
0.04.4</div><div>UHD: 4.0</div><div><br></div><div>Kind Regards,</div><div>=
Yasir.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"=
_blank">wade.fife@ettus.com</a>&gt;, 21 Eki 2022 Cum, 20:34 tarihinde =C5=
=9Funu yazd=C4=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div>Hi Yasir,</div><div><br></div><div>The E320 runs L=
inux on the SoC of FPGA. There are devices in the FPGA which are visible to=
 the Linux kernel, so updating the FPGA without first bringing down those d=
evices causes problems. uhd_image_loader takes care of all this for you. Yo=
u can use uhd_image_loader to first load your bitstream (the one you want t=
o debug over JTAG), then use the Vivado hardware manager to connect to that=
 bitstream via JTAG after it is already loaded.<br></div><div><br></div><di=
v>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Oct 20, 2022 at 3:31 AM Yasir =C3=96z=C3=A7al=C4=B1=
k &lt;<a href=3D"mailto:simultaneous11@gmail.com" target=3D"_blank">simulta=
neous11@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr">Hi everyone,=C2=A0<div>I am trying=C2=A0t=
o debug E320 with JTAG. I connected to the E320 JTAG console with Vivado 20=
19.1=C2=A0hardware manager. Vivado successfully recognized=C2=A0E320. Then,=
 I loaded my custom bitfile. The problem is E320 started to give me errors =
saying that &quot;IO Error during GSM initialization.&quot; I thought that =
might be because=C2=A0of the bit file. Therefore; I tried to load the defau=
lt bit file, but the same problem occurred=C2=A0again. When I use uhd_image=
_loader, bitfiles work without problem. But when I wanted to debug it with =
JTAG and loaded the bit file with jtag, uhd_usrp_probe gave me an error mes=
sage. Can anyone help me with this, please? What might be the problem?</div=
><div><br></div><div>Kind Regards,</div><div>Yasir.</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000000324c505ebc94f47--

--===============7254259066788923499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7254259066788923499==--
