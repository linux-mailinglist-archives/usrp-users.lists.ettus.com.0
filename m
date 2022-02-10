Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC484B1829
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 23:28:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0D42C384A3E
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 17:28:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="owTgvH16";
	dkim-atps=neutral
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 76A253850DA
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 17:27:26 -0500 (EST)
Received: by mail-ua1-f54.google.com with SMTP id w18so3754803uar.8
        for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 14:27:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Akfki/Dl5yuVCuiU2hM2tysxngMJIVDc3cuRum8Yo+A=;
        b=owTgvH16XHcjwQtroql34VZvkLs33Nbhr/DcefKlNZn1Zn127pnvTwN5eljlo765pb
         FECg0Up3OnfzR6Fp/fAGC81zFzYdmaN9a0AMD5FlTOciqbqQp1Gyg0Oa2Kv7kmlMHF3T
         R7y13kAiJR/UnggbeJJJKw/tqI6c+DV5g9PAKOkyNJKBuOz+8Jnc2QatE/brblh4lSwX
         eKhyhfQvXnIcj8r5aEyx42yiFCaI9SYcLhpReXV1gp4TkP8cKb6OTOJcGqCxKKQ6JZyo
         0cpujPHtIBWMk91svoLSyMBGQstxjPtkjgSGB4wrB4fX3VSaEaVir2LEg6cADlnKVEiX
         NDRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Akfki/Dl5yuVCuiU2hM2tysxngMJIVDc3cuRum8Yo+A=;
        b=lb77idxRmkG2C9y5MpcXVpf4GkdwcJppDAWINufd4ImhxZYNupcpZiHctd3Znqv/v8
         QOucq0FrkuXHrJXS6gNinfLJYUqexgBWcPA8eHs+ng3Kn15ySGyh6Zw/8DlNL19sfsfL
         MW8vWn4q213Q7/eVPafYcxSUlYWibXjGWlDM707O7VJ4DMM01la3osxXbk0v9A+NtTu2
         UW59S4blbLyXmcwyK3QR8p+49LXbKXrWD3VAIYYVBUsJprX6GUAblnUmEQG4vXMWebAx
         e66fFFzO4+3rkr/VplrFEzTSoBmDHuim3AMjM903cm2bwzS3uFZPvvOJbREJG4FE7/Lc
         E7Sw==
X-Gm-Message-State: AOAM533oW5aVMCv0lXNg+B9D4DlrqWFIsSM2Llru073b6nWLEMF6l+th
	CMMv/EJZQB5TTCenck1HTZyJpfrL/YkTm1OX0Nsa5Q4U4Ls+kw==
X-Google-Smtp-Source: ABdhPJyyK2n3aaQLAXccbQW/sP/1DNYPmuEinBlO6d4pIrY3mlCTu8Lu/E871GS32X54xpqdgvgxETIC4e94UfviwHU=
X-Received: by 2002:ab0:372b:: with SMTP id s11mr2109085uag.20.1644532045710;
 Thu, 10 Feb 2022 14:27:25 -0800 (PST)
MIME-Version: 1.0
References: <CACDReSy-Z7yj=B-QRGuNf=uwop_1OFMH0ztpTasZ4BLQwoXKQQ@mail.gmail.com>
 <CAFche=gNSsj8bUKHgqPuo-4r6d7r33suu1-DaVPevrQGw8dS6w@mail.gmail.com> <CACDReSxN0ZXv1vnNgssv7_3wpj6rub49Yzm9COnyQegzPFzGaQ@mail.gmail.com>
In-Reply-To: <CACDReSxN0ZXv1vnNgssv7_3wpj6rub49Yzm9COnyQegzPFzGaQ@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Thu, 10 Feb 2022 17:26:50 -0500
Message-ID: <CAL7q81u+7b8yiXDM40n=jpA_cpVtkziZ7vuLNAvLt13MXoVM1Q@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
Message-ID-Hash: BMSN752FFQTYO6FAAQUQY7JII2W47NNK
X-Message-ID-Hash: BMSN752FFQTYO6FAAQUQY7JII2W47NNK
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problems with a 4-port replay block on E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BMSN752FFQTYO6FAAQUQY7JII2W47NNK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9174847232235955814=="

--===============9174847232235955814==
Content-Type: multipart/alternative; boundary="00000000000068224805d7b17484"

--00000000000068224805d7b17484
Content-Type: text/plain; charset="UTF-8"

Hello Ofer,

I also sent this Rob in the other thread:

It looks like the problem is that while there is a 4 port interconnect
available, only ports 0 and 1 are hooked up:
https://github.com/EttusResearch/uhd/blob/2c7ce2dbf72414b64f8a477be614e23bc12f086d/fpga/usrp3/top/e320/e320_core.v#L1050
.

You could modify e320_core.v to hook up the extra ports as a stopgap until
it is fixed.

Jonathon

On Thu, Feb 10, 2022 at 5:17 PM Ofer Saferman <ofer@navigicom.com> wrote:

> Hello Wade,
>
> Do you think that this is the reason that ports 2,3 don't work?
> I can try to rebuild the image and see what happens. I will update.
>
> Regards,
> Ofer Saferman
>
> On Thu, Feb 10, 2022 at 10:36 PM Wade Fife <wade.fife@ettus.com> wrote:
>
>> Hi Ofer,
>>
>> I think MEM_ADDR_W should be 31 for E320. Other than that everything
>> looks correct.
>>
>> Wade
>>
>> On Thu, Feb 10, 2022 at 2:20 PM Ofer Saferman <ofer@navigicom.com> wrote:
>>
>>> Hello,
>>>
>>> I am working on a USRP E320 unit using UHD 4.1.0.5.
>>> I have made an FPGA image containing a radio, a 4-port replay block and
>>> a NullSrcSink.
>>> After investigating (with a lot of help from Rob Kossler) why my own
>>> program doesn't work properly, per his suggestion I have tested
>>> rfnoc_replay_samples_from_file on the 4 ports of the replay block.
>>> Ports 0,1 work fine and the example is streaming my data. Ports 2,3 get
>>> stuck on record and don't work properly.
>>> Please find attached:
>>> * 4 console logs, one for each replay port.
>>> * My YML file with which I created the FPGA image.
>>> * Console log of uhd_usrp_probe.
>>>
>>> Some further notes that might help:
>>> * I also tried an original FPGA image of the E320 (with DUC, DDC and all
>>> the static mapping) with the only change being that the replay block has 4
>>> ports (and adding 2 more endpoints). The result was the same.
>>> * I also tried an FPGA image without the NullSrcSink. I added it
>>> sometime in the debug process and it was just left there. It has no bearing
>>> on the problem.
>>>
>>> I would appreciate any assistance to debug the issue and make all ports
>>> of the replay block work properly.
>>>
>>> Regards,
>>> Ofer Saferman
>>>
>>>
>>> --
>>> This message has been scanned for viruses and
>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>>> is
>>> believed to be clean. _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
> --
> This message has been scanned for viruses and
> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and is
> believed to be clean. _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000068224805d7b17484
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Ofer,<div><br></div><div>I also sent this Rob in the=
 other thread:</div><div><br></div><div>It looks like the problem is that w=
hile there is a 4 port interconnect available, only ports 0 and 1 are hooke=
d up:=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/2c7ce2dbf72=
414b64f8a477be614e23bc12f086d/fpga/usrp3/top/e320/e320_core.v#L1050" target=
=3D"_blank">https://github.com/EttusResearch/uhd/blob/2c7ce2dbf72414b64f8a4=
77be614e23bc12f086d/fpga/usrp3/top/e320/e320_core.v#L1050</a>.</div><div><b=
r></div><div>You could modify e320_core.v to hook up the extra ports as a s=
topgap until it is fixed.</div><div><br></div><div>Jonathon</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Fe=
b 10, 2022 at 5:17 PM Ofer Saferman &lt;<a href=3D"mailto:ofer@navigicom.co=
m" target=3D"_blank">ofer@navigicom.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello Wade,</d=
iv><div><br></div><div>Do you think that this is the reason that ports 2,3 =
don&#39;t work?</div><div>I can try to rebuild the image and see what happe=
ns. I will update.</div><div><br></div><div>Regards,</div><div>Ofer Saferma=
n<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, Feb 10, 2022 at 10:36 PM Wade Fife &lt;<a href=3D"mailto=
:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div>Hi Ofer,</div><div><br></div><div>I think MEM_ADDR_W should be 31 for=
 E320. Other than that everything looks correct.</div><div><br></div><div>W=
ade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Thu, Feb 10, 2022 at 2:20 PM Ofer Saferman &lt;<a href=3D"m=
ailto:ofer@navigicom.com" target=3D"_blank">ofer@navigicom.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div>Hello,</div><div><br></div><div>I am working on a USRP E320 unit u=
sing UHD 4.1.0.5.<br></div><div>I have made an FPGA image containing a radi=
o, a 4-port replay block and a NullSrcSink.</div><div>After investigating (=
with a lot of help from Rob Kossler) why my own program doesn&#39;t work pr=
operly, per his suggestion I have tested rfnoc_replay_samples_from_file on =
the 4 ports of the replay block.</div><div>Ports 0,1 work fine and the exam=
ple is streaming my data. Ports 2,3 get stuck on record and don&#39;t work =
properly.</div><div>Please find attached:</div><div>* 4 console logs, one f=
or each replay port. <br></div><div>* My YML file with which I created the =
FPGA image.</div><div>* Console log of uhd_usrp_probe.</div><div></div><div=
><br></div><div>Some further notes that might help:</div><div>* I also trie=
d an original FPGA image of the E320 (with DUC, DDC and all the static mapp=
ing) with the only change being that the replay block has 4 ports (and addi=
ng 2 more endpoints). The result was the same.</div><div>* I also tried an =
FPGA image without the NullSrcSink. I added it sometime in the debug proces=
s and it was just left there. It has no bearing on the problem.</div><div><=
br></div><div>
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

--00000000000068224805d7b17484--

--===============9174847232235955814==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9174847232235955814==--
