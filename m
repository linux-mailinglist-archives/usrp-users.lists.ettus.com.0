Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7B33F1181
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 05:22:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9DDA2384431
	for <lists+usrp-users@lfdr.de>; Wed, 18 Aug 2021 23:22:00 -0400 (EDT)
Received: from postman.dtnt.info (postman.dtnt.info [62.219.91.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 3AF2E384407
	for <usrp-users@lists.ettus.com>; Wed, 18 Aug 2021 23:21:17 -0400 (EDT)
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
	by postman.dtnt.info (Postfix) with ESMTPS id 28BC943D34
	for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 06:19:07 +0300 (IDT)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
	by o.dtnt.email (Postfix) with ESMTP id B23B09FFA8
	for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 06:19:06 +0300 (IDT)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
	by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id xR8gQhrwB0UL for <usrp-users@lists.ettus.com>;
	Thu, 19 Aug 2021 06:19:00 +0300 (IDT)
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	by o.dtnt.email (Postfix) with ESMTPSA id 3E7219FF1E
	for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 06:18:59 +0300 (IDT)
Received: by mail-oo1-f44.google.com with SMTP id l12-20020a4a94cc0000b02902618ad2ea55so1394559ooi.4
        for <usrp-users@lists.ettus.com>; Wed, 18 Aug 2021 20:18:59 -0700 (PDT)
X-Gm-Message-State: AOAM533XPqEbzNYPcAB7m5vXD/oTjSgR/K9IGAVyy7d77FhU8i/mXjgY
	w4LyPXd8n929+PWzX6EzFbLOmREpp1oyW9tBvUM=
X-Google-Smtp-Source: ABdhPJxLde9VvU7w2Nlpyydm8hUO+Wx4OWM6VCTHdA1vMSb+/ZusLiosjbFowZuw3FtDRzd7KaMdVca0c23Yw3vRPcE=
X-Received: by 2002:a4a:db86:: with SMTP id s6mr9533071oou.58.1629343138266;
 Wed, 18 Aug 2021 20:18:58 -0700 (PDT)
MIME-Version: 1.0
References: <162909902310.11274.10452860937061882564@mm2.emwd.com>
 <CACDReSxmPoF72xO8NVw63jyso8Eguy06WRL9LDQ8McMuDuF++Q@mail.gmail.com> <CAL7q81vsc7gxH4Pn1huc4aX3o_w4sv+bxHucSBOuZehxrhx7AA@mail.gmail.com>
In-Reply-To: <CAL7q81vsc7gxH4Pn1huc4aX3o_w4sv+bxHucSBOuZehxrhx7AA@mail.gmail.com>
From: Ofer Saferman <ofer@navigicom.com>
Date: Thu, 19 Aug 2021 06:18:47 +0300
X-Gmail-Original-Message-ID: <CACDReSyx1=ZQ73DhojbZa5i_LFCu_EeJa+tNvhfAJ1Oh4uxFRg@mail.gmail.com>
Message-ID: <CACDReSyx1=ZQ73DhojbZa5i_LFCu_EeJa+tNvhfAJ1Oh4uxFRg@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 28BC943D34.A7514
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Message-ID-Hash: I4K2VA7T6JKXXM3AM7P3ORKD6WIQYZMY
X-Message-ID-Hash: I4K2VA7T6JKXXM3AM7P3ORKD6WIQYZMY
X-MailFrom: ofer@navigicom.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ofer Saferman <ofer@navigicom.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1 on E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I4K2VA7T6JKXXM3AM7P3ORKD6WIQYZMY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1656497946929675592=="

--===============1656497946929675592==
Content-Type: multipart/alternative; boundary="000000000000f941ed05c9e10258"

--000000000000f941ed05c9e10258
Content-Type: text/plain; charset="UTF-8"

Hello Jonathon,

Thank you for your suggestion.
I don't really care which UHD version I am using. I was looking for the
shortest path to an FPGA image that already has the replay block
implemented so that I don't have to rebuild the FPGA image.
Can you suggest where I might find an FPGA image for E320 that already has
the replay block? Or was it not implemented at all in any image?
I vaguely remember looking at the history of the FPGA files of the E320 a
few months ago and I think it appeared in one of the previous versions of
the FPGA images and it was then replaced with FIFO.

If no FPGA image for the E320 exists with the replay block what UHD version
would you recommend as most stable? I am currently working with UHD 3.15 on
an array of E310 units without any problems. Would you suggest going to 4.1?

Thanks,
Ofer Saferman

On Wed, Aug 18, 2021 at 7:57 AM Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> Hi Ofer,
>
> The Replay block is not included in the UHD 4.1 FPGA image, as you can see
> from its FPGA image yaml file:
> https://github.com/EttusResearch/uhd/blob/UHD-4.1/fpga/usrp3/top/e320/e320_rfnoc_image_core.yml
> .
>
> You can add it by replacing the "fifo0" instance with a replay block
> similar to here:
> https://github.com/EttusResearch/uhd/blob/UHD-4.1/fpga/usrp3/top/x300/x310_rfnoc_image_core.yml#L63.
> I would suggest reading this guide to understand how to edit the E320's
> yaml file and build a new FPGA image:
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0.
>
> Jonathon
>
> On Mon, Aug 16, 2021 at 4:30 AM Ofer Saferman <ofer@navigicom.com> wrote:
>
>> Hello,
>>
>> Thank you for your suggestion. I will follow up on that.
>> Any comment on the RFNoC replay block?
>>
>> Regards,
>> Ofer Saferman
>>
>>
>> On Mon, Aug 16, 2021 at 10:30 AM <usrp-users-request@lists.ettus.com>
>> wrote:
>>
>>> Send USRP-users mailing list submissions to
>>>         usrp-users@lists.ettus.com
>>>
>>> To subscribe or unsubscribe via email, send a message with subject or
>>> body 'help' to
>>>         usrp-users-request@lists.ettus.com
>>>
>>> You can reach the person managing the list at
>>>         usrp-users-owner@lists.ettus.com
>>>
>>> When replying, please edit your Subject line so it is more specific
>>> than "Re: Contents of USRP-users digest..."Today's Topics:
>>>
>>>    1. Re: UHD 4.1 on E320 (Marcus D. Leech)
>>>
>>>
>>>
>>> ---------- Forwarded message ----------
>>> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
>>> To: usrp-users@lists.ettus.com
>>> Cc:
>>> Bcc:
>>> Date: Sun, 15 Aug 2021 08:38:46 -0400
>>> Subject: [USRP-users] Re: UHD 4.1 on E320
>>> On 08/15/2021 01:01 AM, Ofer Saferman wrote:
>>> > Hello,
>>> >
>>> > I have a E320 that came out-of-the-box with an image on the SD card of
>>> > UHD 3.15.
>>> > What would be the easiest way to upgrade it to UHD 4.1?
>>> > Is there an SD image that is ready to program?
>>> > Do I have to rebuild it on the E320?
>>> >
>>> > Also, can you please comment if the FPGA image of UHD 4.1 comes with
>>> > the RFNoC Replay block?
>>> > What would be the shortest path for me to get any UHD version on the
>>> > E320 that has the RFNoC replay block built-in without needing to
>>> > rebuild the FPGA image by myself?
>>> >
>>> > Thanks,
>>> > Ofer Saferman
>>> >
>>> >
>>> Ofer:
>>>
>>> The uhd_images_downloader lets you download sd-card images these days,
>>> as shown in this document:
>>>
>>> https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card
>>>
>>> So load up 4.1 on your host, and then use uhd_images_downloader to pull
>>> down the relevant sd-card image.
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
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


--000000000000f941ed05c9e10258
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hello Jonathon,</div><div><br></div>=
<div>Thank you for your suggestion.</div><div>I don&#39;t really care which=
 UHD version I am using. I was looking for the shortest path to an FPGA ima=
ge that already has the replay block implemented so that I don&#39;t have t=
o rebuild the FPGA image.</div><div>Can you suggest where I might find an F=
PGA image for E320 that already has the replay block? Or was it not impleme=
nted at all in any image? <br></div><div>I vaguely remember looking at the =
history of the FPGA files of the E320 a few months ago and I think it appea=
red in one of the previous versions of the FPGA images and it was then repl=
aced with FIFO.</div><div><br></div><div>If no FPGA image for the E320 exis=
ts with the replay block what UHD version would you recommend as most stabl=
e? I am currently working with UHD 3.15 on an array of E310 units without a=
ny problems. Would you suggest going to 4.1?</div><div><br></div><div>Thank=
s,</div><div>Ofer Saferman<br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 18, 2021 at 7:57 AM Jonatho=
n Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com">jonathon.pendlu=
m@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi Ofer,<div><br></div><div>The Replay block is=
 not included in the UHD 4.1 FPGA image, as you can see from its FPGA image=
 yaml file:=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/UHD-4=
.1/fpga/usrp3/top/e320/e320_rfnoc_image_core.yml" target=3D"_blank">https:/=
/github.com/EttusResearch/uhd/blob/UHD-4.1/fpga/usrp3/top/e320/e320_rfnoc_i=
mage_core.yml</a>.</div><div><br></div><div>You can add it by replacing the=
 &quot;fifo0&quot; instance with a replay block similar to here: <a href=3D=
"https://github.com/EttusResearch/uhd/blob/UHD-4.1/fpga/usrp3/top/x300/x310=
_rfnoc_image_core.yml#L63" target=3D"_blank">https://github.com/EttusResear=
ch/uhd/blob/UHD-4.1/fpga/usrp3/top/x300/x310_rfnoc_image_core.yml#L63</a>. =
I would suggest reading this guide to understand how to edit the E320&#39;s=
 yaml file and build a new=C2=A0FPGA image:=C2=A0<a href=3D"https://kb.ettu=
s.com/Getting_Started_with_RFNoC_in_UHD_4.0" target=3D"_blank">https://kb.e=
ttus.com/Getting_Started_with_RFNoC_in_UHD_4.0</a>.</div><div><br></div><di=
v>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Aug 16, 2021 at 4:30 AM Ofer Saferman &lt;<a href=
=3D"mailto:ofer@navigicom.com" target=3D"_blank">ofer@navigicom.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr">Hello,</div><div dir=3D"ltr"><br></div><div>Thank=
 you for your suggestion. I will follow up on that.</div><div>Any comment o=
n the RFNoC replay block?</div><div><br></div><div>Regards,</div><div>Ofer =
Saferman<br></div><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 16, 2021 at 10:30 AM &lt=
;<a href=3D"mailto:usrp-users-request@lists.ettus.com" target=3D"_blank">us=
rp-users-request@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Send USRP-users mailing list submissions t=
o<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a><br>
<br>
To subscribe or unsubscribe via email, send a message with subject or<br>
body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-request@lists.ettu=
s.com" target=3D"_blank">usrp-users-request@lists.ettus.com</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-owner@lists.ettus.=
com" target=3D"_blank">usrp-users-owner@lists.ettus.com</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of USRP-users digest...&quot;Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. Re: UHD 4.1 on E320 (Marcus D. Leech)<br>
<br><br><br>---------- Forwarded message ----------<br>From:=C2=A0&quot;Mar=
cus D. Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D=
"_blank">patchvonbraun@gmail.com</a>&gt;<br>To:=C2=A0<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br=
>Cc:=C2=A0<br>Bcc:=C2=A0<br>Date:=C2=A0Sun, 15 Aug 2021 08:38:46 -0400<br>S=
ubject:=C2=A0[USRP-users] Re: UHD 4.1 on E320<br>On 08/15/2021 01:01 AM, Of=
er Saferman wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I have a E320 that came out-of-the-box with an image on the SD card of=
 <br>
&gt; UHD 3.15.<br>
&gt; What would be the easiest way to upgrade it to UHD 4.1?<br>
&gt; Is there an SD image that is ready to program?<br>
&gt; Do I have to rebuild it on the E320?<br>
&gt;<br>
&gt; Also, can you please comment if the FPGA image of UHD 4.1 comes with <=
br>
&gt; the RFNoC Replay block?<br>
&gt; What would be the shortest path for me to get any UHD version on the <=
br>
&gt; E320 that has the RFNoC replay block built-in without needing to <br>
&gt; rebuild the FPGA image by myself?<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Ofer Saferman<br>
&gt;<br>
&gt;<br>
Ofer:<br>
<br>
The uhd_images_downloader lets you download sd-card images these days, <br>
as shown in this document:<br>
<br>
<a href=3D"https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_=
a_SD_Card" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/Writin=
g_the_USRP_File_System_Disk_Image_to_a_SD_Card</a><br>
<br>
So load up 4.1 on your host, and then use uhd_images_downloader to pull <br>
down the relevant sd-card image.<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
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
</blockquote></div></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--000000000000f941ed05c9e10258--

--===============1656497946929675592==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1656497946929675592==--
