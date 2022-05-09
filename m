Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D42F352075F
	for <lists+usrp-users@lfdr.de>; Tue, 10 May 2022 00:13:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A6A51384DD8
	for <lists+usrp-users@lfdr.de>; Mon,  9 May 2022 18:13:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652134396; bh=gEz1HgqXoXfqHMzts+v2vIy3G0w1DtVqy76K0HPhzZM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=AriZMzg45EgScpwngKYje/fptMIArmXccMN+glXUVHNI13VXHKoH1I/ZKZXSRnV6f
	 bjabaJ7Nf9VlhTZJ2pwXr/QjRILBBDwmfArcbbQAP8G/lflAFcfHIM7+yIgJJaQcFJ
	 nT+L5uEzw2xL9LlRnJ8I+dyb/u1AH3vPLn9rK284sxBpXoNKbxHtpSpVBbZuBM8brJ
	 QwqN5K5BIDd2NDF7h6FUEN8IBTMImVRQv2EGx9dKx/suvy8bdrIRPbgFjHKwwTgkh5
	 WfFXFNFspb39bZVd0GJWTWgTG7QjCcc388b4eAy+03s1Zjb3ndmljvsTHgWzNT0pAE
	 BjOmlEgvJSzEw==
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 430FC3846C6
	for <usrp-users@lists.ettus.com>; Mon,  9 May 2022 18:12:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="pmblpCWv";
	dkim-atps=neutral
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-2f7d621d1caso160290947b3.11
        for <usrp-users@lists.ettus.com>; Mon, 09 May 2022 15:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nHTbQAMYkrPqlUnYelfla9DDecpp4F74IWUhEp2C4/w=;
        b=pmblpCWvSPGjqOMVZ9FAP7RIx/NT4Wcjy8DN62IPteIXbZAKeqSt+DwZ5Ie/dc72e4
         /cDPU2GRXg8nsBjljb8eEPJjs8wvYlcVvOJ2hCCDHyuX7396sBL/MI23JmoT2WcvEkhv
         TLvPZeGzFjpsn99VOlMHKEWxGBdIQFRwOJAKFpvJtcuc9eX4hVkLt9WpW9UD9UhdkGee
         MMmj+aJBnWPtGi8oo9YpuH79w31xASjvx+G97gx6BO02d7x5tOtgVwuNTZdoZ5R6mEp8
         RNfsfHIL0O2qMIOLFNvqAn1clgRFQiFm45MgN5DXLIxjmltKQEoAAMXyEG8GWY8n6y/J
         WCwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nHTbQAMYkrPqlUnYelfla9DDecpp4F74IWUhEp2C4/w=;
        b=baPKu9l+Nu4+Ml1ZBufp3JjwYJHG5tHas+DbcgjJNuxYeQadhQnH01rZcPa4GHlsd5
         vgSjVxQkZ48HLA6bS3Ks1DvhRdyVV5Ynic+ZnqG4tySQGxYn/8vYQ/1OW82QoPEXB3/i
         zzp6ep8rxthzc0uwLv4riFGCOc9ZiV+dl5nYP9HnOBiGJuaCVe8LhOrx+B8E8Mh4qgNm
         vItX3hMjKWX8mUQf7Iln3njLWa4i/pbgFEy0APsQVS8c+RqoHYRvR2l5EBBtQRgiTUDE
         32KBLFNTWZefLZeJzaojkQRD29GR38Rf97JwermMSW2sikB0e5cNtkwbnmyMurFdIIkJ
         doaQ==
X-Gm-Message-State: AOAM530F3uS2exZVpTGA6vkbqHdSfiyHlNkOfpUueNo1T93lKc7avq8Y
	xFH20xKar+ky56dvfD2WO/PhUZVh4m7E10KieeW90Hp9
X-Google-Smtp-Source: ABdhPJyJJJwpDm/I567EHRyI/zfzAm1Agaj/o0HuzirrN3ylOuK6Y/r+Yb3rM8VfeiO32vreUEGW2AQAHGZBM7sJ29k=
X-Received: by 2002:a81:1f89:0:b0:2f7:c6bc:9680 with SMTP id
 f131-20020a811f89000000b002f7c6bc9680mr16926801ywf.234.1652134335671; Mon, 09
 May 2022 15:12:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAHKPiO7qBCWe3LV0yBEn-G4D9mmJ7phYecwYXenq_uTdC7XupA@mail.gmail.com>
 <CAHKPiO6cVHJbYQi4mN+gocbVAOYwFqM6=oQ3neiyGk9obkFc9g@mail.gmail.com>
In-Reply-To: <CAHKPiO6cVHJbYQi4mN+gocbVAOYwFqM6=oQ3neiyGk9obkFc9g@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 9 May 2022 17:12:00 -0500
Message-ID: <CAFche=h2zUeQnNMaf-LWCQrYtfmNA8b9Xsz-vdREHjti7npt9Q@mail.gmail.com>
To: Jeffrey Cuenco <jcuenco@ucsd.edu>
Message-ID-Hash: L7BROIOWRQJPDERL2MXP5UXMJTCBE6EJ
X-Message-ID-Hash: L7BROIOWRQJPDERL2MXP5UXMJTCBE6EJ
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com, Jeffrey Cuenco <jeffrey.cuenco@gmail.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC 4.0 OOT FPGA Testbench Writing Guidance?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L7BROIOWRQJPDERL2MXP5UXMJTCBE6EJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4446036243211031118=="

--===============4446036243211031118==
Content-Type: multipart/alternative; boundary="00000000000033028c05de9b80b1"

--00000000000033028c05de9b80b1
Content-Type: text/plain; charset="UTF-8"

Hi Jeffrey,

Very curious that you're getting that CTRL_STS_OKAY error, since it looks
like you're not using the status. I assume ctrlport:has_status is set to
False in your block's YAML? In that case the status should always be OK.

1) For different input/output packet sizes, you need to modify the context
to set the payload length of the outgoing packet. That's the block of code
starting on line 283 in the rfnoc_block_conv.v file you sent. There's an
example in rfnoc_block_logpower, in which the output packet length is half
the length of input packets. In your case you'll need to set it to 3/2
instead of 1/2. See here:

https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_logpwr/rfnoc_block_logpwr.v#L202

2) The testbenches typically have an ITEM_W constant that indicates the
size of the data type you want to work with. The ITEM_W is normally set to
the sample size (e.g., 32 for sc16 samples). Since you want to work with
bytes, you could change that to 8 then create an item_t array and send it
as a single packet using blk_ctrl.send_items(). Then you can call
blk_ctrl.recv_items() to get the data output packet, and inspect the items
array that is returned. Take a look at PkgRfnocBlockCtrlBfm to see what
other send/recv methods are available. Here's a quick example assuming the
item size is 8-bit:

item_t sent[$], received[$];
sent = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };  // Whatever values you want for
the input packet, one byte per element
blk_ctrl.send_items(0, sent);

blk_ctrl.recv_items(0, received);
foreach(received[i]) begin
  // Compare the expected value to the byte in received[i] and see if it
matches
end

Wade

On Mon, May 9, 2022 at 1:30 PM Jeffrey Cuenco via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> Long time no see! I am currently on a final stretches of completing a
> masters project for my wireless embedded systems program that involves a
> USRP X310 with RFNoC 4.0 and GNURadio that implements a Hierarchical
> Modulation design using nested 4QAM / QPSK (final constellation "appears"
> like 16QAM but has embedded high priority and low priority layers that can
> adapt based on SNR).
>
> I am currently attempting to integrate the Xilinx Convolutional Encoder
> v9.0 IP block into the template rfnoc_block_conv.v design that was created
> using rfnocmodtool and modeled after the Ettus FFT example. With a bit of
> work I was able to get the .xci file loaded by Vivado when the make target
> is executed for the testbench, and the testbench appears to build without
> much modification.
>
> When executing 'make rfnoc_block_conv_tb'  it appears to fully execute the
> build process to the end, but I receive a fatal "Did not receive
> CTRL_STS_OKAY status" message in the process which I attribute to either
> something not being configured in the testbench file or something not being
> configured right in my verilog module file.
>
> I've attempted to summarize where I'm stuck and need help on in the below
> three summary points / questions:
> 1) I have configured the convolutional encoder with rate 1/2 and punctured
> (effective rate 2/3), which I assume will require me modifying the
> "axi_wrapper" so that the output to input ratios are set properly - are
> there additional examples that I can follow for this?
>
> I've seen the axi_wrapper migration note but as I'm still a novice at
> Verilog and System Verilog additional examples would be helpful. :)
>
>
> 2) I would like to modify my testbench so that I send 10 bytes (80 bits)
> of data, and read out the 15 bytes (120 bits) that get spit out and verify
> that the encoded bytes coming out of the core match ground truth data I
> would generate using MATLAB.
>
> Do we have any additional testbench examples or additional documentation
> that show sending 1 or more bytes of data through an IP core? The IP core's
> *s_axis_data_tdata* and *m_axis_data_tdata *are 8-bit while most of the
> examples show sending 32 bits.  Aside from setting the assignments to [7:0]
> are there any other adjustments that need to be made in any of the signal
> declarations and/or block definition wires earlier in the file?
>
> I've provided the IP core documentation for reference just in case:
> https://docs.xilinx.com/v/u/en-US/pg026_convolution
>
> I've also included the module and testbench files as well as the xsim log.
>
> Thanks in advance!
> -Jeff
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000033028c05de9b80b1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jeffrey,</div><div><br></div><div>Very curious tha=
t you&#39;re getting=20
that CTRL_STS_OKAY error, since it looks like you&#39;re not using the stat=
us. I assume ctrlport:has_status is set to False in your block&#39;s YAML? =
In that case the status should always be OK.<br></div><div><br></div><div>1=
) For different input/output packet sizes, you need to modify the context t=
o set the payload length of the outgoing packet. That&#39;s the block of co=
de starting on line 283 in the rfnoc_block_conv.v file you sent. There&#39;=
s an example in rfnoc_block_logpower, in which the output packet length is =
half the length of input packets. In your case you&#39;ll need to set it to=
 3/2 instead of 1/2. See here:<br></div><div><br></div><div><a href=3D"http=
s://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rf=
noc_block_logpwr/rfnoc_block_logpwr.v#L202">https://github.com/EttusResearc=
h/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_logpwr/rfnoc_bloc=
k_logpwr.v#L202</a> <br></div><div><br></div><div>2) The testbenches typica=
lly have an ITEM_W constant that indicates the size of the data type you wa=
nt to work with. The ITEM_W is normally set to the sample size (e.g., 32 fo=
r sc16 samples). Since you want to work with bytes, you could change that t=
o 8 then create an item_t array and send it as a single packet using blk_ct=
rl.send_items(). Then you can call blk_ctrl.recv_items() to get the data ou=
tput packet, and inspect the items array that is returned. Take a look at P=
kgRfnocBlockCtrlBfm to see what other send/recv methods are available. Here=
&#39;s a quick example assuming the item size is 8-bit:</div><div><br></div=
><div></div><div>item_t sent[$], received[$];</div><div>sent =3D { 0, 1, 2,=
 3, 4, 5, 6, 7, 8, 9 };=C2=A0 // Whatever values you want for the input pac=
ket, one byte per element<br></div><div>blk_ctrl.send_items(0, sent);</div>=
<div><br></div><div>blk_ctrl.recv_items(0, received);</div><div>foreach(rec=
eived[i]) begin<br></div><div>=C2=A0 // Compare the expected value to the b=
yte in received[i] and see if it matches<br></div><div>end</div><div><br></=
div><div>Wade</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Mon, May 9, 2022 at 1:30 PM Jeffrey Cuenco via USRP-u=
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ett=
us.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div sty=
le=3D"font-family:tahoma,sans-serif">Hi all,</div><div style=3D"font-family=
:tahoma,sans-serif"><br>Long time no see!=C2=A0I am currently on a final st=
retches of completing a masters project for my wireless embedded systems pr=
ogram that involves a USRP X310 with RFNoC 4.0 and GNURadio that implements=
 a Hierarchical Modulation design using nested 4QAM / QPSK (final constella=
tion &quot;appears&quot; like 16QAM but has embedded high priority and low =
priority layers that can adapt based on SNR).</div><div style=3D"font-famil=
y:tahoma,sans-serif"><br></div><div style=3D"font-family:tahoma,sans-serif"=
>I am currently attempting to integrate the Xilinx Convolutional Encoder v9=
.0 IP block into the template rfnoc_block_conv.v design that was created us=
ing rfnocmodtool and modeled after the Ettus FFT example. With a bit of wor=
k I was able to get the .xci file loaded by Vivado when the make target is =
executed for the testbench, and the testbench appears to build without much=
 modification.</div><div style=3D"font-family:tahoma,sans-serif"><br>When e=
xecuting &#39;make rfnoc_block_conv_tb&#39;=C2=A0 it appears to fully execu=
te the build process to the end, but I receive a fatal &quot;Did not receiv=
e CTRL_STS_OKAY status&quot; message in the process which I attribute to ei=
ther something not being configured in the testbench file or something not =
being configured right in my verilog module file.=C2=A0</div><div style=3D"=
font-family:tahoma,sans-serif"><br></div><div style=3D"font-family:tahoma,s=
ans-serif">I&#39;ve attempted to summarize where I&#39;m stuck and need hel=
p on in the below three summary points / questions:</div><div style=3D"font=
-family:tahoma,sans-serif">1) I have configured the convolutional encoder w=
ith rate 1/2 and punctured (effective rate 2/3), which I assume will requir=
e me modifying the &quot;axi_wrapper&quot; so that the output to input rati=
os are set properly - are there additional examples that I can follow for t=
his?=C2=A0</div><div style=3D"font-family:tahoma,sans-serif"><br></div><div=
 style=3D"font-family:tahoma,sans-serif">I&#39;ve seen the axi_wrapper migr=
ation note but as I&#39;m still a novice at Verilog and System Verilog addi=
tional examples would be helpful. :)=C2=A0</div><div style=3D"font-family:t=
ahoma,sans-serif"><br></div><div style=3D"font-family:tahoma,sans-serif"><b=
r>2) I would like to modify my testbench so that I send 10 bytes (80 bits) =
of data, and read out the 15 bytes (120 bits) that get spit out and verify =
that the encoded bytes coming out of the core match ground truth data I wou=
ld generate using MATLAB.=C2=A0</div><div style=3D"font-family:tahoma,sans-=
serif"><br></div><div style=3D"font-family:tahoma,sans-serif">Do we have an=
y additional testbench examples or additional documentation that show sendi=
ng 1 or more bytes of data through an IP core? The IP core&#39;s=C2=A0<b>s_=
axis_data_tdata</b> and=C2=A0<b>m_axis_data_tdata </b>are 8-bit while most =
of the examples show sending 32 bits.=C2=A0 Aside from setting the assignme=
nts to [7:0] are there any other adjustments that need to be made in any of=
 the signal declarations and/or block definition wires earlier in the file?=
</div><div style=3D"font-family:tahoma,sans-serif"><br></div><div style=3D"=
font-family:tahoma,sans-serif">I&#39;ve provided the IP core documentation =
for reference just in case:</div><div style=3D"font-family:tahoma,sans-seri=
f"><a href=3D"https://docs.xilinx.com/v/u/en-US/pg026_convolution" target=
=3D"_blank">https://docs.xilinx.com/v/u/en-US/pg026_convolution</a></div><d=
iv style=3D"font-family:tahoma,sans-serif"><br></div><div style=3D"font-fam=
ily:tahoma,sans-serif">I&#39;ve also included the=C2=A0module and testbench=
 files as well as the xsim log.<br></div><div style=3D"font-family:tahoma,s=
ans-serif"><br></div><div style=3D"font-family:tahoma,sans-serif">Thanks in=
 advance!</div><div style=3D"font-family:tahoma,sans-serif">-Jeff</div><div=
 style=3D"font-family:tahoma,sans-serif"><br></div></div>
</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000033028c05de9b80b1--

--===============4446036243211031118==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4446036243211031118==--
