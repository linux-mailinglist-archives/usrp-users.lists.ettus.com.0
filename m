Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CD64B180B
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 23:17:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 271563850B1
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 17:17:55 -0500 (EST)
Received: from postman.dtnt.info (postman.dtnt.info [62.219.91.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 1622A3847A6
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 17:16:54 -0500 (EST)
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
	by postman.dtnt.info (Postfix) with ESMTPS id 2CB1641A71
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 00:15:53 +0200 (IST)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
	by o.dtnt.email (Postfix) with ESMTP id DF2959FFB2
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 00:15:42 +0200 (IST)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
	by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id XeC0KORp_LXx for <usrp-users@lists.ettus.com>;
	Fri, 11 Feb 2022 00:15:38 +0200 (IST)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	by o.dtnt.email (Postfix) with ESMTPSA id CD92D9FFB1
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 00:15:37 +0200 (IST)
Received: by mail-pf1-f177.google.com with SMTP id d187so12753903pfa.10
        for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 14:15:37 -0800 (PST)
X-Gm-Message-State: AOAM530oGAUmTN7P0p2R+mL/QdlMZ8aB6bJfn+eXkD18dNTRX1WJ19dV
	Iyzg4Co2mdhiHMNSbrv9F04Sdv8JIegrdqGTCX8=
X-Google-Smtp-Source: ABdhPJwxxSDkIrlCfpYs6WphEcfdFR47w+wUe2T1cDRUQn+DFMxyBZyY059rympzSCK09/FkaQXM0H8EA0SXflb+Sn0=
X-Received: by 2002:a05:6a00:170e:: with SMTP id h14mr9553590pfc.80.1644531335062;
 Thu, 10 Feb 2022 14:15:35 -0800 (PST)
MIME-Version: 1.0
References: <CACDReSy-Z7yj=B-QRGuNf=uwop_1OFMH0ztpTasZ4BLQwoXKQQ@mail.gmail.com>
 <CAFche=gNSsj8bUKHgqPuo-4r6d7r33suu1-DaVPevrQGw8dS6w@mail.gmail.com>
In-Reply-To: <CAFche=gNSsj8bUKHgqPuo-4r6d7r33suu1-DaVPevrQGw8dS6w@mail.gmail.com>
From: Ofer Saferman <ofer@navigicom.com>
Date: Fri, 11 Feb 2022 00:15:23 +0200
X-Gmail-Original-Message-ID: <CACDReSxN0ZXv1vnNgssv7_3wpj6rub49Yzm9COnyQegzPFzGaQ@mail.gmail.com>
Message-ID: <CACDReSxN0ZXv1vnNgssv7_3wpj6rub49Yzm9COnyQegzPFzGaQ@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 2CB1641A71.A199E
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Message-ID-Hash: RBHI5EGHRHEX7LFFJYF5JFRPOBATWSWS
X-Message-ID-Hash: RBHI5EGHRHEX7LFFJYF5JFRPOBATWSWS
X-MailFrom: ofer@navigicom.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ofer Saferman <ofer@navigicom.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problems with a 4-port replay block on E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RBHI5EGHRHEX7LFFJYF5JFRPOBATWSWS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8747373141318805883=="

--===============8747373141318805883==
Content-Type: multipart/alternative; boundary="0000000000000c693505d7b14a33"

--0000000000000c693505d7b14a33
Content-Type: text/plain; charset="UTF-8"

Hello Wade,

Do you think that this is the reason that ports 2,3 don't work?
I can try to rebuild the image and see what happens. I will update.

Regards,
Ofer Saferman

On Thu, Feb 10, 2022 at 10:36 PM Wade Fife <wade.fife@ettus.com> wrote:

> Hi Ofer,
>
> I think MEM_ADDR_W should be 31 for E320. Other than that everything looks
> correct.
>
> Wade
>
> On Thu, Feb 10, 2022 at 2:20 PM Ofer Saferman <ofer@navigicom.com> wrote:
>
>> Hello,
>>
>> I am working on a USRP E320 unit using UHD 4.1.0.5.
>> I have made an FPGA image containing a radio, a 4-port replay block and a
>> NullSrcSink.
>> After investigating (with a lot of help from Rob Kossler) why my own
>> program doesn't work properly, per his suggestion I have tested
>> rfnoc_replay_samples_from_file on the 4 ports of the replay block.
>> Ports 0,1 work fine and the example is streaming my data. Ports 2,3 get
>> stuck on record and don't work properly.
>> Please find attached:
>> * 4 console logs, one for each replay port.
>> * My YML file with which I created the FPGA image.
>> * Console log of uhd_usrp_probe.
>>
>> Some further notes that might help:
>> * I also tried an original FPGA image of the E320 (with DUC, DDC and all
>> the static mapping) with the only change being that the replay block has 4
>> ports (and adding 2 more endpoints). The result was the same.
>> * I also tried an FPGA image without the NullSrcSink. I added it sometime
>> in the debug process and it was just left there. It has no bearing on the
>> problem.
>>
>> I would appreciate any assistance to debug the issue and make all ports
>> of the replay block work properly.
>>
>> Regards,
>> Ofer Saferman
>>
>>
>> --
>> This message has been scanned for viruses and
>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>> is
>> believed to be clean. _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--0000000000000c693505d7b14a33
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Wade,</div><div><br></div><div>Do you think tha=
t this is the reason that ports 2,3 don&#39;t work?</div><div>I can try to =
rebuild the image and see what happens. I will update.</div><div><br></div>=
<div>Regards,</div><div>Ofer Saferman<br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022 at 10:3=
6 PM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div>Hi Ofer,</div><div><br></div><div>I think MEM_ADDR_=
W should be 31 for E320. Other than that everything looks correct.</div><di=
v><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, 2022 at 2:20 PM Ofer Saferma=
n &lt;<a href=3D"mailto:ofer@navigicom.com" target=3D"_blank">ofer@navigico=
m.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I am working on =
a USRP E320 unit using UHD 4.1.0.5.<br></div><div>I have made an FPGA image=
 containing a radio, a 4-port replay block and a NullSrcSink.</div><div>Aft=
er investigating (with a lot of help from Rob Kossler) why my own program d=
oesn&#39;t work properly, per his suggestion I have tested rfnoc_replay_sam=
ples_from_file on the 4 ports of the replay block.</div><div>Ports 0,1 work=
 fine and the example is streaming my data. Ports 2,3 get stuck on record a=
nd don&#39;t work properly.</div><div>Please find attached:</div><div>* 4 c=
onsole logs, one for each replay port. <br></div><div>* My YML file with wh=
ich I created the FPGA image.</div><div>* Console log of uhd_usrp_probe.</d=
iv><div></div><div><br></div><div>Some further notes that might help:</div>=
<div>* I also tried an original FPGA image of the E320 (with DUC, DDC and a=
ll the static mapping) with the only change being that the replay block has=
 4 ports (and adding 2 more endpoints). The result was the same.</div><div>=
* I also tried an FPGA image without the NullSrcSink. I added it sometime i=
n the debug process and it was just left there. It has no bearing on the pr=
oblem.</div><div><br></div><div>
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
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--0000000000000c693505d7b14a33--

--===============8747373141318805883==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8747373141318805883==--
