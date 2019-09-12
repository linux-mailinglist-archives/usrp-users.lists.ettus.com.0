Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E10B0A7A
	for <lists+usrp-users@lfdr.de>; Thu, 12 Sep 2019 10:38:36 +0200 (CEST)
Received: from [::1] (port=54546 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i8KcX-0006VL-Om; Thu, 12 Sep 2019 04:38:29 -0400
Received: from mail-oi1-f172.google.com ([209.85.167.172]:44734)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <emil.bjelski@gmail.com>)
 id 1i8KcT-0006Rl-Ij
 for usrp-users@lists.ettus.com; Thu, 12 Sep 2019 04:38:25 -0400
Received: by mail-oi1-f172.google.com with SMTP id w6so16433483oie.11
 for <usrp-users@lists.ettus.com>; Thu, 12 Sep 2019 01:38:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xog8V+5Cc76w+1fSNteSAyRKBwZPQPR6L9Pl4XZdiqk=;
 b=jjCuFXojlJfZqimmi2kaITxGZmkw8CBXhsfXnT1EXIEh5Pm4Z1coEhXYSC3kpbHLKT
 fYOgJRya6eF+BWRnQ1CelYZASwHBAjraft+CM8QMnFl+8wqlpai53XgFuEFXGm8i9eV9
 mhl6L8gQfa7au70UI6sY1fblUpL0gYkoZG1nGvl61XArIjafxKGwx9SNta2yArjcxLyH
 fs41DLGQ83bvZlxEDMAlTFfHqKONrFFOIiwC4KZz7zdCKZlYCUYzQ3NTegFr3mYiLRt4
 GHJH0m1rPFTulas5whNNlTaSLyZc+b6/894q/YuwC+fz070V5HHIwSMcwzXR5oOUbHVG
 D7kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xog8V+5Cc76w+1fSNteSAyRKBwZPQPR6L9Pl4XZdiqk=;
 b=DerpQcxYTYv4eU0PY2DJyrU6zrGPQ7/tts4p63nVT9UuJzt28xmwrWZbj74Oy8xEgx
 +iwUmpmQ3cXeqAVv7WsD2MPGyAgmZDIjHvJAdb7Y4rFR5UqdHCHOBw4dVQmLtgVNhmNw
 Tjktr1Iz935Njq0GOxtnaJj0tWVhEeF5EtL3uWqe4fzdUiCBM5Ad6Ktxcxz7QaQmQ7N8
 3GPiHX5HA4N+nEW1q2fNF7pGQDheSJw7DGd+ULMfboGyJxJWQiTRrikQRihWVdzcmCYl
 Enejj87Lbu3xqQpEY1h5Mc/SmlHfhp0EhDBDRctsKzzNDiLfffzWe0jyqZPyWkFIk5aj
 BZVg==
X-Gm-Message-State: APjAAAV4xelKEYDvNrPRLuLPKvgsNsEJvq+qrbPrb5JbFvPSaw+IaPlM
 b70OxaDw24BTW5q0AcXVOJ5sqn1WI9pGvIWsY2ysjO8z
X-Google-Smtp-Source: APXvYqwI8rO2PHYZH9Oj1XhbeiAK+odusMd2biFI/h/79U69eSR5tgxjv505FYmppyoAeOcag+zivBiyDGdTtBvQSDg=
X-Received: by 2002:a05:6808:85:: with SMTP id
 s5mr7612600oic.158.1568277464706; 
 Thu, 12 Sep 2019 01:37:44 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR03MB3788A6E68F615BF33C687A8FE6BA0@DM6PR03MB3788.namprd03.prod.outlook.com>
 <84a673b3ca7caa1721171d4b5494c2eee03b448e.camel@ettus.com>
 <DM6PR03MB37883E0264A559380EB5A1BFE6B10@DM6PR03MB3788.namprd03.prod.outlook.com>
 <a6d01ddb6d45fb692f7fcfc5a5cdf744a7ab17c1.camel@ettus.com>
 <DM6PR03MB3788C5B1BF520A7AC022AABFE6B10@DM6PR03MB3788.namprd03.prod.outlook.com>
In-Reply-To: <DM6PR03MB3788C5B1BF520A7AC022AABFE6B10@DM6PR03MB3788.namprd03.prod.outlook.com>
Date: Thu, 12 Sep 2019 10:37:33 +0200
Message-ID: <CADrptxUgvjEjeRZG6W1H6UQHH103Z81LqiQ-8XGogi3FB4TSRg@mail.gmail.com>
To: "Quadri,Adnan" <adnan.quadri@louisville.edu>
Subject: Re: [USRP-users] RFNoC SVD Block
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
From: Emil Bjelski via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Emil Bjelski <emil.bjelski@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6312374364243100502=="
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

--===============6312374364243100502==
Content-Type: multipart/alternative; boundary="0000000000003174b10592570d50"

--0000000000003174b10592570d50
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Adnan,

Take a look to this document
https://www.xilinx.com/support/documentation/sw_manuals/xilinx2018_3/ug902-=
vivado-high-level-synthesis.pdf
.
I feel that HLS is the way to go.
However, if I remember correctly the maximum size of the matrix that is
supported by HLS linpack implementation of the SVD is *8x8.*

Just due to my curiosity. Why do not you buffer samples and perform SVD in
the software? (I feel that that will be much easier).

Cheers,

Emil

On Wed, Sep 11, 2019 at 6:45 PM Quadri,Adnan via USRP-users <
usrp-users@lists.ettus.com> wrote:

> This Verilog AXI is so amazing. I just went through the project link
> quickly.
>
> We can test our verilog implementation on GRC! This will be so helpful.
> Thank you so much for sharing the information.
>
> Adnan
> ------------------------------
> *From:* Marcus M=C3=BCller <marcus.mueller@ettus.com>
> *Sent:* Wednesday, September 11, 2019 11:34 AM
> *To:* Quadri,Adnan <adnan.quadri@louisville.edu>;
> usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] RFNoC SVD Block
>
> Thanks! I'm always curious about how our hard- and software
> infrastructure is being used!
>
> By the way, in case you want to test a verilog SVD implementation
> within a signal processing framework: Bowen Hu did a very interesting
> Google Summer of Code project this year, in which he made it possible
> to just drop in a Verilog Module in a GNU Radio block and use that to
> do signal processing in a pure host computer simulation. He'll be at
> GRCon this year!
>
>
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_B0WEN-2=
DHU_gr-2Dverilog&d=3DDwIDaQ&c=3DOAG1LQNACBDguGvBeNj18Swhr9TMTjS-x4O_KuapPgY=
&r=3DJoNl3b2Pn0MHhs668QvjpcSGl6s3MEmtJLBypH6x02U&m=3DOAza1LeUx_20PABZFpa8SF=
pGhqGusnLgCJPv8Qn9IY4&s=3DRVT10qjiHFS4-MdCMHF5eFq0-VWOEryN7swfWuOKkZI&e=3D
> </shameless_plug>
>
> Best regards,
> Marcus
> On Wed, 2019-09-11 at 15:13 +0000, Quadri,Adnan wrote:
> > Hello,
> >
> > Thanks for your prompt response and sorry for my delayed one.
> >
> > I have thought about the first option you have discussed, which is to
> > use already implemented SVD but modify it to fit with the nocshell.
> >
> > As we go down that way, I will update this thread with questions or
> > any significant findings.
> >
> > Thank you,
> > Adnan
> > From: Marcus M=C3=BCller <marcus.mueller@ettus.com>
> > Sent: Friday, September 6, 2019 4:00 PM
> > To: Quadri,Adnan <adnan.quadri@louisville.edu>;
> > usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> > Subject: Re: [USRP-users] RFNoC SVD Block
> >
> > Hello Adnan,
> >
> > I'm currently not aware of anyone doing that.
> >
> > However, since one of the typical applications of beefier FPGAs is
> > math
> > accelerators for linear algebra problems, it's more than likely
> > someone
> > did in fact implement an SVD before, and you might just need to
> > connect
> > it to a nocshell to make it work in RFNoC. There's a lot of
> > interesting
> > papers out there on SVD implementations for fixed point math on
> > FPGAs,
> > I think Drexel uni had some interesting stuff for SVD-based channel
> > estimation for OFDM. I've not seen any code of them, though...
> >
> > So, from an algorithmic point of view, an SVD isn't too hard. IIRC,
> > sequential algorithms can work in-place, and thus (for a m=C3=97n matri=
x,
> > n>m) don't need more than n=C2=B2 space for intermediate and final resu=
lt
> > (+2m for index and scale storage if you want to pivot elegantly).
> >
> > Now, I've not ever implemented more than a C++ QR decomposition
> > (which
> > is the core algorithm for most EVD problems, which you typically
> > householder-transform an SVD problem to), so I'm really not competent
> > to comment on hardware implementations, but chances are you want to
> > compute a lot of result values in parallel if you're doing it in the
> > FPGA =E2=80=93 because otherwise, you'd abhor doing much work in hardwa=
re
> > (that
> > being _hard_) in favor of doing it easier-to-debug and also free-to-
> > have in the shape of LAPACK software. (Subtext message, more for
> > future
> > readers than for you: Evaluate whether something really should be
> > done
> > in hardware; it's not inherently better to do things in hardware.)
> > But that parallelism might imply that in-place is not a feasible way
> > of
> > computing things, and your memory requirements might be much larger.
> > Depending on the size of SVD you're planning to do, that might or
> > might
> > not be an issue.
> >
> > Best regards,
> > Marcus
> >
> > On Fri, 2019-09-06 at 19:05 +0000, Quadri,Adnan via USRP-users wrote:
> > > Hello,
> > >
> > > We are trying to perform singular vector decomposition. The idea is
> > > to work on an RFNoC block that takes in summation of samples from
> > the
> > > Radio source and will perform SVD.
> > >
> > > Is anybody working on something similar?
> > > Currently, the RFNoC OFDM synchronizer block has timing constraint
> > > issues and can't be used to build FPGA image.
> > >
> > > Just asking around to get some suggestions/advice and idea if
> > working
> > > on that Verilog implementation of SVD is something doable and if
> > > anybody tried anything similar.
> > >
> > > Thank you,
> > > Adnan
> > >
> > >
> > > _______________________________________________
> > > USRP-users mailing list
> > > USRP-users@lists.ettus.com
> > >
> >
> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mai=
lman_listinfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwIDaQ&c=3DOAG1LQNACBDguGv=
BeNj18Swhr9TMTjS-x4O_KuapPgY&r=3DJoNl3b2Pn0MHhs668QvjpcSGl6s3MEmtJLBypH6x02=
U&m=3Dk37R0Rl_g81NH-S6ItDZuzmUBw5LoTVhKicoMs7QquI&s=3DwNh-TuGTVEYzPNN0GRzBj=
YiBuFKVQfG5vjCSdYCEnPY&e=3D
> >
> >
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000003174b10592570d50
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Adnan,<div><br></div><div>Take a look to this document=
=C2=A0<a href=3D"https://www.xilinx.com/support/documentation/sw_manuals/xi=
linx2018_3/ug902-vivado-high-level-synthesis.pdf">https://www.xilinx.com/su=
pport/documentation/sw_manuals/xilinx2018_3/ug902-vivado-high-level-synthes=
is.pdf</a>.</div><div>I feel that HLS is the way to go.</div><div>However, =
if I remember correctly the maximum size of the matrix that is supported by=
 HLS linpack implementation of the SVD is <b>8x8.</b></div><div><br></div><=
div>Just due to my curiosity. Why do not you buffer samples and perform SVD=
 in the software? (I feel that that will be much easier).</div><div><br></d=
iv><div>Cheers,</div><div><br></div><div>Emil</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 11, 2019 at =
6:45 PM Quadri,Adnan via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
This Verilog AXI is so amazing. I just went through the project link quickl=
y. <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
We can test our verilog implementation on GRC! This will be so helpful.</di=
v>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thank you so much for sharing the information. <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Adnan<br>
</div>
<div id=3D"gmail-m_-984662996941114646appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-984662996941114646divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From=
:</b> Marcus M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com" ta=
rget=3D"_blank">marcus.mueller@ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, September 11, 2019 11:34 AM<br>
<b>To:</b> Quadri,Adnan &lt;<a href=3D"mailto:adnan.quadri@louisville.edu" =
target=3D"_blank">adnan.quadri@louisville.edu</a>&gt;; <a href=3D"mailto:us=
rp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a> =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] RFNoC SVD Block</font>
<div>=C2=A0</div>
</div>
<div class=3D"gmail-m_-984662996941114646BodyFragment"><font size=3D"2"><sp=
an style=3D"font-size:11pt">
<div class=3D"gmail-m_-984662996941114646PlainText">Thanks! I&#39;m always =
curious about how our hard- and software<br>
infrastructure is being used!<br>
<br>
By the way, in case you want to test a verilog SVD implementation<br>
within a signal processing framework: Bowen Hu did a very interesting<br>
Google Summer of Code project this year, in which he made it possible<br>
to just drop in a Verilog Module in a GNU Radio block and use that to<br>
do signal processing in a pure host computer simulation. He&#39;ll be at<br=
>
GRCon this year!<br>
<br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.co=
m_B0WEN-2DHU_gr-2Dverilog&amp;d=3DDwIDaQ&amp;c=3DOAG1LQNACBDguGvBeNj18Swhr9=
TMTjS-x4O_KuapPgY&amp;r=3DJoNl3b2Pn0MHhs668QvjpcSGl6s3MEmtJLBypH6x02U&amp;m=
=3DOAza1LeUx_20PABZFpa8SFpGhqGusnLgCJPv8Qn9IY4&amp;s=3DRVT10qjiHFS4-MdCMHF5=
eFq0-VWOEryN7swfWuOKkZI&amp;e=3D" target=3D"_blank">https://urldefense.proo=
fpoint.com/v2/url?u=3Dhttps-3A__github.com_B0WEN-2DHU_gr-2Dverilog&amp;d=3D=
DwIDaQ&amp;c=3DOAG1LQNACBDguGvBeNj18Swhr9TMTjS-x4O_KuapPgY&amp;r=3DJoNl3b2P=
n0MHhs668QvjpcSGl6s3MEmtJLBypH6x02U&amp;m=3DOAza1LeUx_20PABZFpa8SFpGhqGusnL=
gCJPv8Qn9IY4&amp;s=3DRVT10qjiHFS4-MdCMHF5eFq0-VWOEryN7swfWuOKkZI&amp;e=3D</=
a>
<br>
&lt;/shameless_plug&gt;<br>
<br>
Best regards,<br>
Marcus<br>
On Wed, 2019-09-11 at 15:13 +0000, Quadri,Adnan wrote:<br>
&gt; Hello,<br>
&gt; <br>
&gt; Thanks for your prompt response and sorry for my delayed one.<br>
&gt; <br>
&gt; I have thought about the first option you have discussed, which is to<=
br>
&gt; use already implemented SVD but modify it to fit with the nocshell.<br=
>
&gt; <br>
&gt; As we go down that way, I will update this thread with questions or<br=
>
&gt; any significant findings.<br>
&gt; <br>
&gt; Thank you,<br>
&gt; Adnan<br>
&gt; From: Marcus M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.co=
m" target=3D"_blank">marcus.mueller@ettus.com</a>&gt;<br>
&gt; Sent: Friday, September 6, 2019 4:00 PM<br>
&gt; To: Quadri,Adnan &lt;<a href=3D"mailto:adnan.quadri@louisville.edu" ta=
rget=3D"_blank">adnan.quadri@louisville.edu</a>&gt;; <br>
&gt; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt; Subject: Re: [USRP-users] RFNoC SVD Block<br>
&gt;=C2=A0 <br>
&gt; Hello Adnan,<br>
&gt; <br>
&gt; I&#39;m currently not aware of anyone doing that.<br>
&gt; <br>
&gt; However, since one of the typical applications of beefier FPGAs is<br>
&gt; math<br>
&gt; accelerators for linear algebra problems, it&#39;s more than likely<br=
>
&gt; someone<br>
&gt; did in fact implement an SVD before, and you might just need to<br>
&gt; connect<br>
&gt; it to a nocshell to make it work in RFNoC. There&#39;s a lot of<br>
&gt; interesting<br>
&gt; papers out there on SVD implementations for fixed point math on<br>
&gt; FPGAs,<br>
&gt; I think Drexel uni had some interesting stuff for SVD-based channel<br=
>
&gt; estimation for OFDM. I&#39;ve not seen any code of them, though...<br>
&gt; <br>
&gt; So, from an algorithmic point of view, an SVD isn&#39;t too hard. IIRC=
,<br>
&gt; sequential algorithms can work in-place, and thus (for a m=C3=97n matr=
ix,<br>
&gt; n&gt;m) don&#39;t need more than n=C2=B2 space for intermediate and fi=
nal result<br>
&gt; (+2m for index and scale storage if you want to pivot elegantly).<br>
&gt; <br>
&gt; Now, I&#39;ve not ever implemented more than a C++ QR decomposition<br=
>
&gt; (which<br>
&gt; is the core algorithm for most EVD problems, which you typically<br>
&gt; householder-transform an SVD problem to), so I&#39;m really not compet=
ent<br>
&gt; to comment on hardware implementations, but chances are you want to<br=
>
&gt; compute a lot of result values in parallel if you&#39;re doing it in t=
he<br>
&gt; FPGA =E2=80=93 because otherwise, you&#39;d abhor doing much work in h=
ardware<br>
&gt; (that<br>
&gt; being _hard_) in favor of doing it easier-to-debug and also free-to-<b=
r>
&gt; have in the shape of LAPACK software. (Subtext message, more for<br>
&gt; future<br>
&gt; readers than for you: Evaluate whether something really should be<br>
&gt; done<br>
&gt; in hardware; it&#39;s not inherently better to do things in hardware.)=
<br>
&gt; But that parallelism might imply that in-place is not a feasible way<b=
r>
&gt; of<br>
&gt; computing things, and your memory requirements might be much larger.<b=
r>
&gt; Depending on the size of SVD you&#39;re planning to do, that might or<=
br>
&gt; might<br>
&gt; not be an issue.<br>
&gt; <br>
&gt; Best regards,<br>
&gt; Marcus<br>
&gt; <br>
&gt; On Fri, 2019-09-06 at 19:05 +0000, Quadri,Adnan via USRP-users wrote:<=
br>
&gt; &gt; Hello,<br>
&gt; &gt; <br>
&gt; &gt; We are trying to perform singular vector decomposition. The idea =
is<br>
&gt; &gt; to work on an RFNoC block that takes in summation of samples from=
<br>
&gt; the<br>
&gt; &gt; Radio source and will perform SVD.<br>
&gt; &gt; <br>
&gt; &gt; Is anybody working on something similar? <br>
&gt; &gt; Currently, the RFNoC OFDM synchronizer block has timing constrain=
t<br>
&gt; &gt; issues and can&#39;t be used to build FPGA image.<br>
&gt; &gt; <br>
&gt; &gt; Just asking around to get some suggestions/advice and idea if<br>
&gt; working<br>
&gt; &gt; on that Verilog implementation of SVD is something doable and if<=
br>
&gt; &gt; anybody tried anything similar.<br>
&gt; &gt; <br>
&gt; &gt; Thank you,<br>
&gt; &gt; Adnan<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; USRP-users mailing list<br>
&gt; &gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">U=
SRP-users@lists.ettus.com</a><br>
&gt; &gt; <br>
&gt; <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists=
.ettus.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwIDaQ&a=
mp;c=3DOAG1LQNACBDguGvBeNj18Swhr9TMTjS-x4O_KuapPgY&amp;r=3DJoNl3b2Pn0MHhs66=
8QvjpcSGl6s3MEmtJLBypH6x02U&amp;m=3Dk37R0Rl_g81NH-S6ItDZuzmUBw5LoTVhKicoMs7=
QquI&amp;s=3DwNh-TuGTVEYzPNN0GRzBjYiBuFKVQfG5vjCSdYCEnPY&amp;e=3D" target=
=3D"_blank">
https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailm=
an_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwIDaQ&amp;c=3DOAG1LQNAC=
BDguGvBeNj18Swhr9TMTjS-x4O_KuapPgY&amp;r=3DJoNl3b2Pn0MHhs668QvjpcSGl6s3MEmt=
JLBypH6x02U&amp;m=3Dk37R0Rl_g81NH-S6ItDZuzmUBw5LoTVhKicoMs7QquI&amp;s=3DwNh=
-TuGTVEYzPNN0GRzBjYiBuFKVQfG5vjCSdYCEnPY&amp;e=3D</a><br>
&gt;=C2=A0 <br>
&gt; <br>
<br>
</div>
</span></font></div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000003174b10592570d50--


--===============6312374364243100502==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6312374364243100502==--

