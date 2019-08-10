Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A95A88E8F
	for <lists+usrp-users@lfdr.de>; Sat, 10 Aug 2019 23:41:52 +0200 (CEST)
Received: from [::1] (port=53948 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hwZ7V-00033A-Jh; Sat, 10 Aug 2019 17:41:49 -0400
Received: from mail-lf1-f50.google.com ([209.85.167.50]:40652)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <m2wagner@eng.ucsd.edu>)
 id 1hwZ7S-0002zY-5l
 for USRP-users@lists.ettus.com; Sat, 10 Aug 2019 17:41:46 -0400
Received: by mail-lf1-f50.google.com with SMTP id b17so71912388lff.7
 for <USRP-users@lists.ettus.com>; Sat, 10 Aug 2019 14:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eng.ucsd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=4luJPHQdvdK17jyhL5u4HeL4eVrv/96detWy3W38WYs=;
 b=FTRaTsGcd/mVvapH4r6XTizrlgD5YLBLG5g1ZDlvclcV7UQPZEZzfjKdg7u7jNvG7Y
 v4wZFfWRoq5XCIniJnjpGUckom6I8aoBxpdyH9Y/ZDh67dbL00V17zEtPJT7kU0/UzYi
 e3kuyCAyKqqJKIIfRtvcPF4CtJ1UtjoCutCaM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=4luJPHQdvdK17jyhL5u4HeL4eVrv/96detWy3W38WYs=;
 b=h3xhmW4ovdEPR36/J3tFQe6ETOb7/o9YDWdbx+KfDxmx6rrpKDY5NTehWM66KO5sc8
 fD+gq+lLsIqqqcXeyTDs9szjjDj4s7KXsxrRFUAzSuSfvlWN22JLBUJS6KX1XLId/Jzz
 7mxUER/KdHIupMqwYYMJT18HdVefmOjvoIo6o85cNsBRhxDPkxxWD2DqFtBLffpJ0Fz6
 JPDV4CKLeyoh9W3wJNcm+8LF/ptyPsl8YZu54j5zw3YonLVvC0dYXznzbtyMomc6OMJb
 wVS/z1pKadvyIwzUz3PlONaAdNeyUdjeo4MEfwpgxxelP4V1WzWDzMEKBqRvXfFhS0tL
 u6lQ==
X-Gm-Message-State: APjAAAVvxHj7LxonFHOyIqCJL15WQzeY89ZVFsVYqTe6h2R/xmamutBj
 awoCqORwC6tOH7Cmj55qxd6lZzZJHDpSm19X43YT/PuJWDW5Hw==
X-Google-Smtp-Source: APXvYqwX9IUO1e7TXALzHTd1CcJzf3IuOaRdGKdEjpMiHkq8j5bt5R481FdMkxttLxnSkvOvzrO+2ZhuOCoiNmugirs=
X-Received: by 2002:a05:6512:288:: with SMTP id
 j8mr17510327lfp.181.1565473264275; 
 Sat, 10 Aug 2019 14:41:04 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 10 Aug 2019 14:40:53 -0700
Message-ID: <CALLKLAMpc4RFDyVhDgu2QfG8eSH5B4U4FbLz5XiFpv0+fhJZYg@mail.gmail.com>
To: Usrp Users <USRP-users@lists.ettus.com>
Subject: [USRP-users] N310 late packet error (L) when streaming to python
 block
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
From: Mark Wagner via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark Wagner <m2wagner@eng.ucsd.edu>
Content-Type: multipart/mixed; boundary="===============7988075086528998601=="
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

--===============7988075086528998601==
Content-Type: multipart/alternative; boundary="000000000000d2a1a6058fca2501"

--000000000000d2a1a6058fca2501
Content-Type: text/plain; charset="UTF-8"

Hey all,

I've been trying to get the embedded python block to work with my USRP
N310s, but I'm experiencing late packet errors.

My goal is to stream one channel of the N310 to a length 2^12 vector,
perform some fancy fance on the vector, then vector to stream to a file
sink. The problem: every time I run my basic python block I get late packet
errors (LLLLLLLLLLLLLLLLLLLLLLLL). Here's a bare bones python block code
that still gives me the error.


import numpy as np

from gnuradio import gr



class blk(gr.sync_block):  # other base classes are basic_block,
decim_block, interp_block

    """Embedded Python Block example - a simple multiply const"""



    def __init__(self, 4096):  # only default arguments here

        """arguments to this function show up as parameters in GRC"""

        gr.sync_block.__init__(

                               self,

                               name='Embedded Python Block',   # will show
up in GRC

                               in_sig =[ (np.complex64,4096),(np.complex64,
4096)],

                               out_sig =[(np.complex64,4096),(np.complex64,
4096)]

                               )



    def work(self, input_items, output_items):

        """example: multiply with constant"""

        output_items[0][:] = input_items[0][:]

        output_items[1][:] = input_items[1][:]

        return len(output_items[0])


 This code works when I make a synthetic example, but when I stream out of
the N310 it doesn't seem to work. Am I doing something wrong?

-Mark

-- 
Mark Wagner
University of California San Diego
Electrical and Computer Engineering

--000000000000d2a1a6058fca2501
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hey all,<div><br></div><div>I&#39;ve been=
 trying to get the embedded python block to work with my USRP N310s, but I&=
#39;m experiencing late packet errors.</div><div><br></div><div>My goal is =
to stream one channel of the N310 to a length 2^12 vector, perform some fan=
cy fance on the vector, then vector to stream to a file sink. The problem: =
every time I run my basic python block I get late packet errors (LLLLLLLLLL=
LLLLLLLLLLLLLL). Here&#39;s a bare bones python block code that still gives=
 me the error.</div><div><br></div><div><p style=3D"margin:0px;font-stretch=
:normal;font-size:12px;line-height:normal;font-family:Helvetica;min-height:=
14px"><br></p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo;color:rgb(0,0,0)"><span style=3D"color:rgb(186,45,162)"=
>import</span> numpy <span style=3D"color:rgb(186,45,162)">as</span> np</p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo;color:rgb(0,0,0)"><span style=3D"color:rgb(186,45,162)"=
>from</span> gnuradio <span style=3D"color:rgb(186,45,162)">import</span> g=
r</p>
<p style=3D"margin:0px;font-stretch:normal;font-size:12px;line-height:norma=
l;font-family:Helvetica;min-height:14px"><br></p>
<p style=3D"margin:0px;font-stretch:normal;font-size:12px;line-height:norma=
l;font-family:Helvetica;min-height:14px"><br></p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo;color:rgb(0,132,0)"><span style=3D"color:rgb(186,45,162=
)">class</span><span style=3D"color:rgb(0,0,0)"> blk(gr.sync_block):=C2=A0 =
</span># other base classes are basic_block, decim_block, interp_block</p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo;color:rgb(209,47,27)"><span style=3D"color:rgb(0,0,0)">=
=C2=A0 =C2=A0 </span>&quot;&quot;&quot;Embedded Python Block example - a si=
mple multiply const&quot;&quot;&quot;</p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo;color:rgb(0,0,0);min-height:13px">=C2=A0=C2=A0 =C2=A0</=
p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo;color:rgb(0,0,0)">=C2=A0 =C2=A0 <span style=3D"color:rg=
b(186,45,162)">def</span> __init__(self, 4096):=C2=A0 <span style=3D"color:=
rgb(0,132,0)"># only default arguments here</span></p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo;color:rgb(209,47,27)"><span style=3D"color:rgb(0,0,0)">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 </span>&quot;&quot;&quot;arguments to this func=
tion show up as parameters in GRC&quot;&quot;&quot;</p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo;color:rgb(0,0,0)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 gr.sync_b=
lock.__init__(</p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo;color:rgb(0,0,0)">=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 s=
elf,</p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo;color:rgb(0,0,0)">=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 n=
ame=3D<span style=3D"color:rgb(39,42,216)">&#39;Embedded Python Block&#39;<=
/span>, =C2=A0 <span style=3D"color:rgb(0,132,0)"># will show up in GRC</sp=
an></p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo;color:rgb(0,0,0)">=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 i=
n_sig =3D[ (np.complex64,<span style=3D"color:rgb(39,42,216)">4096</span>),=
(np.complex64,<span style=3D"color:rgb(39,42,216)">4096</span>)],</p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo;color:rgb(0,0,0)">=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 o=
ut_sig =3D[(np.complex64,<span style=3D"color:rgb(39,42,216)">4096</span>),=
(np.complex64,<span style=3D"color:rgb(39,42,216)">4096</span>)]</p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo;color:rgb(0,0,0)">=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 )=
</p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo;color:rgb(0,132,0)"><span style=3D"color:rgb(0,0,0)">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span></p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo;color:rgb(0,0,0)">=C2=A0 =C2=A0 <span style=3D"color:rg=
b(186,45,162)">def</span> work(self, input_items, output_items):</p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo;color:rgb(209,47,27)"><span style=3D"color:rgb(0,0,0)">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 </span>&quot;&quot;&quot;example: multiply with=
 constant&quot;&quot;&quot;</p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo"><span style=3D"color:rgb(0,0,0)">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 output_items[</span><font color=3D"#272ad8">0</font><font color=3D"#=
000000">][:] =3D input_items[0][:]</font></p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo"><span style=3D"color:rgb(0,0,0)">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 output_items[</span><font color=3D"#272ad8">1</font><font color=3D"#=
000000">][:] =3D input_items[1][:]</font></p>
<p style=3D"margin:0px;font-stretch:normal;font-size:11px;line-height:norma=
l;font-family:Menlo;color:rgb(0,0,0)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span sty=
le=3D"color:rgb(186,45,162)">return</span> len(output_items[<span style=3D"=
color:rgb(39,42,216)">0</span>])</p></div><div><br></div><div><br></div><di=
v>=C2=A0This code works when I make a synthetic example, but when I stream =
out of the N310 it doesn&#39;t seem to work. Am I doing something wrong?</d=
iv><div><br></div><div>-Mark =C2=A0</div><div><div><br></div>-- <br><div di=
r=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div>Mark Wagner<=
br></div>University of California San Diego<br></div>Electrical and Compute=
r Engineering<br>=C2=A0<br></div></div></div></div></div>

--000000000000d2a1a6058fca2501--


--===============7988075086528998601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7988075086528998601==--

