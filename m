Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D230A796E
	for <lists+usrp-users@lfdr.de>; Wed,  4 Sep 2019 05:46:46 +0200 (CEST)
Received: from [::1] (port=49942 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5MFo-0000V1-M8; Tue, 03 Sep 2019 23:46:44 -0400
Received: from mail-io1-f49.google.com ([209.85.166.49]:41784)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1i5MFk-0000N9-2K
 for usrp-users@lists.ettus.com; Tue, 03 Sep 2019 23:46:40 -0400
Received: by mail-io1-f49.google.com with SMTP id w15so1170664iol.8
 for <usrp-users@lists.ettus.com>; Tue, 03 Sep 2019 20:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4Dq3clvNBDtE+94gb+eik77+5Eebe3OKDDumrz4C1mE=;
 b=Yz/La+4dAiTM69J42DaWxw2thwhxd6PyoudQcz6LOap7FPXdAS/hLEZzBwZjQeA2R3
 IpNMVBpAbCOOhGOyZZlFQWwcoqoqtI0eW2nB+0DTmgPPJ7HlHuOFDP6ulhircFw+/Bl8
 k96Ckc2kL7jnHjKLL9wBWhbRMBZL8nT92G6sqqKK3a9imKzai0LDOUMNEJHeRJhklUHZ
 qKmOtHSmIFMD59TVdiEWYEGYcJ1umfNQSw4hi02QKzd7YM/xFKY7r+jsdCgMga5eqJMM
 7jwPjMuPf9IgaLVTPAf4doVLhOzzGFdwEN9V4Xb6ihGOAQEEzrmwJbfUxpvYxu294W4K
 1Qlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4Dq3clvNBDtE+94gb+eik77+5Eebe3OKDDumrz4C1mE=;
 b=VWeRN1tT64y/aGrwwEkIGvMapMrUm6knPhpN7kUi/cJJ7ITm7dH8rrzmFh7AWBh0jU
 I4Q3sfjCc2Mki+iNQ7AMy+8tAJLe95JwrbeTPd12BaAIO1dpifDOgQJqh3A2h2U3Ssol
 QBjESdWWa4uyEkYw/VBI545d6S7eKum2ajzClgTUcX9iqi9NBhbmCAqoILJJ7xs3kX4d
 rDDhZiY8RgWD4x8NySHmywoaiGo1pXrep9IL8Tr1jfl+ysGjjYjJCjPbH+gJu3lJgxoc
 q40yQyiyiXM/BiorL8ZhNd5XHsGErU9v4ROBOR0SrfZRHKg3BXpoXCNqzM3d2mzEEHBM
 yPgA==
X-Gm-Message-State: APjAAAWvL1CJtzB0QY2Dcvc2YO9OBXTJluwo9Gl7IzlMHrXMv3R65mwk
 OJacv2qtYDAr810epSi/YYGU5T3JlIAMc7wZ2iI=
X-Google-Smtp-Source: APXvYqwsw7ePchrkT20GolnI1HrnRyonG4kDLYLHqiqY8iQFlldJwIduVRWgxCRyuGslz4wcYyOhjWyjVPC5lDY+IqM=
X-Received: by 2002:a6b:7a09:: with SMTP id h9mr11165400iom.0.1567568759333;
 Tue, 03 Sep 2019 20:45:59 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR03MB3788A9542C8AEE2E59A04D4DE6B90@DM6PR03MB3788.namprd03.prod.outlook.com>
 <CA+JMMq80MhC7x4O8W8ytrnFVxEO_ER-e+gC7yX2LM5mb6tdSHw@mail.gmail.com>
 <DM6PR03MB37884233E0BD08DDF53EC805E6B90@DM6PR03MB3788.namprd03.prod.outlook.com>
 <CA+JMMq9qN1ah88g-1NTeDsn7ybnJxm3wpSKyMxqbWe3erb6jRw@mail.gmail.com>
 <DM6PR03MB37880EB10D6C1538CE6FAF19E6B80@DM6PR03MB3788.namprd03.prod.outlook.com>
In-Reply-To: <DM6PR03MB37880EB10D6C1538CE6FAF19E6B80@DM6PR03MB3788.namprd03.prod.outlook.com>
Date: Tue, 3 Sep 2019 20:45:46 -0700
Message-ID: <CA+JMMq-jpVG6pUTjvy3JqQjtCWBg0qxYLeP2G7xPfp-Z4j3h_Q@mail.gmail.com>
To: "Quadri,Adnan" <adnan.quadri@louisville.edu>
Subject: Re: [USRP-users] Addsub HLS Block Error
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5895177527461648696=="
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

--===============5895177527461648696==
Content-Type: multipart/alternative; boundary="0000000000000faa940591b20be2"

--0000000000000faa940591b20be2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That shouldn't be. Even if you connect both outputs to the host?

I admit I got fed up with it in my own application (don't want both streams
going into the host) and just modified the addsub block to be an add-only
block.

On Tue, Sep 3, 2019 at 8:43 PM Quadri,Adnan <adnan.quadri@louisville.edu>
wrote:

> I tried connecting one Signal Source block to both the inputs of addsub
> block. It still throws the same error.
>
> Adnan
> ------------------------------
> *From:* Nick Foster <bistromath@gmail.com>
> *Sent:* Tuesday, September 3, 2019 11:40:05 PM
> *To:* Quadri,Adnan <adnan.quadri@louisville.edu>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Addsub HLS Block Error
>
> Oh, I see. You have separate sources connected to the same addsub block.
> It's telling you that you need to use timed stream commands to start the
> stream, or else you will see undefined behavior. Personally I think that
> error should be demoted to a warning -- anyone from Ettus want to chime i=
n?
>
> On Tue, Sep 3, 2019 at 3:53 PM Quadri,Adnan <adnan.quadri@louisville.edu>
> wrote:
>
>> Hello,
>>
>> Thank you for your prompt response. I have connected both the addsub
>> output to two QT Gui Sink but I still get the same error. I have the Cop=
y
>> block in the middle as well.
>>
>> I am attaching a screenshot of my flowgraph. I tried with different USRP
>> sources/Signal Sources as well. But it is the same error.
>>
>> Thanks,
>> Adnan
>>
>> ------------------------------
>> *From:* Nick Foster <bistromath@gmail.com>
>> *Sent:* Tuesday, September 3, 2019 3:57 PM
>> *To:* Quadri,Adnan <adnan.quadri@louisville.edu>
>> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>> *Subject:* Re: [USRP-users] Addsub HLS Block Error
>>
>> I ran into this the other day and it's independent of the HLS component
>> of the addsub block (since the interface is identical). You need to conn=
ect
>> both outputs of the addsub block to something, even a null sink. I'm pre=
tty
>> sure this wasn't the intended behavior and also pretty sure that it wasn=
't
>> like this last time I checked (which was more than a year ago), so maybe=
 it
>> should be filed as a bug.
>>
>> Nick
>>
>> On Tue, Sep 3, 2019 at 1:48 PM Quadri,Adnan via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> Hello,
>>
>> We are trying to run the RFNoC addsub HLS block.
>>
>> I was able to build the FPGA Image and made sure in the noc_block verilo=
g
>> code to point to the HLS implementation for addsub block on RFNoC as
>> opposed to the verilog/VHDL implementation.
>>
>> But when we run the example Flowgraph with two signal source as input to
>> the two inputs for addsub block on GRC, we get the following error -
>>
>> ERROR:
>> thread[thread-per-block[4]: <block uhd_rfnoc_AddSub (1)>]: RuntimeError:
>> Invalid recv stream command - stream now on multiple channels in a singl=
e
>> streamer will fail to time align.
>>
>> Does this have anything to do with the C++ code for HLS implementation o=
r
>> is it a problem at UHD level?
>>
>> Thanks,
>> Adnan
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_m=
ailman_listinfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DOAG1LQNACBDgu=
GvBeNj18Swhr9TMTjS-x4O_KuapPgY&r=3DJoNl3b2Pn0MHhs668QvjpcSGl6s3MEmtJLBypH6x=
02U&m=3DXH0fqWeFmcl-P0_Y01iOhbHXEKDsJDUBaImT_nfh0t4&s=3D_hsJH03rqnDSUZXWGyx=
31-8I7HJLsU5_S5hs-j5_WRw&e=3D>
>>
>>

--0000000000000faa940591b20be2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>That shouldn&#39;t be. Even if you connect both outpu=
ts to the host?</div><div><br></div><div>I admit I got fed up with it in my=
 own application (don&#39;t want both streams going into the host) and just=
 modified the addsub block to be an add-only block.<br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 3,=
 2019 at 8:43 PM Quadri,Adnan &lt;<a href=3D"mailto:adnan.quadri@louisville=
.edu">adnan.quadri@louisville.edu</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">



<div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0px;padding:0px;font-family=
:sans-serif;font-size:11pt;color:black">
I tried connecting one Signal Source block to both the inputs of addsub blo=
ck. It still throws the same error.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr;margin:0px;padding:0px;font-family=
:sans-serif;font-size:11pt;color:black">
Adnan<span id=3D"gmail-m_-4590351526468517139OutlookSignature"></span><br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-4590351526468517139divRplyFwdMsg" dir=3D"ltr"><font sty=
le=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fro=
m:</b> Nick Foster &lt;<a href=3D"mailto:bistromath@gmail.com" target=3D"_b=
lank">bistromath@gmail.com</a>&gt;<br>
<b>Sent:</b> Tuesday, September 3, 2019 11:40:05 PM<br>
<b>To:</b> Quadri,Adnan &lt;<a href=3D"mailto:adnan.quadri@louisville.edu" =
target=3D"_blank">adnan.quadri@louisville.edu</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Addsub HLS Block Error</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Oh, I see. You have separate sources connected to the same=
 addsub block. It&#39;s telling you that you need to use timed stream comma=
nds to start the stream, or else you will see undefined behavior. Personall=
y I think that error should be demoted
 to a warning -- anyone from Ettus want to chime in?<br>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 3, 2019 at 3:53 PM Quadri=
,Adnan &lt;<a href=3D"mailto:adnan.quadri@louisville.edu" target=3D"_blank"=
>adnan.quadri@louisville.edu</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thank you for your prompt response. I have connected both the addsub output=
 to two QT Gui Sink but I still get the same error. I have the Copy block i=
n the middle as well.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I am attaching a screenshot of my flowgraph. I tried with different USRP so=
urces/Signal Sources as well. But it is the same error.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Adnan<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"gmail-m_-4590351526468517139gmail-m_8414608855882084273appendons=
end"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-4590351526468517139gmail-m_8414608855882084273divRplyFw=
dMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-seri=
f" color=3D"#000000"><b>From:</b> Nick Foster &lt;<a href=3D"mailto:bistrom=
ath@gmail.com" target=3D"_blank">bistromath@gmail.com</a>&gt;<br>
<b>Sent:</b> Tuesday, September 3, 2019 3:57 PM<br>
<b>To:</b> Quadri,Adnan &lt;<a href=3D"mailto:adnan.quadri@louisville.edu" =
target=3D"_blank">adnan.quadri@louisville.edu</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Addsub HLS Block Error</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div>I ran into this the other day and it&#39;s independent of the HLS comp=
onent of the addsub block (since the interface is identical). You need to c=
onnect both outputs of the addsub block to something, even a null sink. I&#=
39;m pretty sure this wasn&#39;t the intended
 behavior and also pretty sure that it wasn&#39;t like this last time I che=
cked (which was more than a year ago), so maybe it should be filed as a bug=
.<br>
</div>
<div><br>
</div>
<div>Nick<br>
</div>
</div>
<br>
<div class=3D"gmail-m_-4590351526468517139gmail-m_8414608855882084273x_gmai=
l_quote">
<div dir=3D"ltr" class=3D"gmail-m_-4590351526468517139gmail-m_8414608855882=
084273x_gmail_attr">On Tue, Sep 3, 2019 at 1:48 PM Quadri,Adnan via USRP-us=
ers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail-m_-4590351526468517139gmail-m_841460885588208427=
3x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb=
(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
We are trying to run the RFNoC addsub HLS block.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I was able to build the FPGA Image and made sure in the noc_block verilog c=
ode to point to the HLS implementation for addsub block on RFNoC as opposed=
 to the verilog/VHDL implementation.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
But when we run the example Flowgraph with two signal source as input to th=
e two inputs for addsub block on GRC, we get the following error -</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
ERROR:<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
thread[thread-per-block[4]: &lt;block uhd_rfnoc_AddSub (1)&gt;]: RuntimeErr=
or: Invalid recv stream command - stream now on multiple channels in a sing=
le streamer will fail to time align.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Does this have anything to do with the C++ code for HLS implementation or i=
s it a problem at UHD level?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Adnan<br>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettu=
s.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=
=3DOAG1LQNACBDguGvBeNj18Swhr9TMTjS-x4O_KuapPgY&amp;r=3DJoNl3b2Pn0MHhs668Qvj=
pcSGl6s3MEmtJLBypH6x02U&amp;m=3DXH0fqWeFmcl-P0_Y01iOhbHXEKDsJDUBaImT_nfh0t4=
&amp;s=3D_hsJH03rqnDSUZXWGyx31-8I7HJLsU5_S5hs-j5_WRw&amp;e=3D" rel=3D"noref=
errer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--0000000000000faa940591b20be2--


--===============5895177527461648696==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5895177527461648696==--

