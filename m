Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E094B2A83
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 17:37:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 03FC9385855
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 11:37:28 -0500 (EST)
Received: from postman.dtnt.info (postman.dtnt.info [62.219.91.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 7C0923855C4
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 11:34:45 -0500 (EST)
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
	by postman.dtnt.info (Postfix) with ESMTPS id 5F5024114A
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 18:32:22 +0200 (IST)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
	by o.dtnt.email (Postfix) with ESMTP id 4C0F99FFBB
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 18:32:09 +0200 (IST)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
	by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id D3zwXoZXe8Ht for <usrp-users@lists.ettus.com>;
	Fri, 11 Feb 2022 18:32:08 +0200 (IST)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	by o.dtnt.email (Postfix) with ESMTPSA id 360BB9FFB2
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 18:32:07 +0200 (IST)
Received: by mail-pf1-f176.google.com with SMTP id l19so11380938pfu.2
        for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 08:32:06 -0800 (PST)
X-Gm-Message-State: AOAM531DeMAaOynyqDTsrcVSU39eX7byKK2QAkO0I2cPeatnttQRkSFb
	J6fi50JwthCcXeU3xT0tAYGbDASz3yedVT0hap4=
X-Google-Smtp-Source: ABdhPJy6OJZrowvTH9mQRFf9zmN1h4zr6RgZFcaqJAKcu8sD2VwxMeybaT1sXipDksxUJ97c8sjEmtr1gjIpw9Vjxi8=
X-Received: by 2002:a63:14b:: with SMTP id 72mr1996110pgb.444.1644597124893;
 Fri, 11 Feb 2022 08:32:04 -0800 (PST)
MIME-Version: 1.0
References: <CACDReSy-Z7yj=B-QRGuNf=uwop_1OFMH0ztpTasZ4BLQwoXKQQ@mail.gmail.com>
 <CAFche=gNSsj8bUKHgqPuo-4r6d7r33suu1-DaVPevrQGw8dS6w@mail.gmail.com>
 <CACDReSxN0ZXv1vnNgssv7_3wpj6rub49Yzm9COnyQegzPFzGaQ@mail.gmail.com>
 <CAL7q81u+7b8yiXDM40n=jpA_cpVtkziZ7vuLNAvLt13MXoVM1Q@mail.gmail.com>
 <CAFche=gy9eYaGdOU=31bCvM5-3TZxWqiSKyD1Ky-=cPa0yNfAA@mail.gmail.com> <CACDReSw4rcavS7=V9go7Qm_+Hq7_C_nOgdTTZCDSmxDuNSr9Hg@mail.gmail.com>
In-Reply-To: <CACDReSw4rcavS7=V9go7Qm_+Hq7_C_nOgdTTZCDSmxDuNSr9Hg@mail.gmail.com>
From: Ofer Saferman <ofer@navigicom.com>
Date: Fri, 11 Feb 2022 18:31:53 +0200
X-Gmail-Original-Message-ID: <CACDReSyr_-1Zs6YQ9KRx649N7EOVz=H=ApmkZauPKHOF7wPVZA@mail.gmail.com>
Message-ID: <CACDReSyr_-1Zs6YQ9KRx649N7EOVz=H=ApmkZauPKHOF7wPVZA@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
Content-Type: multipart/mixed; boundary="0000000000006dc4c905d7c09b6e"
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 5F5024114A.A404F
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Message-ID-Hash: GWELK74IEYL4Y544RHZDH3FC5EX3DRO4
X-Message-ID-Hash: GWELK74IEYL4Y544RHZDH3FC5EX3DRO4
X-MailFrom: ofer@navigicom.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problems with a 4-port replay block on E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GWELK74IEYL4Y544RHZDH3FC5EX3DRO4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--0000000000006dc4c905d7c09b6e
Content-Type: multipart/alternative; boundary="0000000000006dc4c605d7c09b6c"

--0000000000006dc4c605d7c09b6c
Content-Type: text/plain; charset="UTF-8"

Hello,

I implemented the changes to e320_core.v per your suggestions and rebuilt
the FPGA image.
Now the 4-port replay block works OK for all 4 ports.
I am attaching my modified e320_core.v here for reference if someone else
needs it until a new UHD version will be released with the fix implemented.

Thanks for all your help and special thanks to Rob Kossler that helped me
debug this for days on end till we found the problem and fixed it.

Regards,
Ofer Saferman

On Fri, Feb 11, 2022 at 7:06 AM Ofer Saferman <ofer@navigicom.com> wrote:

> Hello all,
> Thanks for the combined effort and catching the bug.
> I will try to fix it manually and make the 4 port replay work.
> Looking forward for a robust fix from NI which will actually implement
> ports per the NUM_PORTS parameter in the YML file.
>
> Wade - Can you share your thoughts on how you think a 2-port replay module
> could both record and play 2 streams simultaneously? I have this on-going
> debate with Rob. I think it does not work because the direction of what
> "record" and "play" do is derived from graph connectivity and you can't
> reconnect the graph while you are already recording or playing.
>
> Regards,
> Ofer Saferman
>
> On Fri, Feb 11, 2022 at 12:51 AM Wade Fife <wade.fife@ettus.com> wrote:
>
>> Thanks Jonathan for catching that!
>>
>> Ofer, I do think you also need to set the MEM_ADDR_W to 31.
>>
>> Another thought. I think I mentioned that you should be able to record
>> and play back at the same time, so I think it's possible to record 2
>> streams and play 2 streams simultaneously with a 2-port Replay block. I
>> need to catch up on this email thread, so apologies if you already ruled
>> that out as an option. Expanding the AXI interconnect is also a viable
>> option and might give better DRAM performance.
>>
>> I'll see that this gets fixed on E320.
>>
>> Thanks,
>>
>> Wade
>>
>> On Thu, Feb 10, 2022 at 4:27 PM Jonathon Pendlum <
>> jonathon.pendlum@ettus.com> wrote:
>>
>>> Hello Ofer,
>>>
>>> I also sent this Rob in the other thread:
>>>
>>> It looks like the problem is that while there is a 4 port interconnect
>>> available, only ports 0 and 1 are hooked up:
>>> https://github.com/EttusResearch/uhd/blob/2c7ce2dbf72414b64f8a477be614e23bc12f086d/fpga/usrp3/top/e320/e320_core.v#L1050
>>> .
>>>
>>> You could modify e320_core.v to hook up the extra ports as a stopgap
>>> until it is fixed.
>>>
>>> Jonathon
>>>
>>> On Thu, Feb 10, 2022 at 5:17 PM Ofer Saferman <ofer@navigicom.com>
>>> wrote:
>>>
>>>> Hello Wade,
>>>>
>>>> Do you think that this is the reason that ports 2,3 don't work?
>>>> I can try to rebuild the image and see what happens. I will update.
>>>>
>>>> Regards,
>>>> Ofer Saferman
>>>>
>>>> On Thu, Feb 10, 2022 at 10:36 PM Wade Fife <wade.fife@ettus.com> wrote:
>>>>
>>>>> Hi Ofer,
>>>>>
>>>>> I think MEM_ADDR_W should be 31 for E320. Other than that everything
>>>>> looks correct.
>>>>>
>>>>> Wade
>>>>>
>>>>> On Thu, Feb 10, 2022 at 2:20 PM Ofer Saferman <ofer@navigicom.com>
>>>>> wrote:
>>>>>
>>>>>> Hello,
>>>>>>
>>>>>> I am working on a USRP E320 unit using UHD 4.1.0.5.
>>>>>> I have made an FPGA image containing a radio, a 4-port replay block
>>>>>> and a NullSrcSink.
>>>>>> After investigating (with a lot of help from Rob Kossler) why my own
>>>>>> program doesn't work properly, per his suggestion I have tested
>>>>>> rfnoc_replay_samples_from_file on the 4 ports of the replay block.
>>>>>> Ports 0,1 work fine and the example is streaming my data. Ports 2,3
>>>>>> get stuck on record and don't work properly.
>>>>>> Please find attached:
>>>>>> * 4 console logs, one for each replay port.
>>>>>> * My YML file with which I created the FPGA image.
>>>>>> * Console log of uhd_usrp_probe.
>>>>>>
>>>>>> Some further notes that might help:
>>>>>> * I also tried an original FPGA image of the E320 (with DUC, DDC and
>>>>>> all the static mapping) with the only change being that the replay block
>>>>>> has 4 ports (and adding 2 more endpoints). The result was the same.
>>>>>> * I also tried an FPGA image without the NullSrcSink. I added it
>>>>>> sometime in the debug process and it was just left there. It has no bearing
>>>>>> on the problem.
>>>>>>
>>>>>> I would appreciate any assistance to debug the issue and make all
>>>>>> ports of the replay block work properly.
>>>>>>
>>>>>> Regards,
>>>>>> Ofer Saferman
>>>>>>
>>>>>>
>>>>>> --
>>>>>> This message has been scanned for viruses and
>>>>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>,
>>>>>> and is
>>>>>> believed to be clean. _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>>
>>>> --
>>>> This message has been scanned for viruses and
>>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>>>> is
>>>> believed to be clean. _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--0000000000006dc4c605d7c09b6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I implemented the cha=
nges to e320_core.v per your suggestions and rebuilt the FPGA image.<br></d=
iv><div>Now the 4-port replay block works OK for all 4 ports.</div><div>I a=
m attaching my modified e320_core.v here for reference if someone else need=
s it until a new UHD version will be released with the fix implemented.</di=
v><div><br></div><div>Thanks for all your help and special thanks to Rob Ko=
ssler that helped me debug this for days on end till we found the problem a=
nd fixed it.</div><div><br></div><div>Regards,</div><div>Ofer Saferman<br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Fri, Feb 11, 2022 at 7:06 AM Ofer Saferman &lt;<a href=3D"mailto:of=
er@navigicom.com">ofer@navigicom.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello all,</div><=
div>Thanks for the combined effort and catching the bug.</div><div>I will t=
ry to fix it manually and make the 4 port replay work. <br></div><div>Looki=
ng forward for a robust fix from NI which will actually implement ports per=
 the NUM_PORTS parameter in the YML file.<br></div><div><br></div><div>Wade=
 - Can you share your thoughts on how you think a 2-port replay module coul=
d both record and play 2 streams simultaneously? I have this on-going debat=
e with Rob. I think it does not work because the direction of what &quot;re=
cord&quot; and &quot;play&quot; do is derived from graph connectivity and y=
ou can&#39;t reconnect the graph while you are already recording or playing=
.</div><div><br></div><div>Regards,</div><div>Ofer Saferman<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri=
, Feb 11, 2022 at 12:51 AM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.=
com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Thanks Jona=
than for catching that!</div><div><br></div><div>Ofer, I do think you also =
need to set the=20
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
</blockquote></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--0000000000006dc4c605d7c09b6c--

--0000000000006dc4c905d7c09b6e
Content-Type: application/octet-stream; name="e320_core.v"
Content-Disposition: attachment; filename="e320_core.v"
Content-Transfer-Encoding: base64
Content-ID: <f_kzimn13o0>
X-Attachment-Id: f_kzimn13o0

Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vCi8vCi8vIENvcHlyaWdodCAyMDE4
IEV0dHVzIFJlc2VhcmNoLCBBIE5hdGlvbmFsIEluc3RydW1lbnRzIENvbXBh
bnkKLy8KLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IExHUEwtMy4wCi8v
Ci8vIE1vZHVsZTogZTMyMF9jb3JlCi8vIERlc2NyaXB0aW9uOgovLyAgLSBN
b3RoZXJib2FyZCBSZWdpc3RlcnMKLy8gIC0gRFJBTSBJbnRlcmNvbm5lY3QK
Ly8gIC0gUmFkaW8gRnJvbnQgRW5kIGNvbnRyb2wKLy8gIC0gVGltZWtlZXBl
cgovLyAgLSBSRk5vQyBJbWFnZSBDb3JlCi8vCi8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLwoKYGRlZmF1bHRfbmV0dHlwZSBub25lCm1vZHVsZSBlMzIwX2Nv
cmUgIygKICBwYXJhbWV0ZXIgUkVHX0RXSURUSCAgID0gMzIsICAgICAgICAv
LyBXaWR0aCBvZiB0aGUgQVhJNC1MaXRlIGRhdGEgYnVzIChtdXN0IGJlIDMy
IG9yIDY0KQogIHBhcmFtZXRlciBSRUdfQVdJRFRIICAgPSAzMiwgICAgICAg
IC8vIFdpZHRoIG9mIHRoZSBhZGRyZXNzIGJ1cwogIHBhcmFtZXRlciBCVVNf
Q0xLX1JBVEUgPSAyMDAwMDAwMDAsIC8vIGJ1c19jbGsgcmF0ZQogIHBhcmFt
ZXRlciBOVU1fUkFESU9TID0gMSwKICBwYXJhbWV0ZXIgTlVNX0NIQU5ORUxT
ID0gMiwKICBwYXJhbWV0ZXIgTlVNX0RCT0FSRFMgPSAxLAogIHBhcmFtZXRl
ciBOVU1fQ0hBTk5FTFNfUEVSX0RCT0FSRCA9IDIsCiAgcGFyYW1ldGVyIEZQ
X0dQSU9fV0lEVEggPSA4LCAgLy8gRnJvbnQgcGFuZWwgR1BJTyB3aWR0aAog
IHBhcmFtZXRlciBEQl9HUElPX1dJRFRIID0gMTYsICAvLyBEYXVnaHRlcmJv
YXJkIEdQSU8gd2lkdGgKICBwYXJhbWV0ZXIgQ0hEUl9XSURUSCAgPSAxNidk
NjQgLAogIHBhcmFtZXRlciBSRk5PQ19QUk9UT1ZFUiAgPSB7OCdkMSwgOCdk
MH0KKSgKICAvLyBDbG9ja3MgYW5kIHJlc2V0cwogIGlucHV0IHdpcmUgcmFk
aW9fY2xrLAogIGlucHV0IHdpcmUgcmFkaW9fcnN0LAogIGlucHV0IHdpcmUg
YnVzX2NsaywKICBpbnB1dCB3aXJlIGJ1c19yc3QsCiAgaW5wdXQgd2lyZSBk
ZHIzX2RtYV9jbGssCiAgaW5wdXQgd2lyZSBjbGs0MCwKCiAgLy8gTW90aGVy
Ym9hcmQgUmVnaXN0ZXJzOiBBWEkgbGl0ZSBpbnRlcmZhY2UKICBpbnB1dCB3
aXJlICAgICAgICAgICAgICAgICAgICBzX2F4aV9hY2xrLAogIGlucHV0IHdp
cmUgICAgICAgICAgICAgICAgICAgIHNfYXhpX2FyZXNldG4sCiAgaW5wdXQg
d2lyZSBbUkVHX0FXSURUSC0xOjBdICAgc19heGlfYXdhZGRyLAogIGlucHV0
IHdpcmUgICAgICAgICAgICAgICAgICAgIHNfYXhpX2F3dmFsaWQsCiAgb3V0
cHV0IHdpcmUgICAgICAgICAgICAgICAgICAgc19heGlfYXdyZWFkeSwKCiAg
aW5wdXQgd2lyZSBbUkVHX0RXSURUSC0xOjBdICAgc19heGlfd2RhdGEsCiAg
aW5wdXQgd2lyZSBbUkVHX0RXSURUSC84LTE6MF0gc19heGlfd3N0cmIsCiAg
aW5wdXQgd2lyZSAgICAgICAgICAgICAgICAgICAgc19heGlfd3ZhbGlkLAog
IG91dHB1dCB3aXJlICAgICAgICAgICAgICAgICAgIHNfYXhpX3dyZWFkeSwK
CiAgb3V0cHV0IHdpcmUgWzE6MF0gICAgICAgICAgICAgc19heGlfYnJlc3As
CiAgb3V0cHV0IHdpcmUgICAgICAgICAgICAgICAgICAgc19heGlfYnZhbGlk
LAogIGlucHV0IHdpcmUgICAgICAgICAgICAgICAgICAgIHNfYXhpX2JyZWFk
eSwKCiAgaW5wdXQgd2lyZSBbUkVHX0FXSURUSC0xOjBdICAgc19heGlfYXJh
ZGRyLAogIGlucHV0IHdpcmUgICAgICAgICAgICAgICAgICAgIHNfYXhpX2Fy
dmFsaWQsCiAgb3V0cHV0IHdpcmUgICAgICAgICAgICAgICAgICAgc19heGlf
YXJyZWFkeSwKCiAgb3V0cHV0IHdpcmUgW1JFR19EV0lEVEgtMTowXSAgc19h
eGlfcmRhdGEsCiAgb3V0cHV0IHdpcmUgWzE6MF0gICAgICAgICAgICAgc19h
eGlfcnJlc3AsCiAgb3V0cHV0IHdpcmUgICAgICAgICAgICAgICAgICAgc19h
eGlfcnZhbGlkLAogIGlucHV0IHdpcmUgICAgICAgICAgICAgICAgICAgIHNf
YXhpX3JyZWFkeSwKCiAgLy8gUFBTIGFuZCBDbG9jayBDb250cm9sCiAgaW5w
dXQgd2lyZSAgICAgICAgICAgIHBwc19yZWZjbGssCiAgaW5wdXQgd2lyZSAg
ICAgICAgICAgIHJlZmNsa19sb2NrZWQsCiAgb3V0cHV0IHJlZyBbMTowXSAg
ICAgIHBwc19zZWxlY3QsCiAgb3V0cHV0IHJlZyAgICAgICAgICAgIHJlZl9z
ZWxlY3QsCgogIC8vIFBTIEdQSU8gc291cmNlCiAgaW5wdXQgd2lyZSAgW0ZQ
X0dQSU9fV0lEVEgtMTowXSAgcHNfZ3Bpb19vdXQsCiAgaW5wdXQgd2lyZSAg
W0ZQX0dQSU9fV0lEVEgtMTowXSAgcHNfZ3Bpb190cmksCiAgb3V0cHV0IHdp
cmUgW0ZQX0dQSU9fV0lEVEgtMTowXSAgcHNfZ3Bpb19pbiwKCiAgLy8gRnJv
bnQgUGFuZWwgR1BJTwogIGlucHV0IHdpcmUgIFtGUF9HUElPX1dJRFRILTE6
MF0gZnBfZ3Bpb19pbiwKICBvdXRwdXQgd2lyZSBbRlBfR1BJT19XSURUSC0x
OjBdIGZwX2dwaW9fdHJpLAogIG91dHB1dCB3aXJlIFtGUF9HUElPX1dJRFRI
LTE6MF0gZnBfZ3Bpb19vdXQsCgogIC8vIFJhZGlvIEdQSU8gY29udHJvbAog
IG91dHB1dCB3aXJlIFtEQl9HUElPX1dJRFRIKk5VTV9DSEFOTkVMUy0xOjBd
IGRiX2dwaW9fb3V0X2ZsYXQsCiAgb3V0cHV0IHdpcmUgW0RCX0dQSU9fV0lE
VEgqTlVNX0NIQU5ORUxTLTE6MF0gZGJfZ3Bpb19kZHJfZmxhdCwKICBpbnB1
dCB3aXJlICBbREJfR1BJT19XSURUSCpOVU1fQ0hBTk5FTFMtMTowXSBkYl9n
cGlvX2luX2ZsYXQsCiAgaW5wdXQgd2lyZSAgW0RCX0dQSU9fV0lEVEgqTlVN
X0NIQU5ORUxTLTE6MF0gZGJfZ3Bpb19mYWJfZmxhdCwKCiAgLy8gVFgvUlgg
TEVEcwogIG91dHB1dCB3aXJlIFszMipOVU1fQ0hBTk5FTFMtMTowXSBsZWRz
X2ZsYXQsCgogIC8vIFJhZGlvIEFUUgogIG91dHB1dCB3aXJlIFtOVU1fQ0hB
Tk5FTFMtMTowXSByeF9hdHIsCiAgb3V0cHV0IHdpcmUgW05VTV9DSEFOTkVM
Uy0xOjBdIHR4X2F0ciwKCiAgLy8gUmFkaW8gRGF0YQogIGlucHV0IHdpcmUg
IFtOVU1fQ0hBTk5FTFMtMTowXSAgICByeF9zdGIsCiAgaW5wdXQgd2lyZSAg
W05VTV9DSEFOTkVMUy0xOjBdICAgIHR4X3N0YiwKICBpbnB1dCB3aXJlICBb
MzIqTlVNX0NIQU5ORUxTLTE6MF0gcngsCiAgb3V0cHV0IHdpcmUgWzMyKk5V
TV9DSEFOTkVMUy0xOjBdIHR4LAoKICAvLyBBWEk0IEREUjMgSW50ZXJmYWNl
CiAgaW5wdXQgd2lyZSAgICAgICAgICBkZHIzX2F4aV9jbGssCiAgaW5wdXQg
d2lyZSAgICAgICAgICBkZHIzX2F4aV9yc3QsCiAgaW5wdXQgd2lyZSAgICAg
ICAgICBkZHIzX3J1bm5pbmcsCiAgLy8gV3JpdGUgQWRkcmVzcyBQb3J0cwog
IG91dHB1dCB3aXJlIFszOjBdICAgZGRyM19heGlfYXdpZCwKICBvdXRwdXQg
d2lyZSBbMzE6MF0gIGRkcjNfYXhpX2F3YWRkciwKICBvdXRwdXQgd2lyZSBb
NzowXSAgIGRkcjNfYXhpX2F3bGVuLAogIG91dHB1dCB3aXJlIFsyOjBdICAg
ZGRyM19heGlfYXdzaXplLAogIG91dHB1dCB3aXJlIFsxOjBdICAgZGRyM19h
eGlfYXdidXJzdCwKICBvdXRwdXQgd2lyZSBbMDowXSAgIGRkcjNfYXhpX2F3
bG9jaywKICBvdXRwdXQgd2lyZSBbMzowXSAgIGRkcjNfYXhpX2F3Y2FjaGUs
CiAgb3V0cHV0IHdpcmUgWzI6MF0gICBkZHIzX2F4aV9hd3Byb3QsCiAgb3V0
cHV0IHdpcmUgWzM6MF0gICBkZHIzX2F4aV9hd3FvcywKICBvdXRwdXQgd2ly
ZSAgICAgICAgIGRkcjNfYXhpX2F3dmFsaWQsCiAgaW5wdXQgd2lyZSAgICAg
ICAgICBkZHIzX2F4aV9hd3JlYWR5LAogIC8vIFdyaXRlIERhdGEgUG9ydHMK
ICBvdXRwdXQgd2lyZSBbMjU1OjBdIGRkcjNfYXhpX3dkYXRhLAogIG91dHB1
dCB3aXJlIFszMTowXSAgZGRyM19heGlfd3N0cmIsCiAgb3V0cHV0IHdpcmUg
ICAgICAgICBkZHIzX2F4aV93bGFzdCwKICBvdXRwdXQgd2lyZSAgICAgICAg
IGRkcjNfYXhpX3d2YWxpZCwKICBpbnB1dCB3aXJlICAgICAgICAgIGRkcjNf
YXhpX3dyZWFkeSwKICAvLyBXcml0ZSBSZXNwb25zZSBQb3J0cwogIG91dHB1
dCB3aXJlICAgICAgICAgZGRyM19heGlfYnJlYWR5LAogIGlucHV0IHdpcmUg
WzM6MF0gICAgZGRyM19heGlfYmlkLAogIGlucHV0IHdpcmUgWzE6MF0gICAg
ZGRyM19heGlfYnJlc3AsCiAgaW5wdXQgd2lyZSAgICAgICAgICBkZHIzX2F4
aV9idmFsaWQsCiAgLy8gUmVhZCBBZGRyZXNzIFBvcnRzCiAgb3V0cHV0IHdp
cmUgWzM6MF0gICBkZHIzX2F4aV9hcmlkLAogIG91dHB1dCB3aXJlIFszMTow
XSAgZGRyM19heGlfYXJhZGRyLAogIG91dHB1dCB3aXJlIFs3OjBdICAgZGRy
M19heGlfYXJsZW4sCiAgb3V0cHV0IHdpcmUgWzI6MF0gICBkZHIzX2F4aV9h
cnNpemUsCiAgb3V0cHV0IHdpcmUgWzE6MF0gICBkZHIzX2F4aV9hcmJ1cnN0
LAogIG91dHB1dCB3aXJlIFswOjBdICAgZGRyM19heGlfYXJsb2NrLAogIG91
dHB1dCB3aXJlIFszOjBdICAgZGRyM19heGlfYXJjYWNoZSwKICBvdXRwdXQg
d2lyZSBbMjowXSAgIGRkcjNfYXhpX2FycHJvdCwKICBvdXRwdXQgd2lyZSBb
MzowXSAgIGRkcjNfYXhpX2FycW9zLAogIG91dHB1dCB3aXJlICAgICAgICAg
ZGRyM19heGlfYXJ2YWxpZCwKICBpbnB1dCB3aXJlICAgICAgICAgIGRkcjNf
YXhpX2FycmVhZHksCiAgLy8gUmVhZCBEYXRhIFBvcnRzCiAgb3V0cHV0IHdp
cmUgICAgICAgICBkZHIzX2F4aV9ycmVhZHksCiAgaW5wdXQgd2lyZSBbMzow
XSAgICBkZHIzX2F4aV9yaWQsCiAgaW5wdXQgd2lyZSBbMjU1OjBdICBkZHIz
X2F4aV9yZGF0YSwKICBpbnB1dCB3aXJlIFsxOjBdICAgIGRkcjNfYXhpX3Jy
ZXNwLAogIGlucHV0IHdpcmUgICAgICAgICAgZGRyM19heGlfcmxhc3QsCiAg
aW5wdXQgd2lyZSAgICAgICAgICBkZHIzX2F4aV9ydmFsaWQsCgoKCiAgLy8g
RE1BIHhwb3J0IGFkYXB0ZXIgdG8gUFMKICBpbnB1dCB3aXJlICBbNjM6MF0g
c19kbWFfdGRhdGEsCiAgaW5wdXQgd2lyZSAgICAgICAgIHNfZG1hX3RsYXN0
LAogIG91dHB1dCB3aXJlICAgICAgICBzX2RtYV90cmVhZHksCiAgaW5wdXQg
d2lyZSAgICAgICAgIHNfZG1hX3R2YWxpZCwKCiAgb3V0cHV0IHdpcmUgWzYz
OjBdIG1fZG1hX3RkYXRhLAogIG91dHB1dCB3aXJlICAgICAgICBtX2RtYV90
bGFzdCwKICBpbnB1dCB3aXJlICAgICAgICAgbV9kbWFfdHJlYWR5LAogIG91
dHB1dCB3aXJlICAgICAgICBtX2RtYV90dmFsaWQsCgogIC8vIGUydiAoRXRo
ZXJuZXQgdG8gVml0YSkgYW5kIHYyZSAoVml0YSB0byBFdGhlcm5ldCkKICBv
dXRwdXQgd2lyZSBbNjM6MF0gdjJlX3RkYXRhLAogIG91dHB1dCB3aXJlICAg
ICAgICB2MmVfdHZhbGlkLAogIG91dHB1dCB3aXJlICAgICAgICB2MmVfdGxh
c3QsCiAgaW5wdXQgd2lyZSAgICAgICAgIHYyZV90cmVhZHksCgogIGlucHV0
IHdpcmUgIFs2MzowXSBlMnZfdGRhdGEsCiAgaW5wdXQgd2lyZSAgICAgICAg
IGUydl90bGFzdCwKICBpbnB1dCB3aXJlICAgICAgICAgZTJ2X3R2YWxpZCwK
ICBvdXRwdXQgd2lyZSAgICAgICAgZTJ2X3RyZWFkeSwKCiAgLy8gTWlzYwog
IGlucHV0IHdpcmUgWzMxOjBdIGJ1aWxkX2RhdGVzdGFtcCwKICBpbnB1dCB3
aXJlIFszMTowXSBzZnBfcG9ydHNfaW5mbywKICBpbnB1dCB3aXJlIFszMTow
XSBncHNfc3RhdHVzLAogIG91dHB1dCByZWcgWzMxOjBdIGdwc19jdHJsLAog
IGlucHV0IHdpcmUgWzMxOjBdIGRib2FyZF9zdGF0dXMsCiAgaW5wdXQgd2ly
ZSBbMzE6MF0geGFkY19yZWFkYmFjaywKICBvdXRwdXQgcmVnIFszMTowXSBm
cF9ncGlvX2N0cmwsCiAgb3V0cHV0IHJlZyBbMzE6MF0gZGJvYXJkX2N0cmws
CiAgb3V0cHV0IHJlZyBbMTU6MF0gZGV2aWNlX2lkCik7CiAgYGluY2x1ZGUg
Ii4uLy4uL2xpYi9yZm5vYy9jb3JlL2N0cmxwb3J0LnZoIgoKICAvLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8KICAvLwogIC8vIEZQR0Eg
Q29tcGF0aWJpbGl0eSBOdW1iZXIKICAvLyAgIFJ1bGVzIGZvciBtb2RpZnlp
bmcgY29tcGF0IG51bWJlcjoKICAvLyAgIC0gTWFqb3IgaXMgdXBkYXRlZCB3
aGVuIHRoZSBGUEdBIGlzIGNoYW5nZWQgYW5kIHJlcXVpcmVzIGEgc29mdHdh
cmUKICAvLyAgICAgY2hhbmdlIGFzIGEgcmVzdWx0LgogIC8vICAgLSBNaW5v
ciBpcyB1cGRhdGVkIHdoZW4gYSBuZXcgZmVhdHVyZSBpcyBhZGRlZCB0byB0
aGUgRlBHQSB0aGF0IGRvZXMgbm90CiAgLy8gICAgIGJyZWFrIHNvZnR3YXJl
IGNvbXBhdGliaWxpdHkuCiAgLy8KICAvLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8KCiAgbG9jYWxwYXJhbSBbMTU6MF0gQ09NUEFUX01B
Sk9SID0gMTYnZDY7CiAgbG9jYWxwYXJhbSBbMTU6MF0gQ09NUEFUX01JTk9S
ID0gMTYnZDA7CgogIC8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLwoKICAvLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8K
ICAvLwogIC8vIE1vdGhlcmJvYXJkIFJlZ2lzdGVycwogIC8vCiAgLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vCgogIC8vIFJlZ2lzdGVy
IGJhc2UKICBsb2NhbHBhcmFtIFtDVFJMUE9SVF9BRERSX1ctMTowXSBSRUdf
QkFTRV9NSVNDICAgICAgID0gMjAnaDA7CiAgbG9jYWxwYXJhbSBbQ1RSTFBP
UlRfQUREUl9XLTE6MF0gUkVHX0JBU0VfVElNRUtFRVBFUiA9IDIwJ2gxMDAw
OwoKICAvLyBSZWdpc3RlciByZWdpb24gc2l6ZXMuIEdpdmUgZWFjaCByZWdp
c3RlciByZWdpb24gYSAyNTYtYnl0ZSB3aW5kb3cuCiAgbG9jYWxwYXJhbSBS
RUdfR0xPQl9BRERSX1cgICAgICAgPSA4OwogIGxvY2FscGFyYW0gUkVHX1RJ
TUVLRUVQRVJfQUREUl9XID0gODsKCiAgLy8gTWlzYyBSZWdpc3RlcnMKICBs
b2NhbHBhcmFtIFJFR19DT01QQVRfTlVNICAgICAgICA9IFJFR19CQVNFX01J
U0MgKyAxNCdoMDA7CiAgbG9jYWxwYXJhbSBSRUdfREFURVNUQU1QICAgICAg
ICAgPSBSRUdfQkFTRV9NSVNDICsgMTQnaDA0OwogIGxvY2FscGFyYW0gUkVH
X0dJVF9IQVNIICAgICAgICAgID0gUkVHX0JBU0VfTUlTQyArIDE0J2gwODsK
ICBsb2NhbHBhcmFtIFJFR19TQ1JBVENIICAgICAgICAgICA9IFJFR19CQVNF
X01JU0MgKyAxNCdoMEM7CiAgbG9jYWxwYXJhbSBSRUdfREVWSUNFX0lEICAg
ICAgICAgPSBSRUdfQkFTRV9NSVNDICsgMTQnaDEwOwogIGxvY2FscGFyYW0g
UkVHX1JGTk9DX0lORk8gICAgICAgID0gUkVHX0JBU0VfTUlTQyArIDE0J2gx
NDsKICBsb2NhbHBhcmFtIFJFR19DTE9DS19DVFJMICAgICAgICA9IFJFR19C
QVNFX01JU0MgKyAxNCdoMTg7CiAgbG9jYWxwYXJhbSBSRUdfWEFEQ19SRUFE
QkFDSyAgICAgPSBSRUdfQkFTRV9NSVNDICsgMTQnaDFDOwogIGxvY2FscGFy
YW0gUkVHX0JVU19DTEtfUkFURSAgICAgID0gUkVHX0JBU0VfTUlTQyArIDE0
J2gyMDsKICBsb2NhbHBhcmFtIFJFR19CVVNfQ0xLX0NPVU5UICAgICA9IFJF
R19CQVNFX01JU0MgKyAxNCdoMjQ7CiAgbG9jYWxwYXJhbSBSRUdfU0ZQX1BP
UlRfSU5GTyAgICAgPSBSRUdfQkFTRV9NSVNDICsgMTQnaDI4OwogIGxvY2Fs
cGFyYW0gUkVHX0ZQX0dQSU9fQ1RSTCAgICAgID0gUkVHX0JBU0VfTUlTQyAr
IDE0J2gyQzsKICBsb2NhbHBhcmFtIFJFR19GUF9HUElPX01BU1RFUiAgICA9
IFJFR19CQVNFX01JU0MgKyAxNCdoMzA7CiAgbG9jYWxwYXJhbSBSRUdfRlBf
R1BJT19SQURJT19TUkMgPSBSRUdfQkFTRV9NSVNDICsgMTQnaDM0OwogIGxv
Y2FscGFyYW0gUkVHX0dQU19DVFJMICAgICAgICAgID0gUkVHX0JBU0VfTUlT
QyArIDE0J2gzODsKICBsb2NhbHBhcmFtIFJFR19HUFNfU1RBVFVTICAgICAg
ICA9IFJFR19CQVNFX01JU0MgKyAxNCdoM0M7CiAgbG9jYWxwYXJhbSBSRUdf
REJPQVJEX0NUUkwgICAgICAgPSBSRUdfQkFTRV9NSVNDICsgMTQnaDQwOwog
IGxvY2FscGFyYW0gUkVHX0RCT0FSRF9TVEFUVVMgICAgID0gUkVHX0JBU0Vf
TUlTQyArIDE0J2g0NDsKICBsb2NhbHBhcmFtIFJFR19OVU1fVElNRUtFRVBF
UlMgICA9IFJFR19CQVNFX01JU0MgKyAxNCdoNDg7CgogIGxvY2FscGFyYW0g
TlVNX1RJTUVLRUVQRVJTID0gMTsKCiAgd2lyZSAgICAgICAgICAgICAgICAg
IG1fY3RybHBvcnRfcmVxX3dyOwogIHdpcmUgICAgICAgICAgICAgICAgICBt
X2N0cmxwb3J0X3JlcV9yZDsKICB3aXJlIFsxOTowXSAgICAgICAgICAgbV9j
dHJscG9ydF9yZXFfYWRkcjsKICB3aXJlIFszMTowXSAgICAgICAgICAgbV9j
dHJscG9ydF9yZXFfZGF0YTsKICB3aXJlICAgICAgICAgICAgICAgICAgbV9j
dHJscG9ydF9yZXFfaGFzX3RpbWU7CiAgd2lyZSBbNjM6MF0gICAgICAgICAg
IG1fY3RybHBvcnRfcmVxX3RpbWU7CiAgd2lyZSAgICAgICAgICAgICAgICAg
IG1fY3RybHBvcnRfcmVzcF9hY2s7CiAgd2lyZSBbMzE6MF0gICAgICAgICAg
IG1fY3RybHBvcnRfcmVzcF9kYXRhOwoKICByZWcgIFszMTowXSAgICAgICAg
ICAgZnBfZ3Bpb19tYXN0ZXJfcmVnID0gMzInaDA7CiAgcmVnICBbMzE6MF0g
ICAgICAgICAgIGZwX2dwaW9fc3JjX3JlZyAgICA9IDMyJ2gwOwoKICByZWcg
WzMxOjBdIHNjcmF0Y2hfcmVnID0gMzInaDA7CiAgcmVnIFszMTowXSBidXNf
Y291bnRlciA9IDMyJ2gwOwoKICBhbHdheXMgQChwb3NlZGdlIGJ1c19jbGsp
IGJlZ2luCiAgICAgaWYgKGJ1c19yc3QpCiAgICAgICAgYnVzX2NvdW50ZXIg
PD0gMzInZDA7CiAgICAgZWxzZQogICAgICAgIGJ1c19jb3VudGVyIDw9IGJ1
c19jb3VudGVyICsgMzInZDE7CiAgZW5kCgoKICAvLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLwogIC8vCiAgLy8gQnVzIEJyaWRnZQogIC8vCiAg
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8KCiAgLy8gV2UgbmVl
ZCBhIHJlYWxseSBsb25nIHRpbWVvdXQgZm9yIEN0cmxQb3J0IHRyYW5zYWN0
aW9ucywgc2luY2UgdGhlCiAgLy8gcmFkaW9fY2xrIGZvciB0aGUgdGltZWtl
ZXBlciBtaWdodCBiZSByZWFsbHkgc2xvdyBjb21wYXJlZCB0byBzX2F4aV9h
Y2xrLgogIGxvY2FscGFyYW0gQ1RSTFBPUlRfVElNRU9VVCA9IDIwOwoKICB3
aXJlICAgICAgICAgICAgICAgICAgICAgICBjcF9yZXFfd3JfYWNsazsKICB3
aXJlICAgICAgICAgICAgICAgICAgICAgICBjcF9yZXFfcmRfYWNsazsKICB3
aXJlIFtDVFJMUE9SVF9BRERSX1ctMTowXSBjcF9yZXFfYWRkcl9hY2xrOwog
IHdpcmUgW0NUUkxQT1JUX0RBVEFfVy0xOjBdIGNwX3JlcV9kYXRhX2FjbGs7
CiAgd2lyZSAgICAgICAgICAgICAgICAgICAgICAgY3BfcmVzcF9hY2tfYWNs
azsKICB3aXJlIFsgQ1RSTFBPUlRfU1RTX1ctMTowXSBjcF9yZXNwX3N0YXR1
c19hY2xrOwogIHdpcmUgW0NUUkxQT1JUX0RBVEFfVy0xOjBdIGNwX3Jlc3Bf
ZGF0YV9hY2xrOwoKICAvLyBDb252ZXJ0IHRoZSBBWEk0LUxpdGUgdHJhbnNh
Y3Rpb25zIHRvIEN0cmxQb3J0CiAgYXhpbF9jdHJscG9ydF9tYXN0ZXIgIygK
ICAgIC5USU1FT1VUICAgICAgICAgKENUUkxQT1JUX1RJTUVPVVQpLAogICAg
LkFYSV9BV0lEVEggICAgICAoUkVHX0FXSURUSCksCiAgICAuQ1RSTFBPUlRf
QVdJRFRIIChDVFJMUE9SVF9BRERSX1cpCiAgKSBheGlsX2N0cmxwb3J0X21h
c3Rlcl9pICgKICAgIC5zX2F4aV9hY2xrICAgICAgICAgICAgICAgIChzX2F4
aV9hY2xrKSwKICAgIC5zX2F4aV9hcmVzZXRuICAgICAgICAgICAgIChzX2F4
aV9hcmVzZXRuKSwKICAgIC5zX2F4aV9hd2FkZHIgICAgICAgICAgICAgIChz
X2F4aV9hd2FkZHIpLAogICAgLnNfYXhpX2F3dmFsaWQgICAgICAgICAgICAg
KHNfYXhpX2F3dmFsaWQpLAogICAgLnNfYXhpX2F3cmVhZHkgICAgICAgICAg
ICAgKHNfYXhpX2F3cmVhZHkpLAogICAgLnNfYXhpX3dkYXRhICAgICAgICAg
ICAgICAgKHNfYXhpX3dkYXRhKSwKICAgIC5zX2F4aV93c3RyYiAgICAgICAg
ICAgICAgIChzX2F4aV93c3RyYiksCiAgICAuc19heGlfd3ZhbGlkICAgICAg
ICAgICAgICAoc19heGlfd3ZhbGlkKSwKICAgIC5zX2F4aV93cmVhZHkgICAg
ICAgICAgICAgIChzX2F4aV93cmVhZHkpLAogICAgLnNfYXhpX2JyZXNwICAg
ICAgICAgICAgICAgKHNfYXhpX2JyZXNwKSwKICAgIC5zX2F4aV9idmFsaWQg
ICAgICAgICAgICAgIChzX2F4aV9idmFsaWQpLAogICAgLnNfYXhpX2JyZWFk
eSAgICAgICAgICAgICAgKHNfYXhpX2JyZWFkeSksCiAgICAuc19heGlfYXJh
ZGRyICAgICAgICAgICAgICAoc19heGlfYXJhZGRyKSwKICAgIC5zX2F4aV9h
cnZhbGlkICAgICAgICAgICAgIChzX2F4aV9hcnZhbGlkKSwKICAgIC5zX2F4
aV9hcnJlYWR5ICAgICAgICAgICAgIChzX2F4aV9hcnJlYWR5KSwKICAgIC5z
X2F4aV9yZGF0YSAgICAgICAgICAgICAgIChzX2F4aV9yZGF0YSksCiAgICAu
c19heGlfcnJlc3AgICAgICAgICAgICAgICAoc19heGlfcnJlc3ApLAogICAg
LnNfYXhpX3J2YWxpZCAgICAgICAgICAgICAgKHNfYXhpX3J2YWxpZCksCiAg
ICAuc19heGlfcnJlYWR5ICAgICAgICAgICAgICAoc19heGlfcnJlYWR5KSwK
ICAgIC5tX2N0cmxwb3J0X3JlcV93ciAgICAgICAgIChjcF9yZXFfd3JfYWNs
ayksCiAgICAubV9jdHJscG9ydF9yZXFfcmQgICAgICAgICAoY3BfcmVxX3Jk
X2FjbGspLAogICAgLm1fY3RybHBvcnRfcmVxX2FkZHIgICAgICAgKGNwX3Jl
cV9hZGRyX2FjbGspLAogICAgLm1fY3RybHBvcnRfcmVxX3BvcnRpZCAgICAg
KCksCiAgICAubV9jdHJscG9ydF9yZXFfcmVtX2VwaWQgICAoKSwKICAgIC5t
X2N0cmxwb3J0X3JlcV9yZW1fcG9ydGlkICgpLAogICAgLm1fY3RybHBvcnRf
cmVxX2RhdGEgICAgICAgKGNwX3JlcV9kYXRhX2FjbGspLAogICAgLm1fY3Ry
bHBvcnRfcmVxX2J5dGVfZW4gICAgKCksCiAgICAubV9jdHJscG9ydF9yZXFf
aGFzX3RpbWUgICAoKSwKICAgIC5tX2N0cmxwb3J0X3JlcV90aW1lICAgICAg
ICgpLAogICAgLm1fY3RybHBvcnRfcmVzcF9hY2sgICAgICAgKGNwX3Jlc3Bf
YWNrX2FjbGspLAogICAgLm1fY3RybHBvcnRfcmVzcF9zdGF0dXMgICAgKGNw
X3Jlc3Bfc3RhdHVzX2FjbGspLAogICAgLm1fY3RybHBvcnRfcmVzcF9kYXRh
ICAgICAgKGNwX3Jlc3BfZGF0YV9hY2xrKQogICk7CgogIHdpcmUgICAgICAg
ICAgICAgICAgICAgICAgIGNwX3JlcV93cjsKICB3aXJlICAgICAgICAgICAg
ICAgICAgICAgICBjcF9yZXFfcmQ7CiAgd2lyZSBbQ1RSTFBPUlRfQUREUl9X
LTE6MF0gY3BfcmVxX2FkZHI7CiAgd2lyZSBbQ1RSTFBPUlRfREFUQV9XLTE6
MF0gY3BfcmVxX2RhdGE7CiAgd2lyZSAgICAgICAgICAgICAgICAgICAgICAg
Y3BfcmVzcF9hY2s7CiAgd2lyZSBbIENUUkxQT1JUX1NUU19XLTE6MF0gY3Bf
cmVzcF9zdGF0dXM7CiAgd2lyZSBbQ1RSTFBPUlRfREFUQV9XLTE6MF0gY3Bf
cmVzcF9kYXRhOwoKICAvLyBDcm9zcyB0cmFuc2FjdGlvbnMgZnJvbSBzX2F4
aV9jbGsgdG8gYnVzX2NsayBkb21haW4KICBjdHJscG9ydF9jbGtfY3Jvc3Mg
Y3RybHBvcnRfY2xrX2Nyb3NzX2kgKAogICAgLnJzdCAgICAgICAgICAgICAg
ICAgICAgICAgKH5zX2F4aV9hcmVzZXRuKSwKICAgIC5zX2N0cmxwb3J0X2Ns
ayAgICAgICAgICAgIChzX2F4aV9hY2xrKSwKICAgIC5zX2N0cmxwb3J0X3Jl
cV93ciAgICAgICAgIChjcF9yZXFfd3JfYWNsayksCiAgICAuc19jdHJscG9y
dF9yZXFfcmQgICAgICAgICAoY3BfcmVxX3JkX2FjbGspLAogICAgLnNfY3Ry
bHBvcnRfcmVxX2FkZHIgICAgICAgKGNwX3JlcV9hZGRyX2FjbGspLAogICAg
LnNfY3RybHBvcnRfcmVxX3BvcnRpZCAgICAgKHtDVFJMUE9SVF9QT1JUSURf
V3sxJ2IwfX0pLAogICAgLnNfY3RybHBvcnRfcmVxX3JlbV9lcGlkICAgKHtD
VFJMUE9SVF9SRU1fRVBJRF9XezEnYjB9fSksCiAgICAuc19jdHJscG9ydF9y
ZXFfcmVtX3BvcnRpZCAoe0NUUkxQT1JUX1BPUlRJRF9XezEnYjB9fSksCiAg
ICAuc19jdHJscG9ydF9yZXFfZGF0YSAgICAgICAoY3BfcmVxX2RhdGFfYWNs
ayksCiAgICAuc19jdHJscG9ydF9yZXFfYnl0ZV9lbiAgICAoe0NUUkxQT1JU
X0JZVEVfRU5fV3sxJ2IxfX0pLAogICAgLnNfY3RybHBvcnRfcmVxX2hhc190
aW1lICAgKDEnYjApLAogICAgLnNfY3RybHBvcnRfcmVxX3RpbWUgICAgICAg
KHtDVFJMUE9SVF9USU1FX1d7MSdiMH19KSwKICAgIC5zX2N0cmxwb3J0X3Jl
c3BfYWNrICAgICAgIChjcF9yZXNwX2Fja19hY2xrKSwKICAgIC5zX2N0cmxw
b3J0X3Jlc3Bfc3RhdHVzICAgIChjcF9yZXNwX3N0YXR1c19hY2xrKSwKICAg
IC5zX2N0cmxwb3J0X3Jlc3BfZGF0YSAgICAgIChjcF9yZXNwX2RhdGFfYWNs
ayksCiAgICAubV9jdHJscG9ydF9jbGsgICAgICAgICAgICAoYnVzX2Nsayks
CiAgICAubV9jdHJscG9ydF9yZXFfd3IgICAgICAgICAoY3BfcmVxX3dyKSwK
ICAgIC5tX2N0cmxwb3J0X3JlcV9yZCAgICAgICAgIChjcF9yZXFfcmQpLAog
ICAgLm1fY3RybHBvcnRfcmVxX2FkZHIgICAgICAgKGNwX3JlcV9hZGRyKSwK
ICAgIC5tX2N0cmxwb3J0X3JlcV9wb3J0aWQgICAgICgpLAogICAgLm1fY3Ry
bHBvcnRfcmVxX3JlbV9lcGlkICAgKCksCiAgICAubV9jdHJscG9ydF9yZXFf
cmVtX3BvcnRpZCAoKSwKICAgIC5tX2N0cmxwb3J0X3JlcV9kYXRhICAgICAg
IChjcF9yZXFfZGF0YSksCiAgICAubV9jdHJscG9ydF9yZXFfYnl0ZV9lbiAg
ICAoKSwKICAgIC5tX2N0cmxwb3J0X3JlcV9oYXNfdGltZSAgICgpLAogICAg
Lm1fY3RybHBvcnRfcmVxX3RpbWUgICAgICAgKCksCiAgICAubV9jdHJscG9y
dF9yZXNwX2FjayAgICAgICAoY3BfcmVzcF9hY2spLAogICAgLm1fY3RybHBv
cnRfcmVzcF9zdGF0dXMgICAgKGNwX3Jlc3Bfc3RhdHVzKSwKICAgIC5tX2N0
cmxwb3J0X3Jlc3BfZGF0YSAgICAgIChjcF9yZXNwX2RhdGEpCiAgKTsKCiAg
d2lyZSAgICAgICAgICAgICAgICAgICAgICAgY3BfZ2xvYl9yZXFfd3I7CiAg
d2lyZSAgICAgICAgICAgICAgICAgICAgICAgY3BfZ2xvYl9yZXFfcmQ7CiAg
d2lyZSBbQ1RSTFBPUlRfQUREUl9XLTE6MF0gY3BfZ2xvYl9yZXFfYWRkcjsK
ICB3aXJlIFtDVFJMUE9SVF9EQVRBX1ctMTowXSBjcF9nbG9iX3JlcV9kYXRh
OwogIHJlZyAgICAgICAgICAgICAgICAgICAgICAgIGNwX2dsb2JfcmVzcF9h
Y2sgID0gMSdiMDsKICByZWcgIFtDVFJMUE9SVF9EQVRBX1ctMTowXSBjcF9n
bG9iX3Jlc3BfZGF0YSA9IDEnYlg7CgogIHdpcmUgICAgICAgICAgICAgICAg
ICAgICAgIGNwX3RrX3JlcV93cjsKICB3aXJlICAgICAgICAgICAgICAgICAg
ICAgICBjcF90a19yZXFfcmQ7CiAgd2lyZSBbQ1RSTFBPUlRfQUREUl9XLTE6
MF0gY3BfdGtfcmVxX2FkZHI7CiAgd2lyZSBbQ1RSTFBPUlRfREFUQV9XLTE6
MF0gY3BfdGtfcmVxX2RhdGE7CiAgd2lyZSAgICAgICAgICAgICAgICAgICAg
ICAgY3BfdGtfcmVzcF9hY2s7CiAgd2lyZSBbQ1RSTFBPUlRfREFUQV9XLTE6
MF0gY3BfdGtfcmVzcF9kYXRhOwoKICAvLyBTcGxpdCB0aGUgQ3RybFBvcnQg
Zm9yIHRoZSBnbG9iYWwgcmVnaXN0ZXJzIGFuZCB0aGUgdGltZWtlZXBlciBy
ZWdpc3RlcnMKICBjdHJscG9ydF9kZWNvZGVyX3BhcmFtICMoCiAgICAuTlVN
X1NMQVZFUyAgKDIpLAogICAgLlBPUlRfQkFTRSAgICh7ICAgUkVHX0JBU0Vf
VElNRUtFRVBFUiwgICBSRUdfQkFTRV9NSVNDIH0pLAogICAgLlBPUlRfQURE
Ul9XICh7IFJFR19USU1FS0VFUEVSX0FERFJfVywgUkVHX0dMT0JfQUREUl9X
IH0pCiAgKSBjdHJscG9ydF9kZWNvZGVyX3BhcmFtX2kgKAogICAgLmN0cmxw
b3J0X2NsayAgICAgICAgICAgIChidXNfY2xrKSwKICAgIC5jdHJscG9ydF9y
c3QgICAgICAgICAgICAoYnVzX3JzdCksCiAgICAuc19jdHJscG9ydF9yZXFf
d3IgICAgICAgKGNwX3JlcV93ciksCiAgICAuc19jdHJscG9ydF9yZXFfcmQg
ICAgICAgKGNwX3JlcV9yZCksCiAgICAuc19jdHJscG9ydF9yZXFfYWRkciAg
ICAgKGNwX3JlcV9hZGRyKSwKICAgIC5zX2N0cmxwb3J0X3JlcV9kYXRhICAg
ICAoY3BfcmVxX2RhdGEpLAogICAgLnNfY3RybHBvcnRfcmVxX2J5dGVfZW4g
ICh7Q1RSTFBPUlRfQllURV9FTl9XezEnYjF9fSksCiAgICAuc19jdHJscG9y
dF9yZXFfaGFzX3RpbWUgKDEnYjApLAogICAgLnNfY3RybHBvcnRfcmVxX3Rp
bWUgICAgICh7Q1RSTFBPUlRfVElNRV9XezEnYjB9fSksCiAgICAuc19jdHJs
cG9ydF9yZXNwX2FjayAgICAgKGNwX3Jlc3BfYWNrKSwKICAgIC5zX2N0cmxw
b3J0X3Jlc3Bfc3RhdHVzICAoY3BfcmVzcF9zdGF0dXMpLAogICAgLnNfY3Ry
bHBvcnRfcmVzcF9kYXRhICAgIChjcF9yZXNwX2RhdGEpLAogICAgLm1fY3Ry
bHBvcnRfcmVxX3dyICAgICAgICh7ICAgIGNwX3RrX3JlcV93ciwgICAgY3Bf
Z2xvYl9yZXFfd3IgfSksCiAgICAubV9jdHJscG9ydF9yZXFfcmQgICAgICAg
KHsgICAgY3BfdGtfcmVxX3JkLCAgICBjcF9nbG9iX3JlcV9yZCB9KSwKICAg
IC5tX2N0cmxwb3J0X3JlcV9hZGRyICAgICAoeyAgY3BfdGtfcmVxX2FkZHIs
ICBjcF9nbG9iX3JlcV9hZGRyIH0pLAogICAgLm1fY3RybHBvcnRfcmVxX2Rh
dGEgICAgICh7ICBjcF90a19yZXFfZGF0YSwgIGNwX2dsb2JfcmVxX2RhdGEg
fSksCiAgICAubV9jdHJscG9ydF9yZXFfYnl0ZV9lbiAgKCksCiAgICAubV9j
dHJscG9ydF9yZXFfaGFzX3RpbWUgKCksCiAgICAubV9jdHJscG9ydF9yZXFf
dGltZSAgICAgKCksCiAgICAubV9jdHJscG9ydF9yZXNwX2FjayAgICAgKHsg
IGNwX3RrX3Jlc3BfYWNrLCAgY3BfZ2xvYl9yZXNwX2FjayB9KSwKICAgIC5t
X2N0cmxwb3J0X3Jlc3Bfc3RhdHVzICAoezJ7Q1RSTF9TVFNfT0tBWX19KSwK
ICAgIC5tX2N0cmxwb3J0X3Jlc3BfZGF0YSAgICAoeyBjcF90a19yZXNwX2Rh
dGEsIGNwX2dsb2JfcmVzcF9kYXRhIH0pCiAgKTsKCgogIC8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vCiAgLy8KICAvLyBHbG9iYWwgUmVnaXN0
ZXJzCiAgLy8KICAvLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLwoK
ICAvLyBXcml0ZSBSZWdpc3RlcnMKICBhbHdheXMgQCAocG9zZWRnZSBidXNf
Y2xrKSBiZWdpbgogICAgaWYgKGJ1c19yc3QpIGJlZ2luCiAgICAgIHNjcmF0
Y2hfcmVnICAgICAgIDw9IDMyJ2gwOwogICAgICBwcHNfc2VsZWN0ICAgICAg
ICA8PSAyJ2IwMTsgLy8gRGVmYXVsdCB0byBpbnRlcm5hbAogICAgICByZWZf
c2VsZWN0ICAgICAgICA8PSAxJ2IwOyAgLy8gRGVmYXVsdCB0byBpbnRlcm5h
bAogICAgICBmcF9ncGlvX2N0cmwgICAgICA8PSAzMidoOTsgLy8gRGVmYXVs
dCB0byBPRkYgLSA0J2IxMDAxCiAgICAgIGdwc19jdHJsICAgICAgICAgIDw9
IDMyJ2gzOyAvLyBEZWZhdWx0IHRvIGdwc19lbiwgb3V0IG9mIHJlc2V0CiAg
ICAgIGRib2FyZF9jdHJsICAgICAgIDw9IDMyJ2gxOyAvLyBEZWZhdWx0IHRv
IG1pbW8KICAgICAgZGV2aWNlX2lkICAgICAgICAgPD0gMTYnaDA7CiAgICAg
IGNwX2dsb2JfcmVzcF9hY2sgIDw9IDEnYjA7CiAgICAgIGNwX2dsb2JfcmVz
cF9kYXRhIDw9ICdiWDsKICAgIGVuZCBiZWdpbgogICAgICBjcF9nbG9iX3Jl
c3BfYWNrIDw9IDEnYjA7CgogICAgICBpZiAoY3BfZ2xvYl9yZXFfd3IpIGJl
Z2luCiAgICAgICAgY3BfZ2xvYl9yZXNwX2FjayA8PSAxJ2IxOwoKICAgICAg
ICBjYXNlIChjcF9nbG9iX3JlcV9hZGRyW1JFR19HTE9CX0FERFJfVy0xOjBd
KQogICAgICAgICAgUkVHX0RFVklDRV9JRDoKICAgICAgICAgICAgZGV2aWNl
X2lkIDw9IGNwX2dsb2JfcmVxX2RhdGFbMTU6MF07CiAgICAgICAgICAKICAg
ICAgICAgIFJFR19GUF9HUElPX01BU1RFUjoKICAgICAgICAgICAgZnBfZ3Bp
b19tYXN0ZXJfcmVnIDw9IGNwX2dsb2JfcmVxX2RhdGE7CiAgICAgICAgICAK
ICAgICAgICAgIFJFR19GUF9HUElPX1JBRElPX1NSQzoKICAgICAgICAgICAg
ZnBfZ3Bpb19zcmNfcmVnIDw9IGNwX2dsb2JfcmVxX2RhdGE7CiAgICAgICAg
ICAKICAgICAgICAgIFJFR19TQ1JBVENIOgogICAgICAgICAgICBzY3JhdGNo
X3JlZyA8PSBjcF9nbG9iX3JlcV9kYXRhOwogICAgICAgICAgCiAgICAgICAg
ICBSRUdfQ0xPQ0tfQ1RSTDogYmVnaW4KICAgICAgICAgICAgY3BfZ2xvYl9y
ZXNwX2RhdGEgICAgICA8PSAzMidiMDsKICAgICAgICAgICAgcHBzX3NlbGVj
dCAgPD0gY3BfZ2xvYl9yZXFfZGF0YVsxOjBdOwogICAgICAgICAgICByZWZf
c2VsZWN0ICA8PSBjcF9nbG9iX3JlcV9kYXRhWzJdOwogICAgICAgICAgZW5k
CgogICAgICAgICAgUkVHX0ZQX0dQSU9fQ1RSTDoKICAgICAgICAgICAgZnBf
Z3Bpb19jdHJsIDw9IGNwX2dsb2JfcmVxX2RhdGE7CiAgICAgICAgICAKICAg
ICAgICAgIFJFR19HUFNfQ1RSTDoKICAgICAgICAgICAgZ3BzX2N0cmwgICAg
PD0gY3BfZ2xvYl9yZXFfZGF0YTsKICAgICAgICAgIAogICAgICAgICAgUkVH
X0RCT0FSRF9DVFJMOgogICAgICAgICAgICBkYm9hcmRfY3RybCA8PSBjcF9n
bG9iX3JlcV9kYXRhOwoKICAgICAgICAgIGRlZmF1bHQ6IGJlZ2luCiAgICAg
ICAgICAgIC8vIERvbid0IGFja25vd2xlZGdlIGlmIHRoZSBhZGRyZXNzIGRv
ZXNuJ3QgbWF0Y2gKICAgICAgICAgICAgY3BfZ2xvYl9yZXNwX2FjayA8PSAx
J2IwOwogICAgICAgICAgZW5kCiAgICAgICAgZW5kY2FzZQogICAgICBlbmQK
CiAgICAgIGlmIChjcF9nbG9iX3JlcV9yZCkgYmVnaW4KICAgICAgICBjcF9n
bG9iX3Jlc3BfZGF0YSA8PSAwOyAgLy8gVW51c2VkIGJpdHMgd2lsbCByZWFk
IDAKICAgICAgICBjcF9nbG9iX3Jlc3BfYWNrICA8PSAxJ2IxOwoKICAgICAg
ICBjYXNlIChjcF9nbG9iX3JlcV9hZGRyW1JFR19HTE9CX0FERFJfVy0xOjBd
KQogICAgICAgICAgUkVHX0RFVklDRV9JRDoKICAgICAgICAgICAgY3BfZ2xv
Yl9yZXNwX2RhdGEgPD0geyAxNidkMCwgZGV2aWNlX2lkIH07CgogICAgICAg
ICAgUkVHX1JGTk9DX0lORk86CiAgICAgICAgICAgIGNwX2dsb2JfcmVzcF9k
YXRhIDw9IHtDSERSX1dJRFRIWzE1OjBdLCBSRk5PQ19QUk9UT1ZFUlsxNTow
XX07CgogICAgICAgICAgUkVHX0NPTVBBVF9OVU06CiAgICAgICAgICAgIGNw
X2dsb2JfcmVzcF9kYXRhIDw9IHtDT01QQVRfTUFKT1JbMTU6MF0sIENPTVBB
VF9NSU5PUlsxNTowXX07CgogICAgICAgICAgUkVHX0ZQX0dQSU9fQ1RSTDoK
ICAgICAgICAgICAgY3BfZ2xvYl9yZXNwX2RhdGEgPD0gZnBfZ3Bpb19jdHJs
OwoKICAgICAgICAgIFJFR19GUF9HUElPX01BU1RFUjoKICAgICAgICAgICAg
Y3BfZ2xvYl9yZXNwX2RhdGEgPD0gZnBfZ3Bpb19tYXN0ZXJfcmVnOwoKICAg
ICAgICAgIFJFR19GUF9HUElPX1JBRElPX1NSQzoKICAgICAgICAgICAgY3Bf
Z2xvYl9yZXNwX2RhdGEgPD0gZnBfZ3Bpb19zcmNfcmVnOwoKICAgICAgICAg
IFJFR19EQVRFU1RBTVA6CiAgICAgICAgICAgIGNwX2dsb2JfcmVzcF9kYXRh
IDw9IGJ1aWxkX2RhdGVzdGFtcDsKCiAgICAgICAgICBSRUdfR0lUX0hBU0g6
CiAgICAgICAgICAgIGBpZm5kZWYgR0lUX0hBU0gKICAgICAgICAgICAgYGRl
ZmluZSBHSVRfSEFTSCAzMidoMEJBREMwREUKICAgICAgICAgICAgYGVuZGlm
CiAgICAgICAgICAgIGNwX2dsb2JfcmVzcF9kYXRhIDw9IGBHSVRfSEFTSDsK
CiAgICAgICAgICBSRUdfU0NSQVRDSDoKICAgICAgICAgICAgY3BfZ2xvYl9y
ZXNwX2RhdGEgPD0gc2NyYXRjaF9yZWc7CgogICAgICAgICAgUkVHX0NMT0NL
X0NUUkw6IGJlZ2luCiAgICAgICAgICAgIGNwX2dsb2JfcmVzcF9kYXRhICAg
ICAgPD0gMzInYjA7CiAgICAgICAgICAgIGNwX2dsb2JfcmVzcF9kYXRhWzE6
MF0gPD0gcHBzX3NlbGVjdDsKICAgICAgICAgICAgY3BfZ2xvYl9yZXNwX2Rh
dGFbMl0gICA8PSByZWZfc2VsZWN0OwogICAgICAgICAgICBjcF9nbG9iX3Jl
c3BfZGF0YVszXSAgIDw9IHJlZmNsa19sb2NrZWQ7CiAgICAgICAgICBlbmQK
CiAgICAgICAgICBSRUdfWEFEQ19SRUFEQkFDSzoKICAgICAgICAgICAgY3Bf
Z2xvYl9yZXNwX2RhdGEgPD0geGFkY19yZWFkYmFjazsKCiAgICAgICAgICBS
RUdfQlVTX0NMS19SQVRFOgogICAgICAgICAgICBjcF9nbG9iX3Jlc3BfZGF0
YSA8PSBCVVNfQ0xLX1JBVEU7CgogICAgICAgICAgUkVHX0JVU19DTEtfQ09V
TlQ6CiAgICAgICAgICAgIGNwX2dsb2JfcmVzcF9kYXRhIDw9IGJ1c19jb3Vu
dGVyOwoKICAgICAgICAgIFJFR19TRlBfUE9SVF9JTkZPOgogICAgICAgICAg
ICBjcF9nbG9iX3Jlc3BfZGF0YSA8PSBzZnBfcG9ydHNfaW5mbzsKCiAgICAg
ICAgICBSRUdfR1BTX0NUUkw6CiAgICAgICAgICAgIGNwX2dsb2JfcmVzcF9k
YXRhIDw9IGdwc19jdHJsOwoKICAgICAgICAgIFJFR19HUFNfU1RBVFVTOgog
ICAgICAgICAgICBjcF9nbG9iX3Jlc3BfZGF0YSA8PSBncHNfc3RhdHVzOwoK
ICAgICAgICAgIFJFR19EQk9BUkRfQ1RSTDoKICAgICAgICAgICAgY3BfZ2xv
Yl9yZXNwX2RhdGEgPD0gZGJvYXJkX2N0cmw7CgogICAgICAgICAgUkVHX0RC
T0FSRF9TVEFUVVM6CiAgICAgICAgICAgIGNwX2dsb2JfcmVzcF9kYXRhIDw9
IGRib2FyZF9zdGF0dXM7CgogICAgICAgICAgUkVHX05VTV9USU1FS0VFUEVS
UzoKICAgICAgICAgICAgY3BfZ2xvYl9yZXNwX2RhdGEgPD0gTlVNX1RJTUVL
RUVQRVJTOwoKICAgICAgICAgIGRlZmF1bHQ6IGJlZ2luCiAgICAgICAgICAg
IC8vIERvbid0IGFja25vd2xlZGdlIGlmIHRoZSBhZGRyZXNzIGRvZXNuJ3Qg
bWF0Y2gKICAgICAgICAgICAgY3BfZ2xvYl9yZXNwX2FjayA8PSAxJ2IwOwog
ICAgICAgICAgZW5kCiAgICAgICAgZW5kY2FzZQogICAgICBlbmQKICAgIGVu
ZAogIGVuZAoKICB3aXJlIHBwc19yYWRpb2NsazsKCiAgLy8gU3luY2hyb25p
emUgdGhlIFBQUyBzaWduYWwgdG8gdGhlIHJhZGlvIGNsb2NrIGRvbWFpbgog
IHN5bmNocm9uaXplciBwcHNfcmFkaW9fc3luYyAoCiAgICAuY2xrKHJhZGlv
X2NsayksIC5yc3QoMSdiMCksIC5pbihwcHNfcmVmY2xrKSwgLm91dChwcHNf
cmFkaW9jbGspCiAgKTsKCgogIC8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vCiAgLy8gCiAgLy8gRFJBTQogIC8vCiAgLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8KCiAgLy9sb2NhbHBhcmFtIE5VTV9EUkFNX0ZJ
Rk9TID0gMjsKICBsb2NhbHBhcmFtIE5VTV9EUkFNX0ZJRk9TID0gNDsgLy8g
TW9kaWZpZWQgYnkgT2ZlciBTYWZlcm1hbiAxMS4wMi4yMDIyIC0gVG8gZml4
IDQtcG9ydCByZXBsYXkgYnVnCgogIHdpcmUgZGRyM19kbWFfcnN0OwoKICBz
eW5jaHJvbml6ZXIgIygKICAgIC5JTklUSUFMX1ZBTCgxJ2IxKQogICkgZGRy
M19kbWFfcnN0X3N5bmNfaSAoCiAgICAuY2xrKGRkcjNfZG1hX2NsayksIC5y
c3QoMSdiMCksIC5pbihkZHIzX2F4aV9yc3QpLCAub3V0KGRkcjNfZG1hX3Jz
dCkKICApOwoKICAvLyBBWEk0IE1NIGJ1c2VzCiAgd2lyZSBbMDowXSAgZHJh
bV9heGlfYXdpZCAgICAgWzA6TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBb
MzA6MF0gZHJhbV9heGlfYXdhZGRyICAgWzA6TlVNX0RSQU1fRklGT1MtMV07
CiAgd2lyZSBbNzowXSAgZHJhbV9heGlfYXdsZW4gICAgWzA6TlVNX0RSQU1f
RklGT1MtMV07CiAgd2lyZSBbMjowXSAgZHJhbV9heGlfYXdzaXplICAgWzA6
TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBbMTowXSAgZHJhbV9heGlfYXdi
dXJzdCAgWzA6TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBbMDowXSAgZHJh
bV9heGlfYXdsb2NrICAgWzA6TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBb
MzowXSAgZHJhbV9heGlfYXdjYWNoZSAgWzA6TlVNX0RSQU1fRklGT1MtMV07
CiAgd2lyZSBbMjowXSAgZHJhbV9heGlfYXdwcm90ICAgWzA6TlVNX0RSQU1f
RklGT1MtMV07CiAgd2lyZSBbMzowXSAgZHJhbV9heGlfYXdxb3MgICAgWzA6
TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBbMzowXSAgZHJhbV9heGlfYXdy
ZWdpb24gWzA6TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBbMDowXSAgZHJh
bV9heGlfYXd1c2VyICAgWzA6TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSAg
ICAgICAgZHJhbV9heGlfYXd2YWxpZCAgWzA6TlVNX0RSQU1fRklGT1MtMV07
CiAgd2lyZSAgICAgICAgZHJhbV9heGlfYXdyZWFkeSAgWzA6TlVNX0RSQU1f
RklGT1MtMV07CiAgd2lyZSBbNjM6MF0gZHJhbV9heGlfd2RhdGEgICAgWzA6
TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBbNzowXSAgZHJhbV9heGlfd3N0
cmIgICAgWzA6TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSAgICAgICAgZHJh
bV9heGlfd2xhc3QgICAgWzA6TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBb
MDowXSAgZHJhbV9heGlfd3VzZXIgICAgWzA6TlVNX0RSQU1fRklGT1MtMV07
CiAgd2lyZSAgICAgICAgZHJhbV9heGlfd3ZhbGlkICAgWzA6TlVNX0RSQU1f
RklGT1MtMV07CiAgd2lyZSAgICAgICAgZHJhbV9heGlfd3JlYWR5ICAgWzA6
TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBbMDowXSAgZHJhbV9heGlfYmlk
ICAgICAgWzA6TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBbMTowXSAgZHJh
bV9heGlfYnJlc3AgICAgWzA6TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBb
MDowXSAgZHJhbV9heGlfYnVzZXIgICAgWzA6TlVNX0RSQU1fRklGT1MtMV07
CiAgd2lyZSAgICAgICAgZHJhbV9heGlfYnZhbGlkICAgWzA6TlVNX0RSQU1f
RklGT1MtMV07CiAgd2lyZSAgICAgICAgZHJhbV9heGlfYnJlYWR5ICAgWzA6
TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBbMDowXSAgZHJhbV9heGlfYXJp
ZCAgICAgWzA6TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBbMzA6MF0gZHJh
bV9heGlfYXJhZGRyICAgWzA6TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBb
NzowXSAgZHJhbV9heGlfYXJsZW4gICAgWzA6TlVNX0RSQU1fRklGT1MtMV07
CiAgd2lyZSBbMjowXSAgZHJhbV9heGlfYXJzaXplICAgWzA6TlVNX0RSQU1f
RklGT1MtMV07CiAgd2lyZSBbMTowXSAgZHJhbV9heGlfYXJidXJzdCAgWzA6
TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBbMDowXSAgZHJhbV9heGlfYXJs
b2NrICAgWzA6TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBbMzowXSAgZHJh
bV9heGlfYXJjYWNoZSAgWzA6TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBb
MjowXSAgZHJhbV9heGlfYXJwcm90ICAgWzA6TlVNX0RSQU1fRklGT1MtMV07
CiAgd2lyZSBbMzowXSAgZHJhbV9heGlfYXJxb3MgICAgWzA6TlVNX0RSQU1f
RklGT1MtMV07CiAgd2lyZSBbMzowXSAgZHJhbV9heGlfYXJyZWdpb24gWzA6
TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBbMDowXSAgZHJhbV9heGlfYXJ1
c2VyICAgWzA6TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSAgICAgICAgZHJh
bV9heGlfYXJ2YWxpZCAgWzA6TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSAg
ICAgICAgZHJhbV9heGlfYXJyZWFkeSAgWzA6TlVNX0RSQU1fRklGT1MtMV07
CiAgd2lyZSBbMDowXSAgZHJhbV9heGlfcmlkICAgICAgWzA6TlVNX0RSQU1f
RklGT1MtMV07CiAgd2lyZSBbNjM6MF0gZHJhbV9heGlfcmRhdGEgICAgWzA6
TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBbMTowXSAgZHJhbV9heGlfcnJl
c3AgICAgWzA6TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSAgICAgICAgZHJh
bV9heGlfcmxhc3QgICAgWzA6TlVNX0RSQU1fRklGT1MtMV07CiAgd2lyZSBb
MDowXSAgZHJhbV9heGlfcnVzZXIgICAgWzA6TlVNX0RSQU1fRklGT1MtMV07
CiAgd2lyZSAgICAgICAgZHJhbV9heGlfcnZhbGlkICAgWzA6TlVNX0RSQU1f
RklGT1MtMV07CiAgd2lyZSAgICAgICAgZHJhbV9heGlfcnJlYWR5ICAgWzA6
TlVNX0RSQU1fRklGT1MtMV07CgogIGF4aV9pbnRlcmNvbl80eDY0XzI1Nl9i
ZF93cmFwcGVyIGF4aV9pbnRlcmNvbl8yeDY0XzI1Nl9iZF9pICgKICAgIC5T
MDBfQVhJX0FDTEsgICAgIChkZHIzX2RtYV9jbGsgICAgICAgICksCiAgICAu
UzAwX0FYSV9BUkVTRVROICAofmRkcjNfZG1hX3JzdCAgICAgICApLAogICAg
LlMwMF9BWElfQVdJRCAgICAgKGRyYW1fYXhpX2F3aWQgICAgWzBdKSwKICAg
IC5TMDBfQVhJX0FXQUREUiAgICh7MSdiMCwgZHJhbV9heGlfYXdhZGRyWzBd
fSksCiAgICAuUzAwX0FYSV9BV0xFTiAgICAoZHJhbV9heGlfYXdsZW4gICBb
MF0pLAogICAgLlMwMF9BWElfQVdTSVpFICAgKGRyYW1fYXhpX2F3c2l6ZSAg
WzBdKSwKICAgIC5TMDBfQVhJX0FXQlVSU1QgIChkcmFtX2F4aV9hd2J1cnN0
IFswXSksCiAgICAuUzAwX0FYSV9BV0xPQ0sgICAoZHJhbV9heGlfYXdsb2Nr
ICBbMF0pLAogICAgLlMwMF9BWElfQVdDQUNIRSAgKGRyYW1fYXhpX2F3Y2Fj
aGUgWzBdKSwKICAgIC5TMDBfQVhJX0FXUFJPVCAgIChkcmFtX2F4aV9hd3By
b3QgIFswXSksCiAgICAuUzAwX0FYSV9BV1FPUyAgICAoZHJhbV9heGlfYXdx
b3MgICBbMF0pLAogICAgLlMwMF9BWElfQVdSRUdJT04gKGRyYW1fYXhpX2F3
cmVnaW9uWzBdKSwKICAgIC5TMDBfQVhJX0FXVkFMSUQgIChkcmFtX2F4aV9h
d3ZhbGlkIFswXSksCiAgICAuUzAwX0FYSV9BV1JFQURZICAoZHJhbV9heGlf
YXdyZWFkeSBbMF0pLAogICAgLlMwMF9BWElfV0RBVEEgICAgKGRyYW1fYXhp
X3dkYXRhICAgWzBdKSwKICAgIC5TMDBfQVhJX1dTVFJCICAgIChkcmFtX2F4
aV93c3RyYiAgIFswXSksCiAgICAuUzAwX0FYSV9XTEFTVCAgICAoZHJhbV9h
eGlfd2xhc3QgICBbMF0pLAogICAgLlMwMF9BWElfV1ZBTElEICAgKGRyYW1f
YXhpX3d2YWxpZCAgWzBdKSwKICAgIC5TMDBfQVhJX1dSRUFEWSAgIChkcmFt
X2F4aV93cmVhZHkgIFswXSksCiAgICAuUzAwX0FYSV9CSUQgICAgICAoZHJh
bV9heGlfYmlkICAgICBbMF0pLAogICAgLlMwMF9BWElfQlJFU1AgICAgKGRy
YW1fYXhpX2JyZXNwICAgWzBdKSwKICAgIC5TMDBfQVhJX0JWQUxJRCAgIChk
cmFtX2F4aV9idmFsaWQgIFswXSksCiAgICAuUzAwX0FYSV9CUkVBRFkgICAo
ZHJhbV9heGlfYnJlYWR5ICBbMF0pLAogICAgLlMwMF9BWElfQVJJRCAgICAg
KGRyYW1fYXhpX2FyaWQgICAgWzBdKSwKICAgIC5TMDBfQVhJX0FSQUREUiAg
ICh7MSdiMCwgZHJhbV9heGlfYXJhZGRyWzBdfSksCiAgICAuUzAwX0FYSV9B
UkxFTiAgICAoZHJhbV9heGlfYXJsZW4gICBbMF0pLAogICAgLlMwMF9BWElf
QVJTSVpFICAgKGRyYW1fYXhpX2Fyc2l6ZSAgWzBdKSwKICAgIC5TMDBfQVhJ
X0FSQlVSU1QgIChkcmFtX2F4aV9hcmJ1cnN0IFswXSksCiAgICAuUzAwX0FY
SV9BUkxPQ0sgICAoZHJhbV9heGlfYXJsb2NrICBbMF0pLAogICAgLlMwMF9B
WElfQVJDQUNIRSAgKGRyYW1fYXhpX2FyY2FjaGUgWzBdKSwKICAgIC5TMDBf
QVhJX0FSUFJPVCAgIChkcmFtX2F4aV9hcnByb3QgIFswXSksCiAgICAuUzAw
X0FYSV9BUlFPUyAgICAoZHJhbV9heGlfYXJxb3MgICBbMF0pLAogICAgLlMw
MF9BWElfQVJSRUdJT04gKGRyYW1fYXhpX2FycmVnaW9uWzBdKSwKICAgIC5T
MDBfQVhJX0FSVkFMSUQgIChkcmFtX2F4aV9hcnZhbGlkIFswXSksCiAgICAu
UzAwX0FYSV9BUlJFQURZICAoZHJhbV9heGlfYXJyZWFkeSBbMF0pLAogICAg
LlMwMF9BWElfUklEICAgICAgKGRyYW1fYXhpX3JpZCAgICAgWzBdKSwKICAg
IC5TMDBfQVhJX1JEQVRBICAgIChkcmFtX2F4aV9yZGF0YSAgIFswXSksCiAg
ICAuUzAwX0FYSV9SUkVTUCAgICAoZHJhbV9heGlfcnJlc3AgICBbMF0pLAog
ICAgLlMwMF9BWElfUkxBU1QgICAgKGRyYW1fYXhpX3JsYXN0ICAgWzBdKSwK
ICAgIC5TMDBfQVhJX1JWQUxJRCAgIChkcmFtX2F4aV9ydmFsaWQgIFswXSks
CiAgICAuUzAwX0FYSV9SUkVBRFkgICAoZHJhbV9heGlfcnJlYWR5ICBbMF0p
LAogICAgLy8KICAgIC5TMDFfQVhJX0FDTEsgICAgIChkZHIzX2RtYV9jbGsg
ICAgICAgICksCiAgICAuUzAxX0FYSV9BUkVTRVROICAofmRkcjNfZG1hX3Jz
dCAgICAgICApLAogICAgLlMwMV9BWElfQVdJRCAgICAgKGRyYW1fYXhpX2F3
aWQgICAgWzFdKSwKICAgIC5TMDFfQVhJX0FXQUREUiAgICh7MSdiMCwgZHJh
bV9heGlfYXdhZGRyWzFdfSksCiAgICAuUzAxX0FYSV9BV0xFTiAgICAoZHJh
bV9heGlfYXdsZW4gICBbMV0pLAogICAgLlMwMV9BWElfQVdTSVpFICAgKGRy
YW1fYXhpX2F3c2l6ZSAgWzFdKSwKICAgIC5TMDFfQVhJX0FXQlVSU1QgIChk
cmFtX2F4aV9hd2J1cnN0IFsxXSksCiAgICAuUzAxX0FYSV9BV0xPQ0sgICAo
ZHJhbV9heGlfYXdsb2NrICBbMV0pLAogICAgLlMwMV9BWElfQVdDQUNIRSAg
KGRyYW1fYXhpX2F3Y2FjaGUgWzFdKSwKICAgIC5TMDFfQVhJX0FXUFJPVCAg
IChkcmFtX2F4aV9hd3Byb3QgIFsxXSksCiAgICAuUzAxX0FYSV9BV1FPUyAg
ICAoZHJhbV9heGlfYXdxb3MgICBbMV0pLAogICAgLlMwMV9BWElfQVdSRUdJ
T04gKGRyYW1fYXhpX2F3cmVnaW9uWzFdKSwKICAgIC5TMDFfQVhJX0FXVkFM
SUQgIChkcmFtX2F4aV9hd3ZhbGlkIFsxXSksCiAgICAuUzAxX0FYSV9BV1JF
QURZICAoZHJhbV9heGlfYXdyZWFkeSBbMV0pLAogICAgLlMwMV9BWElfV0RB
VEEgICAgKGRyYW1fYXhpX3dkYXRhICAgWzFdKSwKICAgIC5TMDFfQVhJX1dT
VFJCICAgIChkcmFtX2F4aV93c3RyYiAgIFsxXSksCiAgICAuUzAxX0FYSV9X
TEFTVCAgICAoZHJhbV9heGlfd2xhc3QgICBbMV0pLAogICAgLlMwMV9BWElf
V1ZBTElEICAgKGRyYW1fYXhpX3d2YWxpZCAgWzFdKSwKICAgIC5TMDFfQVhJ
X1dSRUFEWSAgIChkcmFtX2F4aV93cmVhZHkgIFsxXSksCiAgICAuUzAxX0FY
SV9CSUQgICAgICAoZHJhbV9heGlfYmlkICAgICBbMV0pLAogICAgLlMwMV9B
WElfQlJFU1AgICAgKGRyYW1fYXhpX2JyZXNwICAgWzFdKSwKICAgIC5TMDFf
QVhJX0JWQUxJRCAgIChkcmFtX2F4aV9idmFsaWQgIFsxXSksCiAgICAuUzAx
X0FYSV9CUkVBRFkgICAoZHJhbV9heGlfYnJlYWR5ICBbMV0pLAogICAgLlMw
MV9BWElfQVJJRCAgICAgKGRyYW1fYXhpX2FyaWQgICAgWzFdKSwKICAgIC5T
MDFfQVhJX0FSQUREUiAgICh7MSdiMCwgZHJhbV9heGlfYXJhZGRyWzFdfSks
CiAgICAuUzAxX0FYSV9BUkxFTiAgICAoZHJhbV9heGlfYXJsZW4gICBbMV0p
LAogICAgLlMwMV9BWElfQVJTSVpFICAgKGRyYW1fYXhpX2Fyc2l6ZSAgWzFd
KSwKICAgIC5TMDFfQVhJX0FSQlVSU1QgIChkcmFtX2F4aV9hcmJ1cnN0IFsx
XSksCiAgICAuUzAxX0FYSV9BUkxPQ0sgICAoZHJhbV9heGlfYXJsb2NrICBb
MV0pLAogICAgLlMwMV9BWElfQVJDQUNIRSAgKGRyYW1fYXhpX2FyY2FjaGUg
WzFdKSwKICAgIC5TMDFfQVhJX0FSUFJPVCAgIChkcmFtX2F4aV9hcnByb3Qg
IFsxXSksCiAgICAuUzAxX0FYSV9BUlFPUyAgICAoZHJhbV9heGlfYXJxb3Mg
ICBbMV0pLAogICAgLlMwMV9BWElfQVJSRUdJT04gKGRyYW1fYXhpX2FycmVn
aW9uWzFdKSwKICAgIC5TMDFfQVhJX0FSVkFMSUQgIChkcmFtX2F4aV9hcnZh
bGlkIFsxXSksCiAgICAuUzAxX0FYSV9BUlJFQURZICAoZHJhbV9heGlfYXJy
ZWFkeSBbMV0pLAogICAgLlMwMV9BWElfUklEICAgICAgKGRyYW1fYXhpX3Jp
ZCAgICAgWzFdKSwKICAgIC5TMDFfQVhJX1JEQVRBICAgIChkcmFtX2F4aV9y
ZGF0YSAgIFsxXSksCiAgICAuUzAxX0FYSV9SUkVTUCAgICAoZHJhbV9heGlf
cnJlc3AgICBbMV0pLAogICAgLlMwMV9BWElfUkxBU1QgICAgKGRyYW1fYXhp
X3JsYXN0ICAgWzFdKSwKICAgIC5TMDFfQVhJX1JWQUxJRCAgIChkcmFtX2F4
aV9ydmFsaWQgIFsxXSksCiAgICAuUzAxX0FYSV9SUkVBRFkgICAoZHJhbV9h
eGlfcnJlYWR5ICBbMV0pLAogICAgLy8KICAgLlMwMl9BWElfQUNMSyAgICAg
KGRkcjNfZG1hX2NsayAgICAgICAgKSwKICAgLlMwMl9BWElfQVJFU0VUTiAg
KH5kZHIzX2RtYV9yc3QgICAgICAgKSwKICAgLlMwMl9BWElfQVdJRCAgICAg
KGRyYW1fYXhpX2F3aWQgICAgWzJdKSwKICAgLlMwMl9BWElfQVdBRERSICAg
KHsxJ2IwLCBkcmFtX2F4aV9hd2FkZHJbMl19KSwKICAgLlMwMl9BWElfQVdM
RU4gICAgKGRyYW1fYXhpX2F3bGVuICAgWzJdKSwKICAgLlMwMl9BWElfQVdT
SVpFICAgKGRyYW1fYXhpX2F3c2l6ZSAgWzJdKSwKICAgLlMwMl9BWElfQVdC
VVJTVCAgKGRyYW1fYXhpX2F3YnVyc3QgWzJdKSwKICAgLlMwMl9BWElfQVdM
T0NLICAgKGRyYW1fYXhpX2F3bG9jayAgWzJdKSwKICAgLlMwMl9BWElfQVdD
QUNIRSAgKGRyYW1fYXhpX2F3Y2FjaGUgWzJdKSwKICAgLlMwMl9BWElfQVdQ
Uk9UICAgKGRyYW1fYXhpX2F3cHJvdCAgWzJdKSwKICAgLlMwMl9BWElfQVdR
T1MgICAgKGRyYW1fYXhpX2F3cW9zICAgWzJdKSwKICAgLlMwMl9BWElfQVdS
RUdJT04gKGRyYW1fYXhpX2F3cmVnaW9uWzJdKSwKICAgLlMwMl9BWElfQVdW
QUxJRCAgKGRyYW1fYXhpX2F3dmFsaWQgWzJdKSwKICAgLlMwMl9BWElfQVdS
RUFEWSAgKGRyYW1fYXhpX2F3cmVhZHkgWzJdKSwKICAgLlMwMl9BWElfV0RB
VEEgICAgKGRyYW1fYXhpX3dkYXRhICAgWzJdKSwKICAgLlMwMl9BWElfV1NU
UkIgICAgKGRyYW1fYXhpX3dzdHJiICAgWzJdKSwKICAgLlMwMl9BWElfV0xB
U1QgICAgKGRyYW1fYXhpX3dsYXN0ICAgWzJdKSwKICAgLlMwMl9BWElfV1ZB
TElEICAgKGRyYW1fYXhpX3d2YWxpZCAgWzJdKSwKICAgLlMwMl9BWElfV1JF
QURZICAgKGRyYW1fYXhpX3dyZWFkeSAgWzJdKSwKICAgLlMwMl9BWElfQklE
ICAgICAgKGRyYW1fYXhpX2JpZCAgICAgWzJdKSwKICAgLlMwMl9BWElfQlJF
U1AgICAgKGRyYW1fYXhpX2JyZXNwICAgWzJdKSwKICAgLlMwMl9BWElfQlZB
TElEICAgKGRyYW1fYXhpX2J2YWxpZCAgWzJdKSwKICAgLlMwMl9BWElfQlJF
QURZICAgKGRyYW1fYXhpX2JyZWFkeSAgWzJdKSwKICAgLlMwMl9BWElfQVJJ
RCAgICAgKGRyYW1fYXhpX2FyaWQgICAgWzJdKSwKICAgLlMwMl9BWElfQVJB
RERSICAgKHsxJ2IwLCBkcmFtX2F4aV9hcmFkZHJbMl19KSwKICAgLlMwMl9B
WElfQVJMRU4gICAgKGRyYW1fYXhpX2FybGVuICAgWzJdKSwKICAgLlMwMl9B
WElfQVJTSVpFICAgKGRyYW1fYXhpX2Fyc2l6ZSAgWzJdKSwKICAgLlMwMl9B
WElfQVJCVVJTVCAgKGRyYW1fYXhpX2FyYnVyc3QgWzJdKSwKICAgLlMwMl9B
WElfQVJMT0NLICAgKGRyYW1fYXhpX2FybG9jayAgWzJdKSwKICAgLlMwMl9B
WElfQVJDQUNIRSAgKGRyYW1fYXhpX2FyY2FjaGUgWzJdKSwKICAgLlMwMl9B
WElfQVJQUk9UICAgKGRyYW1fYXhpX2FycHJvdCAgWzJdKSwKICAgLlMwMl9B
WElfQVJRT1MgICAgKGRyYW1fYXhpX2FycW9zICAgWzJdKSwKICAgLlMwMl9B
WElfQVJSRUdJT04gKGRyYW1fYXhpX2FycmVnaW9uWzJdKSwKICAgLlMwMl9B
WElfQVJWQUxJRCAgKGRyYW1fYXhpX2FydmFsaWQgWzJdKSwKICAgLlMwMl9B
WElfQVJSRUFEWSAgKGRyYW1fYXhpX2FycmVhZHkgWzJdKSwKICAgLlMwMl9B
WElfUklEICAgICAgKGRyYW1fYXhpX3JpZCAgICAgWzJdKSwKICAgLlMwMl9B
WElfUkRBVEEgICAgKGRyYW1fYXhpX3JkYXRhICAgWzJdKSwKICAgLlMwMl9B
WElfUlJFU1AgICAgKGRyYW1fYXhpX3JyZXNwICAgWzJdKSwKICAgLlMwMl9B
WElfUkxBU1QgICAgKGRyYW1fYXhpX3JsYXN0ICAgWzJdKSwKICAgLlMwMl9B
WElfUlZBTElEICAgKGRyYW1fYXhpX3J2YWxpZCAgWzJdKSwKICAgLlMwMl9B
WElfUlJFQURZICAgKGRyYW1fYXhpX3JyZWFkeSAgWzJdKSwKICAgLy8KICAg
LlMwM19BWElfQUNMSyAgICAgKGRkcjNfZG1hX2NsayAgICAgICAgKSwKICAg
LlMwM19BWElfQVJFU0VUTiAgKH5kZHIzX2RtYV9yc3QgICAgICAgKSwKICAg
LlMwM19BWElfQVdJRCAgICAgKGRyYW1fYXhpX2F3aWQgICAgWzNdKSwKICAg
LlMwM19BWElfQVdBRERSICAgKHsxJ2IwLCBkcmFtX2F4aV9hd2FkZHJbM119
KSwKICAgLlMwM19BWElfQVdMRU4gICAgKGRyYW1fYXhpX2F3bGVuICAgWzNd
KSwKICAgLlMwM19BWElfQVdTSVpFICAgKGRyYW1fYXhpX2F3c2l6ZSAgWzNd
KSwKICAgLlMwM19BWElfQVdCVVJTVCAgKGRyYW1fYXhpX2F3YnVyc3QgWzNd
KSwKICAgLlMwM19BWElfQVdMT0NLICAgKGRyYW1fYXhpX2F3bG9jayAgWzNd
KSwKICAgLlMwM19BWElfQVdDQUNIRSAgKGRyYW1fYXhpX2F3Y2FjaGUgWzNd
KSwKICAgLlMwM19BWElfQVdQUk9UICAgKGRyYW1fYXhpX2F3cHJvdCAgWzNd
KSwKICAgLlMwM19BWElfQVdRT1MgICAgKGRyYW1fYXhpX2F3cW9zICAgWzNd
KSwKICAgLlMwM19BWElfQVdSRUdJT04gKGRyYW1fYXhpX2F3cmVnaW9uWzNd
KSwKICAgLlMwM19BWElfQVdWQUxJRCAgKGRyYW1fYXhpX2F3dmFsaWQgWzNd
KSwKICAgLlMwM19BWElfQVdSRUFEWSAgKGRyYW1fYXhpX2F3cmVhZHkgWzNd
KSwKICAgLlMwM19BWElfV0RBVEEgICAgKGRyYW1fYXhpX3dkYXRhICAgWzNd
KSwKICAgLlMwM19BWElfV1NUUkIgICAgKGRyYW1fYXhpX3dzdHJiICAgWzNd
KSwKICAgLlMwM19BWElfV0xBU1QgICAgKGRyYW1fYXhpX3dsYXN0ICAgWzNd
KSwKICAgLlMwM19BWElfV1ZBTElEICAgKGRyYW1fYXhpX3d2YWxpZCAgWzNd
KSwKICAgLlMwM19BWElfV1JFQURZICAgKGRyYW1fYXhpX3dyZWFkeSAgWzNd
KSwKICAgLlMwM19BWElfQklEICAgICAgKGRyYW1fYXhpX2JpZCAgICAgWzNd
KSwKICAgLlMwM19BWElfQlJFU1AgICAgKGRyYW1fYXhpX2JyZXNwICAgWzNd
KSwKICAgLlMwM19BWElfQlZBTElEICAgKGRyYW1fYXhpX2J2YWxpZCAgWzNd
KSwKICAgLlMwM19BWElfQlJFQURZICAgKGRyYW1fYXhpX2JyZWFkeSAgWzNd
KSwKICAgLlMwM19BWElfQVJJRCAgICAgKGRyYW1fYXhpX2FyaWQgICAgWzNd
KSwKICAgLlMwM19BWElfQVJBRERSICAgKHsxJ2IwLCBkcmFtX2F4aV9hcmFk
ZHJbM119KSwKICAgLlMwM19BWElfQVJMRU4gICAgKGRyYW1fYXhpX2FybGVu
ICAgWzNdKSwKICAgLlMwM19BWElfQVJTSVpFICAgKGRyYW1fYXhpX2Fyc2l6
ZSAgWzNdKSwKICAgLlMwM19BWElfQVJCVVJTVCAgKGRyYW1fYXhpX2FyYnVy
c3QgWzNdKSwKICAgLlMwM19BWElfQVJMT0NLICAgKGRyYW1fYXhpX2FybG9j
ayAgWzNdKSwKICAgLlMwM19BWElfQVJDQUNIRSAgKGRyYW1fYXhpX2FyY2Fj
aGUgWzNdKSwKICAgLlMwM19BWElfQVJQUk9UICAgKGRyYW1fYXhpX2FycHJv
dCAgWzNdKSwKICAgLlMwM19BWElfQVJRT1MgICAgKGRyYW1fYXhpX2FycW9z
ICAgWzNdKSwKICAgLlMwM19BWElfQVJSRUdJT04gKGRyYW1fYXhpX2FycmVn
aW9uWzNdKSwKICAgLlMwM19BWElfQVJWQUxJRCAgKGRyYW1fYXhpX2FydmFs
aWQgWzNdKSwKICAgLlMwM19BWElfQVJSRUFEWSAgKGRyYW1fYXhpX2FycmVh
ZHkgWzNdKSwKICAgLlMwM19BWElfUklEICAgICAgKGRyYW1fYXhpX3JpZCAg
ICAgWzNdKSwKICAgLlMwM19BWElfUkRBVEEgICAgKGRyYW1fYXhpX3JkYXRh
ICAgWzNdKSwKICAgLlMwM19BWElfUlJFU1AgICAgKGRyYW1fYXhpX3JyZXNw
ICAgWzNdKSwKICAgLlMwM19BWElfUkxBU1QgICAgKGRyYW1fYXhpX3JsYXN0
ICAgWzNdKSwKICAgLlMwM19BWElfUlZBTElEICAgKGRyYW1fYXhpX3J2YWxp
ZCAgWzNdKSwKICAgLlMwM19BWElfUlJFQURZICAgKGRyYW1fYXhpX3JyZWFk
eSAgWzNdKSwKICAgIC8vCiAgICAuTTAwX0FYSV9BQ0xLICAgICAoZGRyM19h
eGlfY2xrICAgICAgICApLAogICAgLk0wMF9BWElfQVJFU0VUTiAgKH5kZHIz
X2F4aV9yc3QgICAgICAgKSwKICAgIC5NMDBfQVhJX0FXSUQgICAgIChkZHIz
X2F4aV9hd2lkICAgICAgICksCiAgICAuTTAwX0FYSV9BV0FERFIgICAoZGRy
M19heGlfYXdhZGRyICAgICApLAogICAgLk0wMF9BWElfQVdMRU4gICAgKGRk
cjNfYXhpX2F3bGVuICAgICAgKSwKICAgIC5NMDBfQVhJX0FXU0laRSAgIChk
ZHIzX2F4aV9hd3NpemUgICAgICksCiAgICAuTTAwX0FYSV9BV0JVUlNUICAo
ZGRyM19heGlfYXdidXJzdCAgICApLAogICAgLk0wMF9BWElfQVdMT0NLICAg
KGRkcjNfYXhpX2F3bG9jayAgICAgKSwKICAgIC5NMDBfQVhJX0FXQ0FDSEUg
IChkZHIzX2F4aV9hd2NhY2hlICAgICksCiAgICAuTTAwX0FYSV9BV1BST1Qg
ICAoZGRyM19heGlfYXdwcm90ICAgICApLAogICAgLk0wMF9BWElfQVdRT1Mg
ICAgKGRkcjNfYXhpX2F3cW9zICAgICAgKSwKICAgIC5NMDBfQVhJX0FXUkVH
SU9OICggICAgICAgICAgICAgICAgICAgICksCiAgICAuTTAwX0FYSV9BV1ZB
TElEICAoZGRyM19heGlfYXd2YWxpZCAgICApLAogICAgLk0wMF9BWElfQVdS
RUFEWSAgKGRkcjNfYXhpX2F3cmVhZHkgICAgKSwKICAgIC5NMDBfQVhJX1dE
QVRBICAgIChkZHIzX2F4aV93ZGF0YSAgICAgICksCiAgICAuTTAwX0FYSV9X
U1RSQiAgICAoZGRyM19heGlfd3N0cmIgICAgICApLAogICAgLk0wMF9BWElf
V0xBU1QgICAgKGRkcjNfYXhpX3dsYXN0ICAgICAgKSwKICAgIC5NMDBfQVhJ
X1dWQUxJRCAgIChkZHIzX2F4aV93dmFsaWQgICAgICksCiAgICAuTTAwX0FY
SV9XUkVBRFkgICAoZGRyM19heGlfd3JlYWR5ICAgICApLAogICAgLk0wMF9B
WElfQklEICAgICAgKGRkcjNfYXhpX2JpZCAgICAgICAgKSwKICAgIC5NMDBf
QVhJX0JSRVNQICAgIChkZHIzX2F4aV9icmVzcCAgICAgICksCiAgICAuTTAw
X0FYSV9CVkFMSUQgICAoZGRyM19heGlfYnZhbGlkICAgICApLAogICAgLk0w
MF9BWElfQlJFQURZICAgKGRkcjNfYXhpX2JyZWFkeSAgICAgKSwKICAgIC5N
MDBfQVhJX0FSSUQgICAgIChkZHIzX2F4aV9hcmlkICAgICAgICksCiAgICAu
TTAwX0FYSV9BUkFERFIgICAoZGRyM19heGlfYXJhZGRyICAgICApLAogICAg
Lk0wMF9BWElfQVJMRU4gICAgKGRkcjNfYXhpX2FybGVuICAgICAgKSwKICAg
IC5NMDBfQVhJX0FSU0laRSAgIChkZHIzX2F4aV9hcnNpemUgICAgICksCiAg
ICAuTTAwX0FYSV9BUkJVUlNUICAoZGRyM19heGlfYXJidXJzdCAgICApLAog
ICAgLk0wMF9BWElfQVJMT0NLICAgKGRkcjNfYXhpX2FybG9jayAgICAgKSwK
ICAgIC5NMDBfQVhJX0FSQ0FDSEUgIChkZHIzX2F4aV9hcmNhY2hlICAgICks
CiAgICAuTTAwX0FYSV9BUlBST1QgICAoZGRyM19heGlfYXJwcm90ICAgICAp
LAogICAgLk0wMF9BWElfQVJRT1MgICAgKGRkcjNfYXhpX2FycW9zICAgICAg
KSwKICAgIC5NMDBfQVhJX0FSUkVHSU9OICggICAgICAgICAgICAgICAgICAg
ICksCiAgICAuTTAwX0FYSV9BUlZBTElEICAoZGRyM19heGlfYXJ2YWxpZCAg
ICApLAogICAgLk0wMF9BWElfQVJSRUFEWSAgKGRkcjNfYXhpX2FycmVhZHkg
ICAgKSwKICAgIC5NMDBfQVhJX1JJRCAgICAgIChkZHIzX2F4aV9yaWQgICAg
ICAgICksCiAgICAuTTAwX0FYSV9SREFUQSAgICAoZGRyM19heGlfcmRhdGEg
ICAgICApLAogICAgLk0wMF9BWElfUlJFU1AgICAgKGRkcjNfYXhpX3JyZXNw
ICAgICAgKSwKICAgIC5NMDBfQVhJX1JMQVNUICAgIChkZHIzX2F4aV9ybGFz
dCAgICAgICksCiAgICAuTTAwX0FYSV9SVkFMSUQgICAoZGRyM19heGlfcnZh
bGlkICAgICApLAogICAgLk0wMF9BWElfUlJFQURZICAgKGRkcjNfYXhpX3Jy
ZWFkeSAgICAgKQogICk7CgoKICAvLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLwogIC8vCiAgLy8gUmFkaW8gRGF1Z2h0ZXIgYm9hcmQgYW5kIEZy
b250IEVuZCBDb250cm9sCiAgLy8KICAvLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLwoKICAvLyBSYWRpbyBEYXVnaHRlciBib2FyZCBHUElPCiAg
d2lyZSBbREJfR1BJT19XSURUSC0xOjBdIGRiX2dwaW9faW5bMDpOVU1fQ0hB
Tk5FTFMtMV07CiAgd2lyZSBbREJfR1BJT19XSURUSC0xOjBdIGRiX2dwaW9f
b3V0WzA6TlVNX0NIQU5ORUxTLTFdOwogIHdpcmUgW0RCX0dQSU9fV0lEVEgt
MTowXSBkYl9ncGlvX2RkclswOk5VTV9DSEFOTkVMUy0xXTsKICB3aXJlIFtE
Ql9HUElPX1dJRFRILTE6MF0gZGJfZ3Bpb19mYWJbMDpOVU1fQ0hBTk5FTFMt
MV07CiAgd2lyZSBbMzE6MF0gcmFkaW9fZ3Bpb19vdXRbMDpOVU1fQ0hBTk5F
TFMtMV07CiAgd2lyZSBbMzE6MF0gcmFkaW9fZ3Bpb19kZHJbMDpOVU1fQ0hB
Tk5FTFMtMV07CiAgd2lyZSBbMzE6MF0gcmFkaW9fZ3Bpb19pblswOk5VTV9D
SEFOTkVMUy0xXTsKICB3aXJlIFszMTowXSBsZWRzWzA6TlVNX0NIQU5ORUxT
LTFdOwoKICAvLyBEYXVnaHRlciBib2FyZCBJL08KICB3aXJlICAgICAgICBy
eF9ydW5uaW5nWzA6TlVNX0NIQU5ORUxTLTFdLCB0eF9ydW5uaW5nWzA6TlVN
X0NIQU5ORUxTLTFdOwogIHdpcmUgWzMxOjBdIHJ4X2ludFswOk5VTV9DSEFO
TkVMUy0xXSwgcnhfZGF0YVswOk5VTV9DSEFOTkVMUy0xXSwgdHhfaW50WzA6
TlVNX0NIQU5ORUxTLTFdLCB0eF9kYXRhWzA6TlVNX0NIQU5ORUxTLTFdOwog
IC8vd2lyZSAgICAgICAgcnhfc3RiWzA6TlVNX0NIQU5ORUxTLTFdLCB0eF9z
dGJbMDpOVU1fQ0hBTk5FTFMtMV07CiAgd2lyZSAgICAgICAgZGJfZmVfc2V0
X3N0YlswOk5VTV9DSEFOTkVMUy0xXTsKICB3aXJlIFs3OjBdICBkYl9mZV9z
ZXRfYWRkclswOk5VTV9DSEFOTkVMUy0xXTsKICB3aXJlIFszMTowXSBkYl9m
ZV9zZXRfZGF0YVswOk5VTV9DSEFOTkVMUy0xXTsKICB3aXJlICAgICAgICBk
Yl9mZV9yYl9zdGJbMDpOVU1fQ0hBTk5FTFMtMV07CiAgd2lyZSBbNzowXSAg
ZGJfZmVfcmJfYWRkclswOk5VTV9DSEFOTkVMUy0xXTsKICB3aXJlIFs2Mzow
XSBkYl9mZV9yYl9kYXRhWzA6TlVNX0NIQU5ORUxTLTFdOwoKICB3aXJlIFtO
VU1fUkFESU9TLTE6MF0gc3luY19vdXQ7CgogIGdlbnZhciBpOwogIGdlbmVy
YXRlCiAgICBmb3IgKGkgPSAwOyBpIDwgTlVNX0NIQU5ORUxTOyBpID0gaSAr
IDEpIGJlZ2luCiAgICAgIGFzc2lnbiByeF9hdHJbaV0gPSByeF9ydW5uaW5n
W2ldOwogICAgICBhc3NpZ24gdHhfYXRyW2ldID0gdHhfcnVubmluZ1tpXTsK
ICAgIGVuZAogIGVuZGdlbmVyYXRlCgoKICAvLy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQogIC8vIERhdWdodGVyYm9hcmQgQ29udHJv
bAogIC8vIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgog
IGxvY2FscGFyYW0gWzc6MF0gU1JfREJfQkFTRSA9IDgnZDE2MDsKICBsb2Nh
bHBhcmFtIFs3OjBdIFJCX0RCX0JBU0UgPSA4J2QxNjsKCiAgZ2VuZXJhdGUK
ICAgIGZvciAoaSA9IDA7IGkgPCBOVU1fQ0hBTk5FTFM7IGkgPSBpICsgMSkg
YmVnaW46IGdlbl9kYl9jb250cm9sCiAgICAgIGRiX2NvbnRyb2wgIygKICAg
ICAgICAuVVNFX1NQSV9DTEsoMCksCiAgICAgICAgLlNSX0JBU0UoU1JfREJf
QkFTRSksCiAgICAgICAgLlJCX0JBU0UoUkJfREJfQkFTRSkKICAgICAgKSBk
Yl9jb250cm9sX2kgKAogICAgICAgIC5jbGsocmFkaW9fY2xrKSwgLnJlc2V0
KHJhZGlvX3JzdCksCiAgICAgICAgLnNldF9zdGIoZGJfZmVfc2V0X3N0Yltp
XSksIC5zZXRfYWRkcihkYl9mZV9zZXRfYWRkcltpXSksIC5zZXRfZGF0YShk
Yl9mZV9zZXRfZGF0YVtpXSksCiAgICAgICAgLnJiX3N0YihkYl9mZV9yYl9z
dGJbaV0pLCAucmJfYWRkcihkYl9mZV9yYl9hZGRyW2ldKSwgLnJiX2RhdGEo
ZGJfZmVfcmJfZGF0YVtpXSksCiAgICAgICAgLnJ1bl9yeChyeF9ydW5uaW5n
W2ldKSwgLnJ1bl90eCh0eF9ydW5uaW5nW2ldKSwKICAgICAgICAubWlzY19p
bnMoMzInaDApLCAubWlzY19vdXRzKCksCiAgICAgICAgLmZwX2dwaW9faW4o
cmFkaW9fZ3Bpb19pbltpXSksIC5mcF9ncGlvX291dChyYWRpb19ncGlvX291
dFtpXSksIC5mcF9ncGlvX2RkcihyYWRpb19ncGlvX2RkcltpXSksIC5mcF9n
cGlvX2ZhYigzMidoMCksCiAgICAgICAgLmRiX2dwaW9faW4oZGJfZ3Bpb19p
bltpXSksIC5kYl9ncGlvX291dChkYl9ncGlvX291dFtpXSksIC5kYl9ncGlv
X2RkcihkYl9ncGlvX2RkcltpXSksIC5kYl9ncGlvX2ZhYigpLAogICAgICAg
IC5sZWRzKGxlZHNbaV0pLAogICAgICAgIC5zcGlfY2xrKDEnYjApLCAuc3Bp
X3JzdCgxJ2IwKSwgLnNlbigpLCAuc2NsaygpLCAubW9zaSgpLCAubWlzbygx
J2IwKQogICAgICApOwogICAgZW5kCiAgZW5kZ2VuZXJhdGUKCiAgZ2VuZXJh
dGUKICAgIGZvciAoaSA9IDA7IGkgPCBOVU1fQ0hBTk5FTFM7IGkgPSBpICsg
MSkgYmVnaW46IGdlbl9ncGlvX2NvbnRyb2wKICAgICAgLy8gUmFkaW8gRGF0
YQogICAgICBhc3NpZ24gcnhfZGF0YVtpXSA9IHJ4WzMyKmkrMzE6MzIqaV07
CiAgICAgIGFzc2lnbiB0eFszMippKzMxOjMyKmldID0gdHhfZGF0YVtpXTsK
ICAgICAgLy8gR1BJTwogICAgICBhc3NpZ24gZGJfZ3Bpb19vdXRfZmxhdFtE
Ql9HUElPX1dJRFRIKmkgKzogREJfR1BJT19XSURUSF0gPSBkYl9ncGlvX291
dFtpXTsKICAgICAgYXNzaWduIGRiX2dwaW9fZGRyX2ZsYXRbREJfR1BJT19X
SURUSCppICs6IERCX0dQSU9fV0lEVEhdID0gZGJfZ3Bpb19kZHJbaV07CiAg
ICAgIGFzc2lnbiBkYl9ncGlvX2luW2ldID0gZGJfZ3Bpb19pbl9mbGF0W0RC
X0dQSU9fV0lEVEgqaSArOiBEQl9HUElPX1dJRFRIXTsKICAgICAgYXNzaWdu
IGRiX2dwaW9fZmFiW2ldID0gZGJfZ3Bpb19mYWJfZmxhdFtEQl9HUElPX1dJ
RFRIKmkgKzogREJfR1BJT19XSURUSF07CiAgICAgIC8vIExFRHMKICAgICAg
YXNzaWduIGxlZHNfZmxhdFszMippKzMxOjMyKmldID0gbGVkc1tpXTsKICAg
IGVuZAogIGVuZGdlbmVyYXRlCgogIC8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vCiAgLy8KICAvLyBGcm9udC1wYW5lbCBHUElPCiAgLy8KICAv
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLwoKICB3aXJlIFtGUF9H
UElPX1dJRFRILTE6MF0gcmFkaW9fZ3Bpb19pbl9zeW5jOwogIHdpcmUgW0ZQ
X0dQSU9fV0lEVEgtMTowXSByYWRpb19ncGlvX3NyY19vdXQ7CiAgcmVnICBb
RlBfR1BJT19XSURUSC0xOjBdIHJhZGlvX2dwaW9fc3JjX291dF9yZWc7CiAg
d2lyZSBbRlBfR1BJT19XSURUSC0xOjBdIHJhZGlvX2dwaW9fc3JjX2RkcjsK
ICByZWcgIFtGUF9HUElPX1dJRFRILTE6MF0gcmFkaW9fZ3Bpb19zcmNfZGRy
X3JlZyA9IH4wOwoKICAvLyBEb3VibGUtc3luY2hyb25pemUgdGhlIGlucHV0
cyB0byB0aGUgUFMKICBzeW5jaHJvbml6ZXIgIygKICAgIC5JTklUSUFMX1ZB
TCgxJ2IwKSwgLldJRFRIKEZQX0dQSU9fV0lEVEgpCiAgICApIHBzX2dwaW9f
aW5fc3luY19pICgKICAgIC5jbGsoYnVzX2NsayksIC5yc3QoMSdiMCksIC5p
bihmcF9ncGlvX2luKSwgLm91dChwc19ncGlvX2luKQogICk7CgogIC8vIERv
dWJsZS1zeW5jaHJvbml6ZSB0aGUgaW5wdXRzIHRvIHRoZSByYWRpbwogIHN5
bmNocm9uaXplciAjKAogICAgLklOSVRJQUxfVkFMKDEnYjApLCAuV0lEVEgo
RlBfR1BJT19XSURUSCkKICAgICkgcmFkaW9fZ3Bpb19pbl9zeW5jX2kgKAog
ICAgLmNsayhyYWRpb19jbGspLCAucnN0KDEnYjApLCAuaW4oZnBfZ3Bpb19p
biksIC5vdXQocmFkaW9fZ3Bpb19pbl9zeW5jKQogICk7CgogIC8vIE1hcCB0
aGUgZG91YmxlLXN5bmNocm9uaXplZCBpbnB1dHMgdG8gYWxsIHJhZGlvIGNo
YW5uZWxzCiAgZ2VuZXJhdGUKICAgIGZvciAoaT0wOyBpPE5VTV9DSEFOTkVM
UzsgaT1pKzEpIGJlZ2luOiBnZW5fZnBfZ3Bpb19pbl9zeW5jCiAgICAgIGFz
c2lnbiByYWRpb19ncGlvX2luW2ldW0ZQX0dQSU9fV0lEVEgtMTowXSA9IHJh
ZGlvX2dwaW9faW5fc3luYzsKICAgIGVuZAogIGVuZGdlbmVyYXRlCgogIC8v
IEZvciBlYWNoIG9mIHRoZSBGUCBHUElPIGJpdHMsIGltcGxlbWVudCBmb3Vy
IGNvbnRyb2wgbXV4ZXMKICBnZW5lcmF0ZQogICAgZm9yIChpPTA7IGk8RlBf
R1BJT19XSURUSDsgaT1pKzEpIGJlZ2luOiBncGlvX211eGluZ19nZW4KCiAg
ICAgIC8vIDEpIFNlbGVjdCB3aGljaCByYWRpbyBkcml2ZXMgdGhlIG91dHB1
dAogICAgICBhc3NpZ24gcmFkaW9fZ3Bpb19zcmNfb3V0W2ldID0gcmFkaW9f
Z3Bpb19vdXRbZnBfZ3Bpb19zcmNfcmVnWzIqaSsxOjIqaV1dW2ldOwogICAg
ICBhbHdheXMgQCAocG9zZWRnZSByYWRpb19jbGspIGJlZ2luCiAgICAgICAg
aWYgKHJhZGlvX3JzdCkgYmVnaW4KICAgICAgICAgIHJhZGlvX2dwaW9fc3Jj
X291dF9yZWcgPD0gMDsKICAgICAgICBlbmQgZWxzZSBiZWdpbgogICAgICAg
ICAgcmFkaW9fZ3Bpb19zcmNfb3V0X3JlZyA8PSByYWRpb19ncGlvX3NyY19v
dXQ7CiAgICAgICAgZW5kCiAgICAgIGVuZAoKICAgICAgLy8gMikgU2VsZWN0
IHdoaWNoIHJhZGlvIGRyaXZlcyB0aGUgZGlyZWN0aW9uCiAgICAgIGFzc2ln
biByYWRpb19ncGlvX3NyY19kZHJbaV0gPSByYWRpb19ncGlvX2RkcltmcF9n
cGlvX3NyY19yZWdbMippKzE6MippXV1baV07CiAgICAgIGFsd2F5cyBAIChw
b3NlZGdlIHJhZGlvX2NsaykgYmVnaW4KICAgICAgICBpZiAocmFkaW9fcnN0
KSBiZWdpbgogICAgICAgICAgcmFkaW9fZ3Bpb19zcmNfZGRyX3JlZyA8PSB+
MDsKICAgICAgICBlbmQgZWxzZSBiZWdpbgogICAgICAgICAgcmFkaW9fZ3Bp
b19zcmNfZGRyX3JlZyA8PSByYWRpb19ncGlvX3NyY19kZHI7CiAgICAgICAg
ZW5kCiAgICAgIGVuZAoKICAgICAgLy8gMykgU2VsZWN0IGlmIHRoZSByYWRp
byBvciB0aGUgcHMgZHJpdmVzIHRoZSBvdXRwdXQKICAgICAgLy8KICAgICAg
Ly8gVGhlIGZvbGxvd2luZyBpbXBsZW1lbnRzIGEgMjoxIG11eCBpbiBhIExV
VCBleHBsaWNpdGx5IHRvIGF2b2lkCiAgICAgIC8vIGdsaXRjaGVzIHRoYXQg
Y2FuIGJlIGludHJvZHVjZWQgYnkgdW5leHBlY3RlZCBWaXZhZG8gc3ludGhl
c2lzLgogICAgICAvLwogICAgICAoKiBkb250X3RvdWNoID0gIlRSVUUiICop
IExVVDMgIygKICAgICAgICAuSU5JVCg4J2hDQSkgLy8gU3BlY2lmeSBMVVQg
Q29udGVudHMuIE8gPSB+STImSTAgfCBJMiZJMQogICAgICApIG11eF9vdXRf
aSAoCiAgICAgICAgLk8oZnBfZ3Bpb19vdXRbaV0pLCAgICAgICAgICAgICAv
LyBMVVQgZ2VuZXJhbCBvdXRwdXQuIE11eCBvdXRwdXQKICAgICAgICAuSTAo
cmFkaW9fZ3Bpb19zcmNfb3V0X3JlZ1tpXSksIC8vIExVVCBpbnB1dC4gSW5w
dXQgMQogICAgICAgIC5JMShwc19ncGlvX291dFtpXSksICAgICAgICAgICAg
Ly8gTFVUIGlucHV0LiBJbnB1dCAyCiAgICAgICAgLkkyKGZwX2dwaW9fbWFz
dGVyX3JlZ1tpXSkgICAgICAvLyBMVVQgaW5wdXQuIFNlbGVjdCBiaXQKICAg
ICAgKTsKCiAgICAgIC8vIDQpIFNlbGVjdCBpZiB0aGUgcmFkaW8gb3IgdGhl
IFBTIGRyaXZlcyB0aGUgZGlyZWN0aW9uCiAgICAgIC8vCiAgICAgICgqIGRv
bnRfdG91Y2ggPSAiVFJVRSIgKikgTFVUMyAjKAogICAgICAgIC5JTklUKDgn
aEM1KSAvLyBTcGVjaWZ5IExVVCBDb250ZW50cy4gTyA9IH5JMiZJMCB8IEky
Jn5JMQogICAgICApIG11eF9kZHJfaSAoCiAgICAgICAgLk8oZnBfZ3Bpb190
cmlbaV0pLCAgICAgICAgICAgICAvLyBMVVQgZ2VuZXJhbCBvdXRwdXQuIE11
eCBvdXRwdXQKICAgICAgICAuSTAocmFkaW9fZ3Bpb19zcmNfZGRyX3JlZ1tp
XSksIC8vIExVVCBpbnB1dC4gSW5wdXQgMQogICAgICAgIC5JMShwc19ncGlv
X3RyaVtpXSksICAgICAgICAgICAgLy8gTFVUIGlucHV0LiBJbnB1dCAyCiAg
ICAgICAgLkkyKGZwX2dwaW9fbWFzdGVyX3JlZ1tpXSkgICAgICAvLyBMVVQg
aW5wdXQuIFNlbGVjdCBiaXQKICAgICAgKTsKCiAgICBlbmQKICBlbmRnZW5l
cmF0ZQoKCiAgLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8KICAv
LwogIC8vIFRpbWVrZWVwZXIKICAvLwogIC8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vCgogIHdpcmUgWzYzOjBdIHJhZGlvX3RpbWU7CgogIHRp
bWVrZWVwZXIgIygKICAgLkJBU0VfQUREUiAgICAgICgwKSwgICAgICAvLyBj
dHJscG9ydF9kZWNvZGVyIHJlbW92ZXMgdGhlIGJhc2Ugb2Zmc2V0CiAgIC5U
SU1FX0lOQ1JFTUVOVCAoMSdiMSkKICApIHRpbWVrZWVwZXJfaSAoCiAgIC50
Yl9jbGsgICAgICAgICAgICAgICAgKHJhZGlvX2NsayksCiAgIC50Yl9yc3Qg
ICAgICAgICAgICAgICAgKHJhZGlvX3JzdCksCiAgIC5zX2N0cmxwb3J0X2Ns
ayAgICAgICAgKGJ1c19jbGspLAogICAuc19jdHJscG9ydF9yZXFfd3IgICAg
IChjcF90a19yZXFfd3IpLAogICAuc19jdHJscG9ydF9yZXFfcmQgICAgIChj
cF90a19yZXFfcmQpLAogICAuc19jdHJscG9ydF9yZXFfYWRkciAgIChjcF90
a19yZXFfYWRkciksCiAgIC5zX2N0cmxwb3J0X3JlcV9kYXRhICAgKGNwX3Rr
X3JlcV9kYXRhKSwKICAgLnNfY3RybHBvcnRfcmVzcF9hY2sgICAoY3BfdGtf
cmVzcF9hY2spLAogICAuc19jdHJscG9ydF9yZXNwX2RhdGEgIChjcF90a19y
ZXNwX2RhdGEpLAogICAuc2FtcGxlX3J4X3N0YiAgICAgICAgIChyeF9zdGJb
MF0pLAogICAucHBzICAgICAgICAgICAgICAgICAgIChwcHNfcmFkaW9jbGsp
LAogICAudGJfdGltZXN0YW1wICAgICAgICAgIChyYWRpb190aW1lKSwKICAg
LnRiX3RpbWVzdGFtcF9sYXN0X3BwcyAoKSwKICAgLnRiX3BlcmlvZF9uc19x
MzIgICAgICAoKQogICk7CgoKICAvLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLwogIC8vCiAgLy8gUkZOb0MgSW1hZ2UgQ29yZQogIC8vCiAgLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8KCiAgLy8gVW51c2VkIG1l
bW9yeSBBWEkgcG9ydHMKICBmb3IgKGkgPSAwOyBpIDwgTlVNX0RSQU1fRklG
T1M7IGkgPSBpKzEpIGJlZ2luIDogZ2VuX3VudXNlZF9yYW1fc2lnbmFscwog
ICAgYXNzaWduIGRyYW1fYXhpX2J1c2VyW2ldID0gNCdiMDsKICAgIGFzc2ln
biBkcmFtX2F4aV9ydXNlcltpXSA9IDQnYjA7CiAgZW5kCgogIC8vIE1vZGlm
aWVkIGFsbCAubV9heGlfLi4uIGludGVyZmFjZSBieSBPZmVyIFNhZmVybWFu
IDExLjAyLjIwMjIgLSBUbyBmaXggNC1wb3J0IHJlcGxheSBidWcgLSBJbmNs
dWRlZCBlbnRyaWVzIGZvciBpbmRleGVzIFsyXSxbM10uCiAgcmZub2NfaW1h
Z2VfY29yZSAjKAogICAgLlBST1RPVkVSKFJGTk9DX1BST1RPVkVSKQogICkg
cmZub2Nfc2FuZGJveF9pICgKICAgIC5jaGRyX2FjbGsgICAgICAgICAgICAg
ICAoYnVzX2NsayAgICApLAogICAgLmN0cmxfYWNsayAgICAgICAgICAgICAg
IChjbGs0MCAgICAgICksCiAgICAuY29yZV9hcnN0ICAgICAgICAgICAgICAg
KGJ1c19yc3QgICAgKSwKICAgIC5kZXZpY2VfaWQgICAgICAgICAgICAgICAo
ZGV2aWNlX2lkICApLAogICAgLnJhZGlvX2NsayAgICAgICAgICAgICAgIChy
YWRpb19jbGsgICksCiAgICAuZHJhbV9jbGsgICAgICAgICAgICAgICAgKGRk
cjNfZG1hX2NsayksCiAgICAubV9jdHJscG9ydF9yZXFfd3IgICAgICAgKG1f
Y3RybHBvcnRfcmVxX3dyICAgICAgKSwKICAgIC5tX2N0cmxwb3J0X3JlcV9y
ZCAgICAgICAobV9jdHJscG9ydF9yZXFfcmQgICAgICApLAogICAgLm1fY3Ry
bHBvcnRfcmVxX2FkZHIgICAgIChtX2N0cmxwb3J0X3JlcV9hZGRyICAgICks
CiAgICAubV9jdHJscG9ydF9yZXFfZGF0YSAgICAgKG1fY3RybHBvcnRfcmVx
X2RhdGEgICAgKSwKICAgIC5tX2N0cmxwb3J0X3JlcV9ieXRlX2VuICAoKSwK
ICAgIC5tX2N0cmxwb3J0X3JlcV9oYXNfdGltZSAobV9jdHJscG9ydF9yZXFf
aGFzX3RpbWUpLAogICAgLm1fY3RybHBvcnRfcmVxX3RpbWUgICAgIChtX2N0
cmxwb3J0X3JlcV90aW1lICAgICksCiAgICAubV9jdHJscG9ydF9yZXNwX2Fj
ayAgICAgKG1fY3RybHBvcnRfcmVzcF9hY2sgICAgKSwKICAgIC5tX2N0cmxw
b3J0X3Jlc3Bfc3RhdHVzICAoMidiMCksCiAgICAubV9jdHJscG9ydF9yZXNw
X2RhdGEgICAgKG1fY3RybHBvcnRfcmVzcF9kYXRhICAgKSwKICAgIC5heGlf
cnN0ICAgICAgICAgICAgICAgICAoZGRyM19kbWFfcnN0KSwKICAgIC5tX2F4
aV9hd2lkICAgICAgICAgICAgICAoe2RyYW1fYXhpX2F3aWQgICAgWzNdLCBk
cmFtX2F4aV9hd2lkICAgIFsyXSwgZHJhbV9heGlfYXdpZCAgICBbMV0sIGRy
YW1fYXhpX2F3aWQgICAgWzBdfSksCiAgICAubV9heGlfYXdhZGRyICAgICAg
ICAgICAgKHtkcmFtX2F4aV9hd2FkZHIgIFszXSwgZHJhbV9heGlfYXdhZGRy
ICBbMl0sIGRyYW1fYXhpX2F3YWRkciAgWzFdLCBkcmFtX2F4aV9hd2FkZHIg
IFswXX0pLAogICAgLm1fYXhpX2F3bGVuICAgICAgICAgICAgICh7ZHJhbV9h
eGlfYXdsZW4gICBbM10sIGRyYW1fYXhpX2F3bGVuICAgWzJdLCBkcmFtX2F4
aV9hd2xlbiAgIFsxXSwgZHJhbV9heGlfYXdsZW4gICBbMF19KSwKICAgIC5t
X2F4aV9hd3NpemUgICAgICAgICAgICAoe2RyYW1fYXhpX2F3c2l6ZSAgWzNd
LCBkcmFtX2F4aV9hd3NpemUgIFsyXSwgZHJhbV9heGlfYXdzaXplICBbMV0s
IGRyYW1fYXhpX2F3c2l6ZSAgWzBdfSksCiAgICAubV9heGlfYXdidXJzdCAg
ICAgICAgICAgKHtkcmFtX2F4aV9hd2J1cnN0IFszXSwgZHJhbV9heGlfYXdi
dXJzdCBbMl0sIGRyYW1fYXhpX2F3YnVyc3QgWzFdLCBkcmFtX2F4aV9hd2J1
cnN0IFswXX0pLAogICAgLm1fYXhpX2F3bG9jayAgICAgICAgICAgICh7ZHJh
bV9heGlfYXdsb2NrICBbM10sIGRyYW1fYXhpX2F3bG9jayAgWzJdLCBkcmFt
X2F4aV9hd2xvY2sgIFsxXSwgZHJhbV9heGlfYXdsb2NrICBbMF19KSwKICAg
IC5tX2F4aV9hd2NhY2hlICAgICAgICAgICAoe2RyYW1fYXhpX2F3Y2FjaGUg
WzNdLCBkcmFtX2F4aV9hd2NhY2hlIFsyXSwgZHJhbV9heGlfYXdjYWNoZSBb
MV0sIGRyYW1fYXhpX2F3Y2FjaGUgWzBdfSksCiAgICAubV9heGlfYXdwcm90
ICAgICAgICAgICAgKHtkcmFtX2F4aV9hd3Byb3QgIFszXSwgZHJhbV9heGlf
YXdwcm90ICBbMl0sIGRyYW1fYXhpX2F3cHJvdCAgWzFdLCBkcmFtX2F4aV9h
d3Byb3QgIFswXX0pLAogICAgLm1fYXhpX2F3cW9zICAgICAgICAgICAgICh7
ZHJhbV9heGlfYXdxb3MgICBbM10sIGRyYW1fYXhpX2F3cW9zICAgWzJdLCBk
cmFtX2F4aV9hd3FvcyAgIFsxXSwgZHJhbV9heGlfYXdxb3MgICBbMF19KSwK
ICAgIC5tX2F4aV9hd3JlZ2lvbiAgICAgICAgICAoe2RyYW1fYXhpX2F3cmVn
aW9uWzNdLCBkcmFtX2F4aV9hd3JlZ2lvblsyXSwgZHJhbV9heGlfYXdyZWdp
b25bMV0sIGRyYW1fYXhpX2F3cmVnaW9uWzBdfSksCiAgICAubV9heGlfYXd1
c2VyICAgICAgICAgICAgKHtkcmFtX2F4aV9hd3VzZXIgIFszXSwgZHJhbV9h
eGlfYXd1c2VyICBbMl0sIGRyYW1fYXhpX2F3dXNlciAgWzFdLCBkcmFtX2F4
aV9hd3VzZXIgIFswXX0pLAogICAgLm1fYXhpX2F3dmFsaWQgICAgICAgICAg
ICh7ZHJhbV9heGlfYXd2YWxpZCBbM10sIGRyYW1fYXhpX2F3dmFsaWQgWzJd
LCBkcmFtX2F4aV9hd3ZhbGlkIFsxXSwgZHJhbV9heGlfYXd2YWxpZCBbMF19
KSwKICAgIC5tX2F4aV9hd3JlYWR5ICAgICAgICAgICAoe2RyYW1fYXhpX2F3
cmVhZHkgWzNdLCBkcmFtX2F4aV9hd3JlYWR5IFsyXSwgZHJhbV9heGlfYXdy
ZWFkeSBbMV0sIGRyYW1fYXhpX2F3cmVhZHkgWzBdfSksCiAgICAubV9heGlf
d2RhdGEgICAgICAgICAgICAgKHtkcmFtX2F4aV93ZGF0YSAgIFszXSwgZHJh
bV9heGlfd2RhdGEgICBbMl0sIGRyYW1fYXhpX3dkYXRhICAgWzFdLCBkcmFt
X2F4aV93ZGF0YSAgIFswXX0pLAogICAgLm1fYXhpX3dzdHJiICAgICAgICAg
ICAgICh7ZHJhbV9heGlfd3N0cmIgICBbM10sIGRyYW1fYXhpX3dzdHJiICAg
WzJdLCBkcmFtX2F4aV93c3RyYiAgIFsxXSwgZHJhbV9heGlfd3N0cmIgICBb
MF19KSwKICAgIC5tX2F4aV93bGFzdCAgICAgICAgICAgICAoe2RyYW1fYXhp
X3dsYXN0ICAgWzNdLCBkcmFtX2F4aV93bGFzdCAgIFsyXSwgZHJhbV9heGlf
d2xhc3QgICBbMV0sIGRyYW1fYXhpX3dsYXN0ICAgWzBdfSksCiAgICAubV9h
eGlfd3VzZXIgICAgICAgICAgICAgKHtkcmFtX2F4aV93dXNlciAgIFszXSwg
ZHJhbV9heGlfd3VzZXIgICBbMl0sIGRyYW1fYXhpX3d1c2VyICAgWzFdLCBk
cmFtX2F4aV93dXNlciAgIFswXX0pLAogICAgLm1fYXhpX3d2YWxpZCAgICAg
ICAgICAgICh7ZHJhbV9heGlfd3ZhbGlkICBbM10sIGRyYW1fYXhpX3d2YWxp
ZCAgWzJdLCBkcmFtX2F4aV93dmFsaWQgIFsxXSwgZHJhbV9heGlfd3ZhbGlk
ICBbMF19KSwKICAgIC5tX2F4aV93cmVhZHkgICAgICAgICAgICAoe2RyYW1f
YXhpX3dyZWFkeSAgWzNdLCBkcmFtX2F4aV93cmVhZHkgIFsyXSwgZHJhbV9h
eGlfd3JlYWR5ICBbMV0sIGRyYW1fYXhpX3dyZWFkeSAgWzBdfSksCiAgICAu
bV9heGlfYmlkICAgICAgICAgICAgICAgKHtkcmFtX2F4aV9iaWQgICAgIFsz
XSwgZHJhbV9heGlfYmlkICAgICBbMl0sIGRyYW1fYXhpX2JpZCAgICAgWzFd
LCBkcmFtX2F4aV9iaWQgICAgIFswXX0pLAogICAgLm1fYXhpX2JyZXNwICAg
ICAgICAgICAgICh7ZHJhbV9heGlfYnJlc3AgICBbM10sIGRyYW1fYXhpX2Jy
ZXNwICAgWzJdLCBkcmFtX2F4aV9icmVzcCAgIFsxXSwgZHJhbV9heGlfYnJl
c3AgICBbMF19KSwKICAgIC5tX2F4aV9idXNlciAgICAgICAgICAgICAoe2Ry
YW1fYXhpX2J1c2VyICAgWzNdLCBkcmFtX2F4aV9idXNlciAgIFsyXSwgZHJh
bV9heGlfYnVzZXIgICBbMV0sIGRyYW1fYXhpX2J1c2VyICAgWzBdfSksCiAg
ICAubV9heGlfYnZhbGlkICAgICAgICAgICAgKHtkcmFtX2F4aV9idmFsaWQg
IFszXSwgZHJhbV9heGlfYnZhbGlkICBbMl0sIGRyYW1fYXhpX2J2YWxpZCAg
WzFdLCBkcmFtX2F4aV9idmFsaWQgIFswXX0pLAogICAgLm1fYXhpX2JyZWFk
eSAgICAgICAgICAgICh7ZHJhbV9heGlfYnJlYWR5ICBbM10sIGRyYW1fYXhp
X2JyZWFkeSAgWzJdLCBkcmFtX2F4aV9icmVhZHkgIFsxXSwgZHJhbV9heGlf
YnJlYWR5ICBbMF19KSwKICAgIC5tX2F4aV9hcmlkICAgICAgICAgICAgICAo
e2RyYW1fYXhpX2FyaWQgICAgWzNdLCBkcmFtX2F4aV9hcmlkICAgIFsyXSwg
ZHJhbV9heGlfYXJpZCAgICBbMV0sIGRyYW1fYXhpX2FyaWQgICAgWzBdfSks
CiAgICAubV9heGlfYXJhZGRyICAgICAgICAgICAgKHtkcmFtX2F4aV9hcmFk
ZHIgIFszXSwgZHJhbV9heGlfYXJhZGRyICBbMl0sIGRyYW1fYXhpX2FyYWRk
ciAgWzFdLCBkcmFtX2F4aV9hcmFkZHIgIFswXX0pLAogICAgLm1fYXhpX2Fy
bGVuICAgICAgICAgICAgICh7ZHJhbV9heGlfYXJsZW4gICBbM10sIGRyYW1f
YXhpX2FybGVuICAgWzJdLCBkcmFtX2F4aV9hcmxlbiAgIFsxXSwgZHJhbV9h
eGlfYXJsZW4gICBbMF19KSwKICAgIC5tX2F4aV9hcnNpemUgICAgICAgICAg
ICAoe2RyYW1fYXhpX2Fyc2l6ZSAgWzNdLCBkcmFtX2F4aV9hcnNpemUgIFsy
XSwgZHJhbV9heGlfYXJzaXplICBbMV0sIGRyYW1fYXhpX2Fyc2l6ZSAgWzBd
fSksCiAgICAubV9heGlfYXJidXJzdCAgICAgICAgICAgKHtkcmFtX2F4aV9h
cmJ1cnN0IFszXSwgZHJhbV9heGlfYXJidXJzdCBbMl0sIGRyYW1fYXhpX2Fy
YnVyc3QgWzFdLCBkcmFtX2F4aV9hcmJ1cnN0IFswXX0pLAogICAgLm1fYXhp
X2FybG9jayAgICAgICAgICAgICh7ZHJhbV9heGlfYXJsb2NrICBbM10sIGRy
YW1fYXhpX2FybG9jayAgWzJdLCBkcmFtX2F4aV9hcmxvY2sgIFsxXSwgZHJh
bV9heGlfYXJsb2NrICBbMF19KSwKICAgIC5tX2F4aV9hcmNhY2hlICAgICAg
ICAgICAoe2RyYW1fYXhpX2FyY2FjaGUgWzNdLCBkcmFtX2F4aV9hcmNhY2hl
IFsyXSwgZHJhbV9heGlfYXJjYWNoZSBbMV0sIGRyYW1fYXhpX2FyY2FjaGUg
WzBdfSksCiAgICAubV9heGlfYXJwcm90ICAgICAgICAgICAgKHtkcmFtX2F4
aV9hcnByb3QgIFszXSwgZHJhbV9heGlfYXJwcm90ICBbMl0sIGRyYW1fYXhp
X2FycHJvdCAgWzFdLCBkcmFtX2F4aV9hcnByb3QgIFswXX0pLAogICAgLm1f
YXhpX2FycW9zICAgICAgICAgICAgICh7ZHJhbV9heGlfYXJxb3MgICBbM10s
IGRyYW1fYXhpX2FycW9zICAgWzJdLCBkcmFtX2F4aV9hcnFvcyAgIFsxXSwg
ZHJhbV9heGlfYXJxb3MgICBbMF19KSwKICAgIC5tX2F4aV9hcnJlZ2lvbiAg
ICAgICAgICAoe2RyYW1fYXhpX2FycmVnaW9uWzNdLCBkcmFtX2F4aV9hcnJl
Z2lvblsyXSwgZHJhbV9heGlfYXJyZWdpb25bMV0sIGRyYW1fYXhpX2FycmVn
aW9uWzBdfSksCiAgICAubV9heGlfYXJ1c2VyICAgICAgICAgICAgKHtkcmFt
X2F4aV9hcnVzZXIgIFszXSwgZHJhbV9heGlfYXJ1c2VyICBbMl0sIGRyYW1f
YXhpX2FydXNlciAgWzFdLCBkcmFtX2F4aV9hcnVzZXIgIFswXX0pLAogICAg
Lm1fYXhpX2FydmFsaWQgICAgICAgICAgICh7ZHJhbV9heGlfYXJ2YWxpZCBb
M10sIGRyYW1fYXhpX2FydmFsaWQgWzJdLCBkcmFtX2F4aV9hcnZhbGlkIFsx
XSwgZHJhbV9heGlfYXJ2YWxpZCBbMF19KSwKICAgIC5tX2F4aV9hcnJlYWR5
ICAgICAgICAgICAoe2RyYW1fYXhpX2FycmVhZHkgWzNdLCBkcmFtX2F4aV9h
cnJlYWR5IFsyXSwgZHJhbV9heGlfYXJyZWFkeSBbMV0sIGRyYW1fYXhpX2Fy
cmVhZHkgWzBdfSksCiAgICAubV9heGlfcmlkICAgICAgICAgICAgICAgKHtk
cmFtX2F4aV9yaWQgICAgIFszXSwgZHJhbV9heGlfcmlkICAgICBbMl0sIGRy
YW1fYXhpX3JpZCAgICAgWzFdLCBkcmFtX2F4aV9yaWQgICAgIFswXX0pLAog
ICAgLm1fYXhpX3JkYXRhICAgICAgICAgICAgICh7ZHJhbV9heGlfcmRhdGEg
ICBbM10sIGRyYW1fYXhpX3JkYXRhICAgWzJdLCBkcmFtX2F4aV9yZGF0YSAg
IFsxXSwgZHJhbV9heGlfcmRhdGEgICBbMF19KSwKICAgIC5tX2F4aV9ycmVz
cCAgICAgICAgICAgICAoe2RyYW1fYXhpX3JyZXNwICAgWzNdLCBkcmFtX2F4
aV9ycmVzcCAgIFsyXSwgZHJhbV9heGlfcnJlc3AgICBbMV0sIGRyYW1fYXhp
X3JyZXNwICAgWzBdfSksCiAgICAubV9heGlfcmxhc3QgICAgICAgICAgICAg
KHtkcmFtX2F4aV9ybGFzdCAgIFszXSwgZHJhbV9heGlfcmxhc3QgICBbMl0s
IGRyYW1fYXhpX3JsYXN0ICAgWzFdLCBkcmFtX2F4aV9ybGFzdCAgIFswXX0p
LAogICAgLm1fYXhpX3J1c2VyICAgICAgICAgICAgICh7ZHJhbV9heGlfcnVz
ZXIgICBbM10sIGRyYW1fYXhpX3J1c2VyICAgWzJdLCBkcmFtX2F4aV9ydXNl
ciAgIFsxXSwgZHJhbV9heGlfcnVzZXIgICBbMF19KSwKICAgIC5tX2F4aV9y
dmFsaWQgICAgICAgICAgICAoe2RyYW1fYXhpX3J2YWxpZCAgWzNdLCBkcmFt
X2F4aV9ydmFsaWQgIFsyXSwgZHJhbV9heGlfcnZhbGlkICBbMV0sIGRyYW1f
YXhpX3J2YWxpZCAgWzBdfSksCiAgICAubV9heGlfcnJlYWR5ICAgICAgICAg
ICAgKHtkcmFtX2F4aV9ycmVhZHkgIFszXSwgZHJhbV9heGlfcnJlYWR5ICBb
Ml0sIGRyYW1fYXhpX3JyZWFkeSAgWzFdLCBkcmFtX2F4aV9ycmVhZHkgIFsw
XX0pLAogICAgLnJhZGlvX3RpbWUgICAgICAgICAgICAgIChyYWRpb190aW1l
ICAgICAgICAgICAgICksCiAgICAucmFkaW9fcnhfc3RiICAgICAgICAgICAg
KHtyeF9zdGJbMV0sICAgICByeF9zdGJbMF0gICAgfSksCiAgICAucmFkaW9f
cnhfZGF0YSAgICAgICAgICAgKHtyeF9kYXRhWzFdLCAgICByeF9kYXRhWzBd
ICAgfSksCiAgICAucmFkaW9fcnhfcnVubmluZyAgICAgICAgKHtyeF9ydW5u
aW5nWzFdLCByeF9ydW5uaW5nWzBdfSksCiAgICAucmFkaW9fdHhfc3RiICAg
ICAgICAgICAgKHt0eF9zdGJbMV0sICAgICB0eF9zdGJbMF0gICAgfSksCiAg
ICAucmFkaW9fdHhfZGF0YSAgICAgICAgICAgKHt0eF9kYXRhWzFdLCAgICB0
eF9kYXRhWzBdICAgfSksCiAgICAucmFkaW9fdHhfcnVubmluZyAgICAgICAg
KHt0eF9ydW5uaW5nWzFdLCB0eF9ydW5uaW5nWzBdfSksCiAgICAuc19ldGhf
dGRhdGEgICAgICAgICAgICAgKGUydl90ZGF0YSApLAogICAgLnNfZXRoX3Rs
YXN0ICAgICAgICAgICAgIChlMnZfdGxhc3QgKSwKICAgIC5zX2V0aF90dmFs
aWQgICAgICAgICAgICAoZTJ2X3R2YWxpZCksCiAgICAuc19ldGhfdHJlYWR5
ICAgICAgICAgICAgKGUydl90cmVhZHkpLAogICAgLm1fZXRoX3RkYXRhICAg
ICAgICAgICAgICh2MmVfdGRhdGEgKSwKICAgIC5tX2V0aF90bGFzdCAgICAg
ICAgICAgICAodjJlX3RsYXN0ICksCiAgICAubV9ldGhfdHZhbGlkICAgICAg
ICAgICAgKHYyZV90dmFsaWQpLAogICAgLm1fZXRoX3RyZWFkeSAgICAgICAg
ICAgICh2MmVfdHJlYWR5KSwKICAgIC5zX2RtYV90ZGF0YSAgICAgICAgICAg
ICAoc19kbWFfdGRhdGEpLAogICAgLnNfZG1hX3RsYXN0ICAgICAgICAgICAg
IChzX2RtYV90bGFzdCksCiAgICAuc19kbWFfdHZhbGlkICAgICAgICAgICAg
KHNfZG1hX3R2YWxpZCksCiAgICAuc19kbWFfdHJlYWR5ICAgICAgICAgICAg
KHNfZG1hX3RyZWFkeSksCiAgICAubV9kbWFfdGRhdGEgICAgICAgICAgICAg
KG1fZG1hX3RkYXRhKSwKICAgIC5tX2RtYV90bGFzdCAgICAgICAgICAgICAo
bV9kbWFfdGxhc3QpLAogICAgLm1fZG1hX3R2YWxpZCAgICAgICAgICAgICht
X2RtYV90dmFsaWQpLAogICAgLm1fZG1hX3RyZWFkeSAgICAgICAgICAgICht
X2RtYV90cmVhZHkpCiAgKTsKCiAgLy8tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KICAvLyBDb252ZXJ0IENvbnRyb2wgUG9ydCB0byBTZXR0aW5n
cyBCdXMKICAvLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBj
dHJscG9ydF90b19zZXR0aW5nc19idXMgIyAoCiAgICAuTlVNX1BPUlRTICgy
KSwKICAgIC5VU0VfVElNRSAgKDEpCiAgKSBjdHJscG9ydF90b19zZXR0aW5n
c19idXNfaSAoCiAgICAuY3RybHBvcnRfY2xrICAgICAgICAgICAgIChyYWRp
b19jbGspLAogICAgLmN0cmxwb3J0X3JzdCAgICAgICAgICAgICAocmFkaW9f
cnN0KSwKICAgIC5zX2N0cmxwb3J0X3JlcV93ciAgICAgICAgKG1fY3RybHBv
cnRfcmVxX3dyKSwKICAgIC5zX2N0cmxwb3J0X3JlcV9yZCAgICAgICAgKG1f
Y3RybHBvcnRfcmVxX3JkKSwKICAgIC5zX2N0cmxwb3J0X3JlcV9hZGRyICAg
ICAgKG1fY3RybHBvcnRfcmVxX2FkZHIpLAogICAgLnNfY3RybHBvcnRfcmVx
X2RhdGEgICAgICAobV9jdHJscG9ydF9yZXFfZGF0YSksCiAgICAuc19jdHJs
cG9ydF9yZXFfaGFzX3RpbWUgIChtX2N0cmxwb3J0X3JlcV9oYXNfdGltZSks
CiAgICAuc19jdHJscG9ydF9yZXFfdGltZSAgICAgIChtX2N0cmxwb3J0X3Jl
cV90aW1lKSwKICAgIC5zX2N0cmxwb3J0X3Jlc3BfYWNrICAgICAgKG1fY3Ry
bHBvcnRfcmVzcF9hY2spLAogICAgLnNfY3RybHBvcnRfcmVzcF9kYXRhICAg
ICAobV9jdHJscG9ydF9yZXNwX2RhdGEpLAogICAgLnNldF9kYXRhICAgICAg
ICAgICAgICAgICAoe2RiX2ZlX3NldF9kYXRhWzFdLCBkYl9mZV9zZXRfZGF0
YVswXX0pLAogICAgLnNldF9hZGRyICAgICAgICAgICAgICAgICAoe2RiX2Zl
X3NldF9hZGRyWzFdLCBkYl9mZV9zZXRfYWRkclswXX0pLAogICAgLnNldF9z
dGIgICAgICAgICAgICAgICAgICAoe2RiX2ZlX3NldF9zdGJbMV0sICBkYl9m
ZV9zZXRfc3RiWzBdIH0pLAogICAgLnNldF90aW1lICAgICAgICAgICAgICAg
ICAoKSwKICAgIC5zZXRfaGFzX3RpbWUgICAgICAgICAgICAgKCksCiAgICAu
cmJfc3RiICAgICAgICAgICAgICAgICAgICh7ZGJfZmVfcmJfc3RiWzFdLCAg
IGRiX2ZlX3JiX3N0YlswXSAgfSksCiAgICAucmJfYWRkciAgICAgICAgICAg
ICAgICAgICh7ZGJfZmVfcmJfYWRkclsxXSwgIGRiX2ZlX3JiX2FkZHJbMF0g
fSksCiAgICAucmJfZGF0YSAgICAgICAgICAgICAgICAgICh7ZGJfZmVfcmJf
ZGF0YVsxXSwgIGRiX2ZlX3JiX2RhdGFbMF0gfSksCiAgICAudGltZXN0YW1w
ICAgICAgICAgICAgICAgIChyYWRpb190aW1lKQogICk7CgplbmRtb2R1bGUg
Ly9lMzIwX2NvcmUKYGRlZmF1bHRfbmV0dHlwZSB3aXJlCgo=

--0000000000006dc4c905d7c09b6e
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--0000000000006dc4c905d7c09b6e--
