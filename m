Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4325D099
	for <lists+usrp-users@lfdr.de>; Tue,  2 Jul 2019 15:26:21 +0200 (CEST)
Received: from [::1] (port=55230 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hiInc-00072S-HI; Tue, 02 Jul 2019 09:26:20 -0400
Received: from www.itsystems.it ([62.94.30.103]:47224 helo=mx1.itsystems.it)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <p.palana@itsystems.it>)
 id 1hiInX-0006uv-UK
 for usrp-users@lists.ettus.com; Tue, 02 Jul 2019 09:26:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=itsystems.it; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:
 From:References:To:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9vBFreXDIUONySTD0/vzykV5iSrlSZnxRdvnSSiWq6o=; b=I4wB14hpYreRO4wIwxxqXPAshm
 yZNjwNkoN3wh7VmvMI3FzVwsJJ0l9Hyy2Fx6CAlRabyywSTobewvKYvm+s6xtyH9gh2J0XrTY5rTP
 T9RNWX1Rz8L8xpl0Zk+rIbD3iCDgZ0/YbulE1L2E2gLXwvK874qTCtLLj/wCaM/0dXuA=;
Received: from [10.10.0.138]
 by mx1.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.90_1) (envelope-from <p.palana@itsystems.it>)
 id 1hiImB-00079S-Ic
 for usrp-users@lists.ettus.com; Tue, 02 Jul 2019 13:24:53 +0000
To: usrp-users@lists.ettus.com
References: <858ba75db89fde8ba784d738e18747188e498031.camel@silverblocksystems.net>
Openpgp: preference=signencrypt
Autocrypt: addr=p.palana@itsystems.it; prefer-encrypt=mutual; keydata=
 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
 YdrDHPAoRmQ=
Message-ID: <7e136e96-5553-cd48-f1d2-6732f0f26856@itsystems.it>
Date: Tue, 2 Jul 2019 15:25:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <858ba75db89fde8ba784d738e18747188e498031.camel@silverblocksystems.net>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "v-mx.virt.itsystems.it", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 I did a noc_block with 2 input and 1 out. May be my solution
 is not the best, but it works. My block receive two inputs, perform some
 elaboration on both inputs,
 and then merge the results in only on output stream.
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [USRP-users] RFNoC 2-input, 1-output example? Or,
 what am I doing wrong with this 2-input, 1-output testbench?
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
From: Paolo Palana via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Paolo Palana <p.palana@itsystems.it>
Content-Type: multipart/mixed; boundary="===============4489527494554483328=="
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

This is a multi-part message in MIME format.
--===============4489527494554483328==
Content-Type: multipart/alternative;
 boundary="------------A21867DAD5D1CDAE1F554083"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------A21867DAD5D1CDAE1F554083
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi, I did a noc_block with 2 input and 1 out.

May be my solution is not the best, but it works.

My block receive two inputs, perform some elaboration on both inputs,
and then merge the results in only on output stream.

My start point was the noc_block_addsub, and I had simply tied to 0 the
valid out for the second output.

Regards

Paolo


On 02/07/19 15:15, Mitch Davis via USRP-users wrote:
> Has anyone successfully created a 2-input, 1-output RFNoC block that
> they could share, or at least help me figure out what I'm doing
> incorrectly?
>
> I had set out to create a 2-input, 1-output RFNoC block: Complex
> Multiply.  There's already a 'cmul' module in the uhd-fpga source, all
> it needed was a proper RFNoC wrapper.
>
> I reviewed the source of the addsub block, as it has two inputs.=20
> However, its a little odd in its implementation as it doesn't follow
> the design pattern using an AXI wrapper between the the RFNoC shell and=

> the module IP.  It uses its own chdr deframer (which is what
> axi_wrapper seems like it should do instead).
>
> I had also found this list post from 2017:
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-June/0=
53156.html
>
> There didn't appear to be any published resolution on that thread.
>
> It turns out, finding information on 2-input, 1-output blocks is a bit
> of a challenge, some other relevant posts:
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-Januar=
y/055504.html
>
>   I had also found this post that featured some example code and some
> discussion about a "combiner" block.  It's very similar to what I
> needed to do, but different arithmetic required:
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-Octobe=
r/054654.html
>
> Another list post about 2-in 1-out, but no clear resolution (other than=

> physical limitations):
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-Septem=
ber/054460.html
>
>
> So, armed with some information I followed=20
> https://kb.ettus.com/Getting_Started_with_RFNoC_Development#Starting_a_=
custom_RFNoC_block_using_RFNoC_Modtool
>
> and created a module.=20
>
> The skeleton loopback code worked just fine with the testbench.  I then=

> modified the testbench similar to the addsub testbench and added code
> for the cmul IP, and modified the noc block and noc shell settings to
> support 2 inputs, 1 output.  Running that testbench resulted in an
> unexpected result: it seemed that the second AXI stream wasn't
> receiving data from the testbench.
>
> I figured my best course of action then was to use Andy's combiner
> block, because it allegedly runs in a testbench.  If it runs with my
> testbench, then I have some verilog problems to debug.  However, I was
> unable to get Andy's combiner working in my testbench.  His code has
> been renamed "multiplycomplex" for the sake of in-situ testing with my
> multiply-complex testbench.  This leads me to believe I'm doing
> something wrong with how I'm presenting the test vectors in the
> testbench.
>
> Thanks!
>
> -Mitch
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com



--------------A21867DAD5D1CDAE1F554083
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">Hi, I did a noc_block with 2 input and
      1 out.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">May be my solution is not the best, but
      it works.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <p>My block receive two inputs, perform some elaboration on both
      inputs, and then merge the results in only on output stream.</p>
    <p>My start point was the noc_block_addsub, and I had simply tied to
      0 the valid out for the second output.<br>
    </p>
    <p>Regards</p>
    <p>Paolo<br>
    </p>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">On 02/07/19 15:15, Mitch Davis via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:858ba75db89fde8ba784d738e18747188e498031.camel@silverblocksystems.net">
      <pre class="moz-quote-pre" wrap="">Has anyone successfully created a 2-input, 1-output RFNoC block that
they could share, or at least help me figure out what I'm doing
incorrectly?

I had set out to create a 2-input, 1-output RFNoC block: Complex
Multiply.  There's already a 'cmul' module in the uhd-fpga source, all
it needed was a proper RFNoC wrapper.

I reviewed the source of the addsub block, as it has two inputs. 
However, its a little odd in its implementation as it doesn't follow
the design pattern using an AXI wrapper between the the RFNoC shell and
the module IP.  It uses its own chdr deframer (which is what
axi_wrapper seems like it should do instead).

I had also found this list post from 2017:
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-June/053156.html">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-June/053156.html</a>

There didn't appear to be any published resolution on that thread.

It turns out, finding information on 2-input, 1-output blocks is a bit
of a challenge, some other relevant posts:
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-January/055504.html">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-January/055504.html</a>

  I had also found this post that featured some example code and some
discussion about a "combiner" block.  It's very similar to what I
needed to do, but different arithmetic required:
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-October/054654.html">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-October/054654.html</a>

Another list post about 2-in 1-out, but no clear resolution (other than
physical limitations):
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-September/054460.html">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-September/054460.html</a>


So, armed with some information I followed 
<a class="moz-txt-link-freetext" href="https://kb.ettus.com/Getting_Started_with_RFNoC_Development#Starting_a_custom_RFNoC_block_using_RFNoC_Modtool">https://kb.ettus.com/Getting_Started_with_RFNoC_Development#Starting_a_custom_RFNoC_block_using_RFNoC_Modtool</a>

and created a module. 

The skeleton loopback code worked just fine with the testbench.  I then
modified the testbench similar to the addsub testbench and added code
for the cmul IP, and modified the noc block and noc shell settings to
support 2 inputs, 1 output.  Running that testbench resulted in an
unexpected result: it seemed that the second AXI stream wasn't
receiving data from the testbench.

I figured my best course of action then was to use Andy's combiner
block, because it allegedly runs in a testbench.  If it runs with my
testbench, then I have some verilog problems to debug.  However, I was
unable to get Andy's combiner working in my testbench.  His code has
been renamed "multiplycomplex" for the sake of in-situ testing with my
multiply-complex testbench.  This leads me to believe I'm doing
something wrong with how I'm presenting the test vectors in the
testbench.

Thanks!

-Mitch




</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------A21867DAD5D1CDAE1F554083--


--===============4489527494554483328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4489527494554483328==--

