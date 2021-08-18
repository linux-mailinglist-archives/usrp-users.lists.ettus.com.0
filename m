Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAF73EF9BF
	for <lists+usrp-users@lfdr.de>; Wed, 18 Aug 2021 06:58:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA073383BCF
	for <lists+usrp-users@lfdr.de>; Wed, 18 Aug 2021 00:58:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="m0sfMmiG";
	dkim-atps=neutral
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	by mm2.emwd.com (Postfix) with ESMTPS id C590E38307F
	for <usrp-users@lists.ettus.com>; Wed, 18 Aug 2021 00:58:00 -0400 (EDT)
Received: by mail-ua1-f44.google.com with SMTP id 67so451245uaq.4
        for <usrp-users@lists.ettus.com>; Tue, 17 Aug 2021 21:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xkhdMhKAoOQmWU/x0+YTRZ51ztz7J2F3U8j6enSkLrQ=;
        b=m0sfMmiGBhDNftMGrFcAp5obY4Qt9NzKBZmAV8Lv17qEvRftbQaVukbvXJ2QKPzCMe
         tRk90tpCs2KxV8M8aoeAQBO2ALjEtB8dEJpgFNn6au8C2pJNFR3w1hcKXct+kqY/pHu3
         yOkrnrwa8mgWZaVQ0Il2NEgr/jZcdvEDHA5NT7J3+jL0ATkgkylCIIeI70iWqumnDReX
         RunMkvgwHMiQUAtBb7b8eaOMgJzvtjkXPtRvpCA9C+tSG9I4gRBfm1PcMHwNy2ewiyYI
         ne3Yc51cvzzV8dpl7H6ZXnS4O09LuqY+NryHGcKWx0z8LA/Po1WXRzGo2tT2rd2Qp+RO
         B4Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xkhdMhKAoOQmWU/x0+YTRZ51ztz7J2F3U8j6enSkLrQ=;
        b=If5WCYrIYH1UEYOKMcyyVvXpiUVmXWxv5ZvknvxXEuCqbajgh0bds/X4IPnqm0291Y
         ymRlkha1cZ4qEBI0LKuGx4aGgMA1vZjHIa4lQHpd1cUCG9F5Jw6vaInpuSPpttTB5fvq
         EZhR0hjjBG1twx3628OOHeNbUo2kUaoYf36ySz/UwAO7i7iKkiNCmjCFIrF35hf+obfT
         RYeigbq128ieZAcArNvOCxXdA3mV0r6rqSkSlDpM1MrS8KtvTsQl/h8ojpcEH5nZZgIh
         PgbiRM8ExTA/Ulp5rCqlH+1lLB9STfMLlsEEylYQbHuMuh6DtBWUHB+pQf2yikRaHQGe
         50SQ==
X-Gm-Message-State: AOAM5330lE+ZkPeasYzpOmVyQchCgFgR884qyfECMpGldeR/vbLZe4OM
	/iv1ILurVbKfyqL9Sjyv7GNAq/A0elw3cm9/ANGAKJJ7
X-Google-Smtp-Source: ABdhPJyx66Ms1bTybmE/AGsmt2+aBQeTNUbp18+LylvO5728mPwtQxkTyHGrjDkjskQG8d5CO1mxvn9P/mqc8DLYYdw=
X-Received: by 2002:a9f:264b:: with SMTP id 69mr5192324uag.112.1629262680056;
 Tue, 17 Aug 2021 21:58:00 -0700 (PDT)
MIME-Version: 1.0
References: <162909902310.11274.10452860937061882564@mm2.emwd.com> <CACDReSxmPoF72xO8NVw63jyso8Eguy06WRL9LDQ8McMuDuF++Q@mail.gmail.com>
In-Reply-To: <CACDReSxmPoF72xO8NVw63jyso8Eguy06WRL9LDQ8McMuDuF++Q@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Wed, 18 Aug 2021 00:57:24 -0400
Message-ID: <CAL7q81vsc7gxH4Pn1huc4aX3o_w4sv+bxHucSBOuZehxrhx7AA@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
Message-ID-Hash: 3WTWNS3LUR7NWK5PNND6QRB2UUWWWDVI
X-Message-ID-Hash: 3WTWNS3LUR7NWK5PNND6QRB2UUWWWDVI
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1 on E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3WTWNS3LUR7NWK5PNND6QRB2UUWWWDVI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1348238142399635608=="

--===============1348238142399635608==
Content-Type: multipart/alternative; boundary="0000000000004a717705c9ce4723"

--0000000000004a717705c9ce4723
Content-Type: text/plain; charset="UTF-8"

Hi Ofer,

The Replay block is not included in the UHD 4.1 FPGA image, as you can see
from its FPGA image yaml file:
https://github.com/EttusResearch/uhd/blob/UHD-4.1/fpga/usrp3/top/e320/e320_rfnoc_image_core.yml
.

You can add it by replacing the "fifo0" instance with a replay block
similar to here:
https://github.com/EttusResearch/uhd/blob/UHD-4.1/fpga/usrp3/top/x300/x310_rfnoc_image_core.yml#L63.
I would suggest reading this guide to understand how to edit the E320's
yaml file and build a new FPGA image:
https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0.

Jonathon

On Mon, Aug 16, 2021 at 4:30 AM Ofer Saferman <ofer@navigicom.com> wrote:

> Hello,
>
> Thank you for your suggestion. I will follow up on that.
> Any comment on the RFNoC replay block?
>
> Regards,
> Ofer Saferman
>
>
> On Mon, Aug 16, 2021 at 10:30 AM <usrp-users-request@lists.ettus.com>
> wrote:
>
>> Send USRP-users mailing list submissions to
>>         usrp-users@lists.ettus.com
>>
>> To subscribe or unsubscribe via email, send a message with subject or
>> body 'help' to
>>         usrp-users-request@lists.ettus.com
>>
>> You can reach the person managing the list at
>>         usrp-users-owner@lists.ettus.com
>>
>> When replying, please edit your Subject line so it is more specific
>> than "Re: Contents of USRP-users digest..."Today's Topics:
>>
>>    1. Re: UHD 4.1 on E320 (Marcus D. Leech)
>>
>>
>>
>> ---------- Forwarded message ----------
>> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
>> To: usrp-users@lists.ettus.com
>> Cc:
>> Bcc:
>> Date: Sun, 15 Aug 2021 08:38:46 -0400
>> Subject: [USRP-users] Re: UHD 4.1 on E320
>> On 08/15/2021 01:01 AM, Ofer Saferman wrote:
>> > Hello,
>> >
>> > I have a E320 that came out-of-the-box with an image on the SD card of
>> > UHD 3.15.
>> > What would be the easiest way to upgrade it to UHD 4.1?
>> > Is there an SD image that is ready to program?
>> > Do I have to rebuild it on the E320?
>> >
>> > Also, can you please comment if the FPGA image of UHD 4.1 comes with
>> > the RFNoC Replay block?
>> > What would be the shortest path for me to get any UHD version on the
>> > E320 that has the RFNoC replay block built-in without needing to
>> > rebuild the FPGA image by myself?
>> >
>> > Thanks,
>> > Ofer Saferman
>> >
>> >
>> Ofer:
>>
>> The uhd_images_downloader lets you download sd-card images these days,
>> as shown in this document:
>>
>> https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card
>>
>> So load up 4.1 on your host, and then use uhd_images_downloader to pull
>> down the relevant sd-card image.
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
> --
> This message has been scanned for viruses and
> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and is
> believed to be clean. _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004a717705c9ce4723
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ofer,<div><br></div><div>The Replay block is not includ=
ed in the UHD 4.1 FPGA image, as you can see from its FPGA image yaml file:=
=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/UHD-4.1/fpga/usr=
p3/top/e320/e320_rfnoc_image_core.yml">https://github.com/EttusResearch/uhd=
/blob/UHD-4.1/fpga/usrp3/top/e320/e320_rfnoc_image_core.yml</a>.</div><div>=
<br></div><div>You can add it by replacing the &quot;fifo0&quot; instance w=
ith a replay block similar to here: <a href=3D"https://github.com/EttusRese=
arch/uhd/blob/UHD-4.1/fpga/usrp3/top/x300/x310_rfnoc_image_core.yml#L63">ht=
tps://github.com/EttusResearch/uhd/blob/UHD-4.1/fpga/usrp3/top/x300/x310_rf=
noc_image_core.yml#L63</a>. I would suggest reading this guide to understan=
d how to edit the E320&#39;s yaml file and build a new=C2=A0FPGA image:=C2=
=A0<a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0">h=
ttps://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0</a>.</div><div><b=
r></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Mon, Aug 16, 2021 at 4:30 AM Ofer Saferman &l=
t;<a href=3D"mailto:ofer@navigicom.com">ofer@navigicom.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div dir=3D"ltr">Hello,</div><div dir=3D"ltr"><br></div><div>Thank you for =
your suggestion. I will follow up on that.</div><div>Any comment on the RFN=
oC replay block?</div><div><br></div><div>Regards,</div><div>Ofer Saferman<=
br></div><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Aug 16, 2021 at 10:30 AM &lt;<a href=
=3D"mailto:usrp-users-request@lists.ettus.com" target=3D"_blank">usrp-users=
-request@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">Send USRP-users mailing list submissions to<br>
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
than &quot;Re: Contents of USRP-users digest...&quot;Today&#39;s Topics:<br=
>
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
So load up 4.1 on your host, and then use uhd_images_downloader to pull <br=
>
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

--0000000000004a717705c9ce4723--

--===============1348238142399635608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1348238142399635608==--
