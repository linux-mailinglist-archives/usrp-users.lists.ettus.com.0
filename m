Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5014B18D6
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 23:52:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C007738503B
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 17:52:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="U6ajnOfs";
	dkim-atps=neutral
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by mm2.emwd.com (Postfix) with ESMTPS id E2B16384653
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 17:51:52 -0500 (EST)
Received: by mail-yb1-f172.google.com with SMTP id y129so19830402ybe.7
        for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 14:51:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DhJMXdGKGv+WeHN/NGB60fHQf7bxzEhF7zPppE84FPI=;
        b=U6ajnOfszt2HwjQnRsckYz6lSp/l0jHrh97VgX0H+6L/0/3NHyFaDc69UOSHCcyWby
         6qlBUb8wqI+UeYP4VDoFMqQnIIcNsMnHQgQScxGr1VoNIwCtBfakmXx1HIwBTASerneV
         VDCvXxQCbkjJe0fdVkgh8inMhTeGXFFdKcXnZWtuSga/Jylon/1QRlqCFvyJZZ7n3q2g
         kIFLCmjhsuMLD+S+tIrau7FoTHuMSdjrQIeeF6rdKQFDV7U+l4VD+As/DXuw9yuh9Zqd
         uG7xdBN1zCwlIYH135vklcauiNkdrqIqxiceiF98IuivmQBgBg/3GIC9Jvb0pCox8yAh
         9EBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DhJMXdGKGv+WeHN/NGB60fHQf7bxzEhF7zPppE84FPI=;
        b=drvH1KZ4ADzGRmPa7cMJuQuX574msr9WMXU6C6kPhyVOS7h15M50ivweBXcPwGmO5l
         4TLG1cV7QpLNO9pxRl2lQFm7ooatK8otyO698t/c7x3hrtyh4ru5iM0zzYSbGYatC4v+
         NKz+iFLaieBIC62RWHKI6sHlBhELua1YDr8x7Sclndbm8jSZBAvfQC1/90TMMeY4DhCr
         leSnnhSjE5w9EsKu1mh6PhQsU3d8dpQXsYBAM1E6waIc0cbmEhP+tfCz9CvUpjqdfZyU
         vmLbROXCniQgGKYbfKKFYlSaO9xMUxIbyL8u/hOQrx1fDa1Z47wXjOVNmhSAv2pN+AZq
         qdSw==
X-Gm-Message-State: AOAM530V+md7uq1VKdUtHHjM7XGZMEGTNMRBQdUnnlwcB6jCR0NDTLkJ
	51pOV8EEKVfJvyPh1wwvwmf87gHBoQP9e+y3oxOOKCrQ
X-Google-Smtp-Source: ABdhPJyVIbiTXVv5YWWj39xIP1pwMVU708ki8L2HRq2M6ciK9QfIkoqUrWDrqpaIhd0yKRATZ2UMx/QzYuLc+JeyWHA=
X-Received: by 2002:a25:b117:: with SMTP id g23mr8878904ybj.766.1644533512186;
 Thu, 10 Feb 2022 14:51:52 -0800 (PST)
MIME-Version: 1.0
References: <CACDReSy-Z7yj=B-QRGuNf=uwop_1OFMH0ztpTasZ4BLQwoXKQQ@mail.gmail.com>
 <CAFche=gNSsj8bUKHgqPuo-4r6d7r33suu1-DaVPevrQGw8dS6w@mail.gmail.com>
 <CACDReSxN0ZXv1vnNgssv7_3wpj6rub49Yzm9COnyQegzPFzGaQ@mail.gmail.com> <CAL7q81u+7b8yiXDM40n=jpA_cpVtkziZ7vuLNAvLt13MXoVM1Q@mail.gmail.com>
In-Reply-To: <CAL7q81u+7b8yiXDM40n=jpA_cpVtkziZ7vuLNAvLt13MXoVM1Q@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 10 Feb 2022 16:51:37 -0600
Message-ID: <CAFche=gy9eYaGdOU=31bCvM5-3TZxWqiSKyD1Ky-=cPa0yNfAA@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: FIG6F4P5YDLEJIKC6UJNB54Q2JZYGEB5
X-Message-ID-Hash: FIG6F4P5YDLEJIKC6UJNB54Q2JZYGEB5
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ofer Saferman <ofer@navigicom.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problems with a 4-port replay block on E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FIG6F4P5YDLEJIKC6UJNB54Q2JZYGEB5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3683666516623119144=="

--===============3683666516623119144==
Content-Type: multipart/alternative; boundary="000000000000d0c2b505d7b1cb8d"

--000000000000d0c2b505d7b1cb8d
Content-Type: text/plain; charset="UTF-8"

Thanks Jonathan for catching that!

Ofer, I do think you also need to set the MEM_ADDR_W to 31.

Another thought. I think I mentioned that you should be able to record and
play back at the same time, so I think it's possible to record 2 streams
and play 2 streams simultaneously with a 2-port Replay block. I need to
catch up on this email thread, so apologies if you already ruled that out
as an option. Expanding the AXI interconnect is also a viable option and
might give better DRAM performance.

I'll see that this gets fixed on E320.

Thanks,

Wade

On Thu, Feb 10, 2022 at 4:27 PM Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> Hello Ofer,
>
> I also sent this Rob in the other thread:
>
> It looks like the problem is that while there is a 4 port interconnect
> available, only ports 0 and 1 are hooked up:
> https://github.com/EttusResearch/uhd/blob/2c7ce2dbf72414b64f8a477be614e23bc12f086d/fpga/usrp3/top/e320/e320_core.v#L1050
> .
>
> You could modify e320_core.v to hook up the extra ports as a stopgap until
> it is fixed.
>
> Jonathon
>
> On Thu, Feb 10, 2022 at 5:17 PM Ofer Saferman <ofer@navigicom.com> wrote:
>
>> Hello Wade,
>>
>> Do you think that this is the reason that ports 2,3 don't work?
>> I can try to rebuild the image and see what happens. I will update.
>>
>> Regards,
>> Ofer Saferman
>>
>> On Thu, Feb 10, 2022 at 10:36 PM Wade Fife <wade.fife@ettus.com> wrote:
>>
>>> Hi Ofer,
>>>
>>> I think MEM_ADDR_W should be 31 for E320. Other than that everything
>>> looks correct.
>>>
>>> Wade
>>>
>>> On Thu, Feb 10, 2022 at 2:20 PM Ofer Saferman <ofer@navigicom.com>
>>> wrote:
>>>
>>>> Hello,
>>>>
>>>> I am working on a USRP E320 unit using UHD 4.1.0.5.
>>>> I have made an FPGA image containing a radio, a 4-port replay block and
>>>> a NullSrcSink.
>>>> After investigating (with a lot of help from Rob Kossler) why my own
>>>> program doesn't work properly, per his suggestion I have tested
>>>> rfnoc_replay_samples_from_file on the 4 ports of the replay block.
>>>> Ports 0,1 work fine and the example is streaming my data. Ports 2,3 get
>>>> stuck on record and don't work properly.
>>>> Please find attached:
>>>> * 4 console logs, one for each replay port.
>>>> * My YML file with which I created the FPGA image.
>>>> * Console log of uhd_usrp_probe.
>>>>
>>>> Some further notes that might help:
>>>> * I also tried an original FPGA image of the E320 (with DUC, DDC and
>>>> all the static mapping) with the only change being that the replay block
>>>> has 4 ports (and adding 2 more endpoints). The result was the same.
>>>> * I also tried an FPGA image without the NullSrcSink. I added it
>>>> sometime in the debug process and it was just left there. It has no bearing
>>>> on the problem.
>>>>
>>>> I would appreciate any assistance to debug the issue and make all ports
>>>> of the replay block work properly.
>>>>
>>>> Regards,
>>>> Ofer Saferman
>>>>
>>>>
>>>> --
>>>> This message has been scanned for viruses and
>>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>>>> is
>>>> believed to be clean. _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>
>> --
>> This message has been scanned for viruses and
>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>> is
>> believed to be clean. _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000d0c2b505d7b1cb8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Jonathan for catching that!</div><div><br></di=
v><div>Ofer, I do think you also need to set the=20
<span>MEM_ADDR_W to 31.</span></div><div><span><br></span></div><div><span>=
Another thought. I think I mentioned that you should be able to record and =
play back at the same time, so I think it&#39;s possible to record 2 stream=
s and play 2 streams simultaneously with a 2-port Replay block. I need to c=
atch up on this email thread, so apologies if you already ruled that out as=
 an option. Expanding the AXI interconnect is also a viable option and migh=
t give better DRAM performance.<br></span></div><div><span><br></span></div=
><div><span>I&#39;ll see that this gets fixed on E320.<br></span></div><div=
><span><br></span></div><div><span>Thanks,</span></div><div><span><br></spa=
n></div><div><span>Wade<br></span></div>

</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Thu, Feb 10, 2022 at 4:27 PM Jonathon Pendlum &lt;<a href=3D"mailto:jona=
thon.pendlum@ettus.com">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello Of=
er,<div><br></div><div>I also sent this Rob in the other thread:</div><div>=
<br></div><div>It looks like the problem is that while there is a 4 port in=
terconnect available, only ports 0 and 1 are hooked up:=C2=A0<a href=3D"htt=
ps://github.com/EttusResearch/uhd/blob/2c7ce2dbf72414b64f8a477be614e23bc12f=
086d/fpga/usrp3/top/e320/e320_core.v#L1050" target=3D"_blank">https://githu=
b.com/EttusResearch/uhd/blob/2c7ce2dbf72414b64f8a477be614e23bc12f086d/fpga/=
usrp3/top/e320/e320_core.v#L1050</a>.</div><div><br></div><div>You could mo=
dify e320_core.v to hook up the extra ports as a stopgap until it is fixed.=
</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022 at 5:17 PM Ofe=
r Saferman &lt;<a href=3D"mailto:ofer@navigicom.com" target=3D"_blank">ofer=
@navigicom.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div>Hello Wade,</div><div><br></div><div>Do=
 you think that this is the reason that ports 2,3 don&#39;t work?</div><div=
>I can try to rebuild the image and see what happens. I will update.</div><=
div><br></div><div>Regards,</div><div>Ofer Saferman<br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10=
, 2022 at 10:36 PM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" tar=
get=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Ofer,</div><div>=
<br></div><div>I think MEM_ADDR_W should be 31 for E320. Other than that ev=
erything looks correct.</div><div><br></div><div>Wade<br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb =
10, 2022 at 2:20 PM Ofer Saferman &lt;<a href=3D"mailto:ofer@navigicom.com"=
 target=3D"_blank">ofer@navigicom.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div=
><br></div><div>I am working on a USRP E320 unit using UHD 4.1.0.5.<br></di=
v><div>I have made an FPGA image containing a radio, a 4-port replay block =
and a NullSrcSink.</div><div>After investigating (with a lot of help from R=
ob Kossler) why my own program doesn&#39;t work properly, per his suggestio=
n I have tested rfnoc_replay_samples_from_file on the 4 ports of the replay=
 block.</div><div>Ports 0,1 work fine and the example is streaming my data.=
 Ports 2,3 get stuck on record and don&#39;t work properly.</div><div>Pleas=
e find attached:</div><div>* 4 console logs, one for each replay port. <br>=
</div><div>* My YML file with which I created the FPGA image.</div><div>* C=
onsole log of uhd_usrp_probe.</div><div></div><div><br></div><div>Some furt=
her notes that might help:</div><div>* I also tried an original FPGA image =
of the E320 (with DUC, DDC and all the static mapping) with the only change=
 being that the replay block has 4 ports (and adding 2 more endpoints). The=
 result was the same.</div><div>* I also tried an FPGA image without the Nu=
llSrcSink. I added it sometime in the debug process and it was just left th=
ere. It has no bearing on the problem.</div><div><br></div><div>
<div>I would appreciate any assistance to debug the issue and make all port=
s of the replay block work properly.</div><div><br></div><div>Regards, <br>=
</div><div>Ofer Saferman</div><div><br></div>

</div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000d0c2b505d7b1cb8d--

--===============3683666516623119144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3683666516623119144==--
