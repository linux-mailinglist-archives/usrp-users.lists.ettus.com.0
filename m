Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D0795718E5
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2019 15:09:09 +0200 (CEST)
Received: from [::1] (port=44372 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hpuXU-0004d3-1s; Tue, 23 Jul 2019 09:09:08 -0400
Received: from mail-vs1-f53.google.com ([209.85.217.53]:44164)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ejkreinar@gmail.com>) id 1hpuXR-0004Vh-5F
 for usrp-users@lists.ettus.com; Tue, 23 Jul 2019 09:09:05 -0400
Received: by mail-vs1-f53.google.com with SMTP id v129so28721693vsb.11
 for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2019 06:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LTT2j+Wl85WzNWP2ybLvQZSdUf2GyHkJo8aG9gdCnX0=;
 b=ccOIBRGkjPvbMrIXkh9kDx0TfLTqyhUgdPV9ZvQjCv5NFpzwAohpZDZgN8CjUZs0Ae
 59AVxBdRaEV2WmyqmpLGB+Bj5hPuQSXtkmOEuZAyECZ9BrlnLIPyyf8txIGfNCYQyPn7
 g8P0TU5y8DORy1ye4esQvUiR6ynbFKQOgXwTtdP31qXoXj7/oSOlZNEJWKr6kx0fVQtM
 y5i5l6MEQSWZTLn35ZQXSWrwACc7X7WnIhR29Tlh1/QeFq/ncsqMwM1ydsOCCBl+8QrE
 oLqYu5bCkId5XAqW/dzehFOo7yUTdRMs+XOT2eFgUfXQiI62mOVH15SnnO0sm5diJo0N
 hndw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LTT2j+Wl85WzNWP2ybLvQZSdUf2GyHkJo8aG9gdCnX0=;
 b=uUMv0CkZyJ/EXBTvEOFTwOck/hkMEkPIXmw25GOz0GS2LoZFj9SqeUZyCbXKmfJR6F
 06ut9v8WtaaEiPPbj8Y1ks2hklFSEBeLM3BHBhgzCCgeug0QJDazJtFQ1z72h/Oz+XtK
 nFjPcaVewdebVG+76XpYPefsCrdbgu7/7Mp+saZM19I3w5Aq1kqVkFcvqb+zF4RocCki
 BDCXOn8zkcPMcPhu0FvFHv1vunsB81sRmh8h0NcXm5Mb6CK5DD2r99euiWEnKA1iTsgl
 Rwi5FPUo+ITWZkA8mdL7snoTKobsiYSoVYX5ra/UHFD/yBePd/jiHsJw3xMLjp0fjxaS
 Wa0Q==
X-Gm-Message-State: APjAAAWRc6SXeXZCCt/MWpQNEqTJoJjRXYbKjdVJzKxG9Ca3m6M9yPXP
 E80HFMxBhBHgwVJnSeYHS+P0uipDCOdrt5ltWsw=
X-Google-Smtp-Source: APXvYqzU4yFuUTBE2C6b8kpeQC35w2NTbJY+IhrnTP+KOWu+1NJxuw6t/cv9Y7bIblbKBL2WlbFlNGgwtkW8yeCVxyU=
X-Received: by 2002:a67:de0b:: with SMTP id q11mr31516289vsk.134.1563887304227; 
 Tue, 23 Jul 2019 06:08:24 -0700 (PDT)
MIME-Version: 1.0
References: <CY4PR2201MB143165C90E3A0F9BA29FDAAEFFC40@CY4PR2201MB1431.namprd22.prod.outlook.com>
 <CADRnH20GMjTFwnvvuT9k-f1hN=GeVCFZtCFHBYZeLPUMLvRDmA@mail.gmail.com>
 <CY4PR2201MB1431968AB2E2046733F7320FFFC70@CY4PR2201MB1431.namprd22.prod.outlook.com>
 <CADRnH20CoY_+KQfffwdZMUo0==LyYpyymNcED1-=VZg9kEOM7A@mail.gmail.com>
 <CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70@CY4PR2201MB1431.namprd22.prod.outlook.com>
In-Reply-To: <CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70@CY4PR2201MB1431.namprd22.prod.outlook.com>
Date: Tue, 23 Jul 2019 09:08:12 -0400
Message-ID: <CADRnH20rG-F18avmn-rz69iycE=Nhju4FpsmMWyBziHj94ECrg@mail.gmail.com>
To: Kirsten S Leong <leong3@purdue.edu>
Subject: Re: [USRP-users] RFNoC OOT Issues
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3782257975852974603=="
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

--===============3782257975852974603==
Content-Type: multipart/alternative; boundary="0000000000003cc336058e58e376"

--0000000000003cc336058e58e376
Content-Type: text/plain; charset="UTF-8"

I havent seen anything too egregious inspecting the files you sent.

A few debugging ideas...
- Are you able to run the simulation testbench correctly for
noc_block_fmdemod?
- I didnt see your file that corresponds with the ip/Makefile.inc (
https://github.com/ejk43/rfnoc-ootexample/blob/master/rfnoc/ip/Makefile.inc).
Do you have that file in your tree, and does it correctly point to the IP
you're trying to build?

If your code is on github link I could take a look that way -- might be
easier to diagnose.
EJ



On Tue, Jul 23, 2019 at 7:53 AM Kirsten S Leong <leong3@purdue.edu> wrote:

> I've attached the makefiles of the IPs and the other subdirectories in the
> rfnoc folder.
>
>
> Thanks,
>
> Kirsten
> ------------------------------
> *From:* EJ Kreinar <ejkreinar@gmail.com>
> *Sent:* Monday, July 22, 2019 6:36:27 PM
> *To:* Kirsten S Leong <leong3@purdue.edu>
> *Subject:* Re: RFNoC OOT Issues
>
> Okay sounds good.
>
> Rfnoc devel branch should be fine, but it's now getting a bit old. The
> most updated guidance I would recommend is to use one of their tagged
> branches, say v3.13.x.x or v3.14.x.x. The software needs a cmake compile
> flag "-DENABLE_RFNOC 1" but that's a bit downstream...
>
> The most likely scenario here is that the makefiles for building the IP
> aren't quite right. Can you copy or attach the makefiles from the ip folder
> and subdirectories?
>
> Also, building the IP inside the fpga folder is intended behavior-- it's
> all generated to retarget each part you build for.
>
> EJ
>
> On Mon, Jul 22, 2019, 9:19 PM Kirsten S Leong <leong3@purdue.edu> wrote:
>
> Yes, I emailed the mailing list. I'll shift over there once I have access
> to my work email.
>
> I pulled from the rfnoc-devel branch and the data width converter is in
> the ip folder of my OOT module.
>
> Thanks,
> Kirsten
> ------------------------------
> *From:* EJ Kreinar <ejkreinar@gmail.com>
> *Sent:* Monday, July 22, 2019 5:33:02 PM
> *To:* Kirsten S Leong <leong3@purdue.edu>
> *Subject:* Re: RFNoC OOT Issues
>
> Hi Kirsten,
>
> Not sure what you mean by the usrp users site? You should be able to just
> email the mailing list at usrp-users@lists.ettus.com
>
> Anyway, first what version of uhd-fpga are you using?
>
> Also, is this ip from your OOT module?
>
> Feel free to send to the usrp-users mailing list too if you'd like to chat
> there.
>
> Best regards,
> Ej
>
>
>
> On Mon, Jul 22, 2019, 4:52 PM Kirsten S Leong <leong3@purdue.edu> wrote:
>
> Hello,
>
>
> I first submitted a post to the USRP-users site but it hasn't been
> accepted for a week. It's my first time building an RFNoC image and was
> running into issues on my custom OOT block which uses Xilinx IPs and a data
> width converter. I modeled the Makefiles after the ones in your example
> repository but I get the error:
>
>
> make[1]:***No rule to make target
> '/home/kleong/projects/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axis_dwidth_converter_32to64/axis_dwidth_converter_32to64.xci',
> needed by 'bin'. Stop.
>
> make[1]: Leaving directory '/home/kleong/projects/fpga/usrp3/top/x300'
>
> Makefile:119: recipe for target 'X310_RFNOC_HG' failed
>
> make: *** [X310_RFNOC_HG] Error 2
>
>
> This occurs when I run the command ./uhd_image_builder.py fmdemod -t
> X310_RFNOC_HG -d X310 -I /home/kleong/projects/rfnoc-fmdemod/rfnoc/
> --fill-with-fifos
>
>
> The block can be successfully simulated, but I'm not sure why make file is
> looking for the IPs in the fpga repository.
>
>
> Thanks,
>
> Kirsten
>
>
>

--0000000000003cc336058e58e376
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I havent seen anything too egregious inspecting the f=
iles you sent.</div><div><br></div><div>A few debugging ideas...</div><div>=
- Are you able to run the simulation testbench correctly for noc_block_fmde=
mod?<br></div><div>- I didnt see your file that corresponds with the ip/Mak=
efile.inc (<a href=3D"https://github.com/ejk43/rfnoc-ootexample/blob/master=
/rfnoc/ip/Makefile.inc">https://github.com/ejk43/rfnoc-ootexample/blob/mast=
er/rfnoc/ip/Makefile.inc</a>). Do you have that file in your tree, and does=
 it correctly point to the IP you&#39;re trying to build?</div><div><br></d=
iv><div>If your code is on github link I could take a look that way -- migh=
t be easier to diagnose.</div><div>EJ</div><div><br></div><div><br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Tue, Jul 23, 2019 at 7:53 AM Kirsten S Leong &lt;<a href=3D"mailto:leong3@=
purdue.edu">leong3@purdue.edu</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_6071100821001093350divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"=
ltr">
<div id=3D"gmail-m_6071100821001093350divtagdefaultwrapper" dir=3D"ltr" sty=
le=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-se=
rif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,Noto=
ColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbo=
ls">
<p style=3D"margin-top:0px;margin-bottom:0px">I&#39;ve attached the makefil=
es of the IPs and the other subdirectories in the rfnoc folder.
<br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">Thanks,</p>
<p style=3D"margin-top:0px;margin-bottom:0px">Kirsten<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_6071100821001093350divRplyFwdMsg" dir=3D"ltr"><font styl=
e=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From=
:</b> EJ Kreinar &lt;<a href=3D"mailto:ejkreinar@gmail.com" target=3D"_blan=
k">ejkreinar@gmail.com</a>&gt;<br>
<b>Sent:</b> Monday, July 22, 2019 6:36:27 PM<br>
<b>To:</b> Kirsten S Leong &lt;<a href=3D"mailto:leong3@purdue.edu" target=
=3D"_blank">leong3@purdue.edu</a>&gt;<br>
<b>Subject:</b> Re: RFNoC OOT Issues</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"auto">Okay sounds good.=C2=A0
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Rfnoc devel branch should be fine, but it&#39;s now getti=
ng a bit old. The most updated guidance I would recommend is to use one of =
their tagged branches, say v3.13.x.x or v3.14.x.x. The software needs a cma=
ke compile flag &quot;-DENABLE_RFNOC 1&quot; but
 that&#39;s a bit downstream...</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">The most likely scenario here is that the makefiles for b=
uilding the IP aren&#39;t quite right. Can you copy or attach the makefiles=
 from the ip folder and subdirectories?</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Also, building the IP inside the fpga folder is intended =
behavior-- it&#39;s all generated to retarget each part you build for.</div=
>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">EJ</div>
</div>
<br>
<div class=3D"gmail-m_6071100821001093350x_gmail_quote">
<div dir=3D"ltr" class=3D"gmail-m_6071100821001093350x_gmail_attr">On Mon, =
Jul 22, 2019, 9:19 PM Kirsten S Leong &lt;<a href=3D"mailto:leong3@purdue.e=
du" id=3D"gmail-m_6071100821001093350LPlnk886708" class=3D"gmail-m_60711008=
21001093350OWAAutoLink" target=3D"_blank">leong3@purdue.edu</a>&gt; wrote:<=
br>
</div>
<blockquote class=3D"gmail-m_6071100821001093350x_gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_6071100821001093350x_m_-5039304668561236165divtagdefault=
wrapper" dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:C=
alibri,Helvetica,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;S=
egoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Androi=
d Emoji&quot;,EmojiSymbols">
Yes, I emailed the mailing list. I&#39;ll shift over there once I have acce=
ss to=C2=A0my work email.=C2=A0
<div><br>
</div>
<div>I pulled from the rfnoc-devel branch and=C2=A0the data width converter=
 is in the ip folder of my OOT module.=C2=A0</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Kirsten</div>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_6071100821001093350x_m_-5039304668561236165divRplyFwdMsg=
" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" c=
olor=3D"#000000"><b>From:</b> EJ Kreinar &lt;<a href=3D"mailto:ejkreinar@gm=
ail.com" rel=3D"noreferrer" id=3D"gmail-m_6071100821001093350LPlnk816094" c=
lass=3D"gmail-m_6071100821001093350OWAAutoLink" target=3D"_blank">ejkreinar=
@gmail.com</a>&gt;<br>
<b>Sent:</b> Monday, July 22, 2019 5:33:02 PM<br>
<b>To:</b> Kirsten S Leong &lt;<a href=3D"mailto:leong3@purdue.edu" rel=3D"=
noreferrer" id=3D"gmail-m_6071100821001093350LPlnk729933" class=3D"gmail-m_=
6071100821001093350OWAAutoLink" target=3D"_blank">leong3@purdue.edu</a>&gt;=
<br>
<b>Subject:</b> Re: RFNoC OOT Issues</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"auto">Hi Kirsten,
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Not sure what you mean by the usrp users site? You should=
 be able to just email the mailing list at
<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer" id=3D"gmai=
l-m_6071100821001093350LPlnk577680" class=3D"gmail-m_6071100821001093350OWA=
AutoLink" target=3D"_blank">
usrp-users@lists.ettus.com</a></div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Anyway, first what version of uhd-fpga are you using?</di=
v>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Also, is this ip from your OOT module?<br>
</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Feel free to send to the usrp-users mailing list too if y=
ou&#39;d like to chat there.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Best regards,</div>
<div dir=3D"auto">Ej</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto"><br>
</div>
</div>
<br>
<div class=3D"gmail-m_6071100821001093350x_m_-5039304668561236165x_gmail_qu=
ote">
<div dir=3D"ltr" class=3D"gmail-m_6071100821001093350x_m_-50393046685612361=
65x_gmail_attr">On Mon, Jul 22, 2019, 4:52 PM Kirsten S Leong &lt;<a href=
=3D"mailto:leong3@purdue.edu" rel=3D"noreferrer noreferrer" id=3D"gmail-m_6=
071100821001093350LPlnk938211" class=3D"gmail-m_6071100821001093350OWAAutoL=
ink" target=3D"_blank">leong3@purdue.edu</a>&gt;
 wrote:<br>
</div>
<blockquote class=3D"gmail-m_6071100821001093350x_m_-5039304668561236165x_g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_6071100821001093350x_m_-5039304668561236165x_m_-40534587=
26004473758m_1338525550347897157divtagdefaultwrapper" dir=3D"ltr" style=3D"=
font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif,Em=
ojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorE=
moji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p style=3D"margin-top:0px;margin-bottom:0px">Hello, <br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">I first submitted a post to t=
he USRP-users site but it hasn&#39;t been accepted for a week. It&#39;s my =
first time building an RFNoC image and was running into issues on my custom=
 OOT block which uses Xilinx IPs and a data width
 converter. I modeled the Makefiles after the ones in your example reposito=
ry but I get the error:</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">make[1]:***No rule to make ta=
rget &#39;/home/kleong/projects/fpga/usrp3/top/x300/build-ip/xc7k410tffg900=
-2/axis_dwidth_converter_32to64/axis_dwidth_converter_32to64.xci&#39;, need=
ed by &#39;bin&#39;. Stop.</p>
<p style=3D"margin-top:0px;margin-bottom:0px">make[1]: Leaving directory &#=
39;/home/kleong/projects/fpga/usrp3/top/x300&#39;</p>
<p style=3D"margin-top:0px;margin-bottom:0px">Makefile:119: recipe for targ=
et &#39;X310_RFNOC_HG&#39; failed</p>
<p style=3D"margin-top:0px;margin-bottom:0px">make: *** [X310_RFNOC_HG] Err=
or 2</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">This occurs when I run the co=
mmand ./uhd_image_builder.py fmdemod -t X310_RFNOC_HG -d X310 -I /home/kleo=
ng/projects/rfnoc-fmdemod/rfnoc/ --fill-with-fifos</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">The block can be successfully=
 simulated, but I&#39;m not sure why make file is looking for the IPs in th=
e fpga repository.
<br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">Thanks,</p>
<p style=3D"margin-top:0px;margin-bottom:0px">Kirsten<br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>

</blockquote></div>

--0000000000003cc336058e58e376--


--===============3782257975852974603==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3782257975852974603==--

