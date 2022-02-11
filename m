Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F144B1D94
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 06:08:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C2B823849CD
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 00:08:28 -0500 (EST)
Received: from postman.dtnt.info (postman.dtnt.info [62.219.91.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 4D9CB3849CD
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 00:07:34 -0500 (EST)
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
	by postman.dtnt.info (Postfix) with ESMTPS id 99BC041ACD
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 07:06:45 +0200 (IST)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
	by o.dtnt.email (Postfix) with ESMTP id 2A4849FAE7
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 07:06:35 +0200 (IST)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
	by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id DP4oi21BqJ8b for <usrp-users@lists.ettus.com>;
	Fri, 11 Feb 2022 07:06:30 +0200 (IST)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	by o.dtnt.email (Postfix) with ESMTPSA id 052369FFB2
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 07:06:29 +0200 (IST)
Received: by mail-pf1-f169.google.com with SMTP id d187so14205565pfa.10
        for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 21:06:29 -0800 (PST)
X-Gm-Message-State: AOAM532+//UCePYtlHyYiYYv5b7tdDVIX+z2VP5HcgIz3490huGVMCIG
	TGWdpvWSX4jSAV6WLgn08X9es8Cw+GUT/7m+VW0=
X-Google-Smtp-Source: ABdhPJyuh2Vq3ZOmt6bFmDgEHz/VGGGrBoSi/8kXFGtaJ7tKpFGPCTbhBz71GGhcRYyRYKm0k84TKQ/DbX81FELZCmM=
X-Received: by 2002:a65:67cb:: with SMTP id b11mr3338278pgs.210.1644555987727;
 Thu, 10 Feb 2022 21:06:27 -0800 (PST)
MIME-Version: 1.0
References: <CACDReSy-Z7yj=B-QRGuNf=uwop_1OFMH0ztpTasZ4BLQwoXKQQ@mail.gmail.com>
 <CAFche=gNSsj8bUKHgqPuo-4r6d7r33suu1-DaVPevrQGw8dS6w@mail.gmail.com>
 <CACDReSxN0ZXv1vnNgssv7_3wpj6rub49Yzm9COnyQegzPFzGaQ@mail.gmail.com>
 <CAL7q81u+7b8yiXDM40n=jpA_cpVtkziZ7vuLNAvLt13MXoVM1Q@mail.gmail.com> <CAFche=gy9eYaGdOU=31bCvM5-3TZxWqiSKyD1Ky-=cPa0yNfAA@mail.gmail.com>
In-Reply-To: <CAFche=gy9eYaGdOU=31bCvM5-3TZxWqiSKyD1Ky-=cPa0yNfAA@mail.gmail.com>
From: Ofer Saferman <ofer@navigicom.com>
Date: Fri, 11 Feb 2022 07:06:15 +0200
X-Gmail-Original-Message-ID: <CACDReSw4rcavS7=V9go7Qm_+Hq7_C_nOgdTTZCDSmxDuNSr9Hg@mail.gmail.com>
Message-ID: <CACDReSw4rcavS7=V9go7Qm_+Hq7_C_nOgdTTZCDSmxDuNSr9Hg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 99BC041ACD.A7149
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Message-ID-Hash: J3LLHMRZNWACFIWTK74C3AYT6WV5SANF
X-Message-ID-Hash: J3LLHMRZNWACFIWTK74C3AYT6WV5SANF
X-MailFrom: ofer@navigicom.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ofer Saferman <ofer@navigicom.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problems with a 4-port replay block on E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J3LLHMRZNWACFIWTK74C3AYT6WV5SANF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6635139269314981467=="

--===============6635139269314981467==
Content-Type: multipart/alternative; boundary="000000000000763bb205d7b70797"

--000000000000763bb205d7b70797
Content-Type: text/plain; charset="UTF-8"

Hello all,
Thanks for the combined effort and catching the bug.
I will try to fix it manually and make the 4 port replay work.
Looking forward for a robust fix from NI which will actually implement
ports per the NUM_PORTS parameter in the YML file.

Wade - Can you share your thoughts on how you think a 2-port replay module
could both record and play 2 streams simultaneously? I have this on-going
debate with Rob. I think it does not work because the direction of what
"record" and "play" do is derived from graph connectivity and you can't
reconnect the graph while you are already recording or playing.

Regards,
Ofer Saferman

On Fri, Feb 11, 2022 at 12:51 AM Wade Fife <wade.fife@ettus.com> wrote:

> Thanks Jonathan for catching that!
>
> Ofer, I do think you also need to set the MEM_ADDR_W to 31.
>
> Another thought. I think I mentioned that you should be able to record and
> play back at the same time, so I think it's possible to record 2 streams
> and play 2 streams simultaneously with a 2-port Replay block. I need to
> catch up on this email thread, so apologies if you already ruled that out
> as an option. Expanding the AXI interconnect is also a viable option and
> might give better DRAM performance.
>
> I'll see that this gets fixed on E320.
>
> Thanks,
>
> Wade
>
> On Thu, Feb 10, 2022 at 4:27 PM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hello Ofer,
>>
>> I also sent this Rob in the other thread:
>>
>> It looks like the problem is that while there is a 4 port interconnect
>> available, only ports 0 and 1 are hooked up:
>> https://github.com/EttusResearch/uhd/blob/2c7ce2dbf72414b64f8a477be614e23bc12f086d/fpga/usrp3/top/e320/e320_core.v#L1050
>> .
>>
>> You could modify e320_core.v to hook up the extra ports as a stopgap
>> until it is fixed.
>>
>> Jonathon
>>
>> On Thu, Feb 10, 2022 at 5:17 PM Ofer Saferman <ofer@navigicom.com> wrote:
>>
>>> Hello Wade,
>>>
>>> Do you think that this is the reason that ports 2,3 don't work?
>>> I can try to rebuild the image and see what happens. I will update.
>>>
>>> Regards,
>>> Ofer Saferman
>>>
>>> On Thu, Feb 10, 2022 at 10:36 PM Wade Fife <wade.fife@ettus.com> wrote:
>>>
>>>> Hi Ofer,
>>>>
>>>> I think MEM_ADDR_W should be 31 for E320. Other than that everything
>>>> looks correct.
>>>>
>>>> Wade
>>>>
>>>> On Thu, Feb 10, 2022 at 2:20 PM Ofer Saferman <ofer@navigicom.com>
>>>> wrote:
>>>>
>>>>> Hello,
>>>>>
>>>>> I am working on a USRP E320 unit using UHD 4.1.0.5.
>>>>> I have made an FPGA image containing a radio, a 4-port replay block
>>>>> and a NullSrcSink.
>>>>> After investigating (with a lot of help from Rob Kossler) why my own
>>>>> program doesn't work properly, per his suggestion I have tested
>>>>> rfnoc_replay_samples_from_file on the 4 ports of the replay block.
>>>>> Ports 0,1 work fine and the example is streaming my data. Ports 2,3
>>>>> get stuck on record and don't work properly.
>>>>> Please find attached:
>>>>> * 4 console logs, one for each replay port.
>>>>> * My YML file with which I created the FPGA image.
>>>>> * Console log of uhd_usrp_probe.
>>>>>
>>>>> Some further notes that might help:
>>>>> * I also tried an original FPGA image of the E320 (with DUC, DDC and
>>>>> all the static mapping) with the only change being that the replay block
>>>>> has 4 ports (and adding 2 more endpoints). The result was the same.
>>>>> * I also tried an FPGA image without the NullSrcSink. I added it
>>>>> sometime in the debug process and it was just left there. It has no bearing
>>>>> on the problem.
>>>>>
>>>>> I would appreciate any assistance to debug the issue and make all
>>>>> ports of the replay block work properly.
>>>>>
>>>>> Regards,
>>>>> Ofer Saferman
>>>>>
>>>>>
>>>>> --
>>>>> This message has been scanned for viruses and
>>>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>,
>>>>> and is
>>>>> believed to be clean. _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>>
>>> --
>>> This message has been scanned for viruses and
>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>>> is
>>> believed to be clean. _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--000000000000763bb205d7b70797
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div>Thanks for the combined effort a=
nd catching the bug.</div><div>I will try to fix it manually and make the 4=
 port replay work. <br></div><div>Looking forward for a robust fix from NI =
which will actually implement ports per the NUM_PORTS parameter in the YML =
file.<br></div><div><br></div><div>Wade - Can you share your thoughts on ho=
w you think a 2-port replay module could both record and play 2 streams sim=
ultaneously? I have this on-going debate with Rob. I think it does not work=
 because the direction of what &quot;record&quot; and &quot;play&quot; do i=
s derived from graph connectivity and you can&#39;t reconnect the graph whi=
le you are already recording or playing.</div><div><br></div><div>Regards,<=
/div><div>Ofer Saferman<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 11, 2022 at 12:51 AM Wade Fife=
 &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div>Thanks Jonathan for catching that!</div><div><br></div><div>Ofer,=
 I do think you also need to set the=20
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
thon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr">Hello Ofer,<div><br></div><div>I also sent this Rob in the other =
thread:</div><div><br></div><div>It looks like the problem is that while th=
ere is a 4 port interconnect available, only ports 0 and 1 are hooked up:=
=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/2c7ce2dbf72414b6=
4f8a477be614e23bc12f086d/fpga/usrp3/top/e320/e320_core.v#L1050" target=3D"_=
blank">https://github.com/EttusResearch/uhd/blob/2c7ce2dbf72414b64f8a477be6=
14e23bc12f086d/fpga/usrp3/top/e320/e320_core.v#L1050</a>.</div><div><br></d=
iv><div>You could modify e320_core.v to hook up the extra ports as a stopga=
p until it is fixed.</div><div><br></div><div>Jonathon</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10,=
 2022 at 5:17 PM Ofer Saferman &lt;<a href=3D"mailto:ofer@navigicom.com" ta=
rget=3D"_blank">ofer@navigicom.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello Wade,</div><d=
iv><br></div><div>Do you think that this is the reason that ports 2,3 don&#=
39;t work?</div><div>I can try to rebuild the image and see what happens. I=
 will update.</div><div><br></div><div>Regards,</div><div>Ofer Saferman<br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Thu, Feb 10, 2022 at 10:36 PM Wade Fife &lt;<a href=3D"mailto:wade=
.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
>Hi Ofer,</div><div><br></div><div>I think MEM_ADDR_W should be 31 for E320=
. Other than that everything looks correct.</div><div><br></div><div>Wade<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, Feb 10, 2022 at 2:20 PM Ofer Saferman &lt;<a href=3D"mailto=
:ofer@navigicom.com" target=3D"_blank">ofer@navigicom.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div>Hello,</div><div><br></div><div>I am working on a USRP E320 unit using =
UHD 4.1.0.5.<br></div><div>I have made an FPGA image containing a radio, a =
4-port replay block and a NullSrcSink.</div><div>After investigating (with =
a lot of help from Rob Kossler) why my own program doesn&#39;t work properl=
y, per his suggestion I have tested rfnoc_replay_samples_from_file on the 4=
 ports of the replay block.</div><div>Ports 0,1 work fine and the example i=
s streaming my data. Ports 2,3 get stuck on record and don&#39;t work prope=
rly.</div><div>Please find attached:</div><div>* 4 console logs, one for ea=
ch replay port. <br></div><div>* My YML file with which I created the FPGA =
image.</div><div>* Console log of uhd_usrp_probe.</div><div></div><div><br>=
</div><div>Some further notes that might help:</div><div>* I also tried an =
original FPGA image of the E320 (with DUC, DDC and all the static mapping) =
with the only change being that the replay block has 4 ports (and adding 2 =
more endpoints). The result was the same.</div><div>* I also tried an FPGA =
image without the NullSrcSink. I added it sometime in the debug process and=
 it was just left there. It has no bearing on the problem.</div><div><br></=
div><div>
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
</blockquote></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--000000000000763bb205d7b70797--

--===============6635139269314981467==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6635139269314981467==--
