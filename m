Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 804C571858
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2019 14:37:19 +0200 (CEST)
Received: from [::1] (port=37756 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hpu2Z-0002KT-9P; Tue, 23 Jul 2019 08:37:11 -0400
Received: from mail-lf1-f41.google.com ([209.85.167.41]:41224)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1hpu2V-00029g-UY
 for usrp-users@lists.ettus.com; Tue, 23 Jul 2019 08:37:08 -0400
Received: by mail-lf1-f41.google.com with SMTP id 62so24357017lfa.8
 for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2019 05:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jovv2SSgtfDlwhzyL0bViWOvbP/Jpn5EgsJmrGq1quE=;
 b=PNHsBQUZVYb/wtd/3l216bg739D8yOXAaddvzDIdoHEiZOSN94w6wWE67T2r4R5SND
 S35jkvuWzqqTdgND/v85B0bkjGUcIFNgbQvwm+vtsp2tDk6AGbsoxiqHSWccpnHyKQTh
 z0rGjVqbIQlwu6Yss3ZiKjy5rHk+sJ134Fplii17BgpXbV42DTmbCCKqw14Kg/SoYyfM
 b51HoqU3eMO6A3zBpPgi6z6SduQ1OICN43CdPK+6TASXUCl1vAm6s8wOcgysXiKv6tP5
 6Mi9cQ2fBBn27QrKI/JQ8Ul9rgAmPfJIjJ1qlsYzG4bjkt9y5uAaLogFFFzOyUP+SIkg
 NcEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jovv2SSgtfDlwhzyL0bViWOvbP/Jpn5EgsJmrGq1quE=;
 b=TkTSNxjaVsod53N+uKRsSldGqO/Tr7gMx+4sFVogvm8WtBtf0BORRu8ugZsUFUvWIX
 DrAETmKztt5ywvVhWwOY1eIRXA8/U2QkLEpCz6Pzqqmje4op8xoYhme47YSLsq5/5Gvb
 GrKCGy6JDnnj3qobgyH3F7eP27e/6qTzcO6rgYZLiMMLzy9/3JHOsP02zzmf/rLLEszN
 V/I2EyVeBq2d7etAHvTg9A5hJNQLw8AvJ+IZhrJ6cZf057gfc48JkwODsKr6ZI25r1cl
 Xfl6P79yoUHXMfmyE5t6y4rc7/w8Q4LsEPptJ57SS2ujr3iYijHGbDMkyds2Mz5YNrWP
 J1eg==
X-Gm-Message-State: APjAAAWY2iAUE/4Li6/DfmQZHqqMToKu3SJ7BPoc4/wbVIpaWbPP/oFT
 fDVBGZfJttOy+3sP0UoNbE+zcy0vBUuhPZqdJEQm6kcw
X-Google-Smtp-Source: APXvYqyxo29tGvtLkrOH4ECFq8oNHaT1GdTe4zZx8stgbAxi1k3Epmt8Sp/mHIXFZu/EbHaZdxVO1ahayhfMjscJblQ=
X-Received: by 2002:ac2:5bc7:: with SMTP id u7mr35744788lfn.167.1563885386648; 
 Tue, 23 Jul 2019 05:36:26 -0700 (PDT)
MIME-Version: 1.0
References: <CALVKaGf-6NCbGO2ACQ+Oaz_4GYgpMPOU=BsAe5AcigmzdH7w9w@mail.gmail.com>
 <CAL7q81sPt2Ewf5TQu1Z0jY9ySeDGAYwzstnExK+0Da=TityWXQ@mail.gmail.com>
 <CALVKaGdGAVsyB-Zok23rOFAM1cxs8oB6nkFCNxWBBMwQjd-TMg@mail.gmail.com>
In-Reply-To: <CALVKaGdGAVsyB-Zok23rOFAM1cxs8oB6nkFCNxWBBMwQjd-TMg@mail.gmail.com>
Date: Tue, 23 Jul 2019 21:35:50 +0900
Message-ID: <CAL7q81uqKnaBqPwyCahpnPCGbCKH9Kt3g_ytq0EakyCkahkprw@mail.gmail.com>
To: Scott Mullin <smullin2@nd.edu>
Subject: Re: [USRP-users] Noc_block_Schmidl_cox Timing error
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7697575453649822683=="
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

--===============7697575453649822683==
Content-Type: multipart/alternative; boundary="000000000000f0e799058e58709a"

--000000000000f0e799058e58709a
Content-Type: text/plain; charset="UTF-8"

Hi Scott,

The CORDIC Xilinx IP is breaking timing. The CORDIC's bit width could be
better optimized, but changing it would require editing of other parts of
the code too.

One simple thing you could try is hand editing
fpga/usrp3/top/x300/rfnoc_ce_auto_inst_x310.v and changing
noc_block_schmidl_cox's input from ".ce_clk(ce_clk)," to
".ce_clk(bus_clk),". Note that the file is overwritten when running
uhd_image_builder, so you'll need to run the FPGA build Makefile manually
(i.e. make X310_HG_RFNOC).

If you are still failing timing using bus_clk, you can also try
bus_clk_div2.

Jonathon

On Thu, Jul 18, 2019 at 9:34 PM Scott Mullin <smullin2@nd.edu> wrote:

> Jonathan,
> Thanks for the heads up on this block.Full disclosure, I am fairly new to
> this so I am not sure how to tell. Here are the build.rpt and timing
> reports from the build I did this morning.
>
> Hope that helps.
>
> Scott
>
> On Wed, Jul 17, 2019 at 11:50 PM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hi Scott,
>>
>> What paths are failing timing? Also, the Schmidl Cox block has some
>> design issues that need fixed before it can be useful again. If I remember
>> correctly, I think there is an issue with the peak detection logic.
>>
>> Jonathon
>>
>> On Wed, Jul 17, 2019 at 2:28 AM Scott Mullin via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hello,
>>>
>>> I am trying to use the schmidl_cox noc block but when I build an fpga
>>> image for an x310 with uhd_image_builder I get a timing error.  I have
>>> tried building an fpga image with only one CE, the scmidl_cox noc block,
>>> and it still gives me a timing error, so its not due to resource
>>> utilization, which is when I typically get a timing error.
>>>
>>> Has anyone else had this issue? Any help would be appreciated.
>>>
>>> --
>>> Scott Mullin
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>
> --
> Scott Mullin
> University of Notre Dame
> Engineering and Design Core Facility
> 204D Nieuwland Science Hall
> University of Notre Dame
> IN 46556
>

--000000000000f0e799058e58709a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Scott,<div><br></div><div>The CORDIC Xilinx IP is break=
ing timing. The CORDIC&#39;s bit width could be better optimized, but chang=
ing it would require editing of other parts of the code too.</div><div><br>=
</div><div>One simple thing you could try is hand editing fpga/usrp3/top/x3=
00/rfnoc_ce_auto_inst_x310.v and changing noc_block_schmidl_cox&#39;s input=
 from &quot;.ce_clk(ce_clk),&quot; to &quot;.ce_clk(bus_clk),&quot;. Note t=
hat the file is overwritten when running uhd_image_builder, so you&#39;ll n=
eed to run the FPGA build Makefile manually (i.e. make X310_HG_RFNOC).</div=
><div><br></div><div>If you are still failing timing using bus_clk, you can=
 also try bus_clk_div2.</div><div><br></div><div>Jonathon</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul =
18, 2019 at 9:34 PM Scott Mullin &lt;<a href=3D"mailto:smullin2@nd.edu">smu=
llin2@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div>Jonathan,</div><div>Thanks for the heads =
up on this block.Full disclosure, I am fairly new to this so I am not sure =
how to tell. Here are the build.rpt and timing reports from the build I did=
 this morning.</div><div><br></div><div>Hope that helps.</div><div><br></di=
v><div>Scott<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Wed, Jul 17, 2019 at 11:50 PM Jonathon Pendlum &lt=
;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.p=
endlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr">Hi Scott,<div><br></div><div>What paths ar=
e failing timing? Also, the Schmidl Cox block has some design issues that n=
eed fixed before it can be useful again. If I remember correctly, I think t=
here is an issue with the peak detection logic.</div><div><br></div><div>Jo=
nathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Wed, Jul 17, 2019 at 2:28 AM Scott Mullin via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users=
@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I am =
trying to use the schmidl_cox noc block but when I build an fpga image for =
an x310 with uhd_image_builder I get a timing error.=C2=A0 I have tried bui=
lding an fpga image with only one CE, the scmidl_cox noc block, and it stil=
l gives me a timing error, so its not due to resource utilization, which is=
 when I typically get a timing error.=C2=A0 <br></div><div><br></div><div>H=
as anyone else had this issue? Any help would be appreciated.</div><div></d=
iv><br>-- <br><div dir=3D"ltr" class=3D"gmail-m_-907181027980298289gmail-m_=
-8398444084758923462gmail-m_-9123974367893188567gmail_signature"><div dir=
=3D"ltr"><div style=3D"font-size:small">Scott Mullin</div><br></div></div><=
/div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail-m_-907181027980298289gmail_signature"><div dir=3D"ltr"><div style=3D"f=
ont-size:small">Scott Mullin</div><div style=3D"font-size:small"><span styl=
e=3D"font-size:12.8px">University of Notre Dame</span></div><div style=3D"f=
ont-size:small"><span style=3D"font-size:12.8px">Engineering and Design Cor=
e Facility</span><br></div><div style=3D"font-size:small"><span style=3D"fo=
nt-size:12.8px">204D Nieuwland Science Hall</span><br style=3D"font-size:12=
.8px"><span style=3D"font-size:12.8px">University of Notre Dame</span><br s=
tyle=3D"font-size:12.8px"><span style=3D"font-size:12.8px">IN 46556</span><=
/div></div></div>
</blockquote></div>

--000000000000f0e799058e58709a--


--===============7697575453649822683==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7697575453649822683==--

