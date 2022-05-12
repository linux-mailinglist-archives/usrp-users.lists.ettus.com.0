Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BDF5253AB
	for <lists+usrp-users@lfdr.de>; Thu, 12 May 2022 19:30:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0E43D384592
	for <lists+usrp-users@lfdr.de>; Thu, 12 May 2022 13:30:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652376618; bh=Ax8xfOeimNodmGt71m0VMKd9jBWFyQ7Fxz2pkiadPdI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=eQjcXOeFvIjRlk01AMK+xAYMqEYZrZLPBR8mJb8fuD+XX7HIikpQn07TeVHRFcpCH
	 MZudAxggESQZ2aBHS4Tz/zO0jCFrAAwJ4IEhhnYKaGD45Es7jA2eM1ds7pd7qW6ADz
	 cXbilxuJ9TwDNmAFjvoGhuuQUlsNJOV5HJrDHK8oKTzyQAyG6pOSzUF4pUIEDSPhbs
	 IO/ic24b5rblyQ0+oFIJp6OrpxnpzZRJwY5LzlyyDU83aCjGSjoZu5iEL0HUZSEvgD
	 ryBLIQUsQpcAV/Epr/KyFG7OJg5ljQWoQ2oganfgY+Q49q4QkvNRzIKoLUeMehJCPm
	 sB3VYYJHsOQEA==
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 34D39384464
	for <usrp-users@lists.ettus.com>; Thu, 12 May 2022 13:29:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="RCI8E0e1";
	dkim-atps=neutral
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-2f83983782fso64882527b3.6
        for <usrp-users@lists.ettus.com>; Thu, 12 May 2022 10:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iyDG/4GADIKUXFo5kWvktq+MJElrCfbBbVzKo/EKZ58=;
        b=RCI8E0e12QZ0O8jH0CqxjeU0zrM7sApt9qXJF07VIJpe0UICvhPXBCq2WRTgVMAfzI
         cT8LHeJEUCdddQLm3+oEJ2M5WySzT8c5HYCQnoKZMnGz0aqZNNHu0Dgmef5qckvHUfzV
         C3Wrkh37mlcLN0paXdZ8ZxxygTg4ZDPa9ioLjI2KScPpdEALrZDZGoDqvSbKvq0JGpig
         dw/CxwBHd5YH260tGiIst3AoQMXattxblCHzDsoXyu+v3MR6NCwQCSTvftmVvlbNIKU+
         DcIc7Mjp0wlVTRn7EB4oaX/dWVEIReq/Ol6tHIxK43qorFK9yNylpvBnm8Cl9xe4R2Kn
         u0dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iyDG/4GADIKUXFo5kWvktq+MJElrCfbBbVzKo/EKZ58=;
        b=Z2CXuozP/otjeWDKr62JivkvJcpzMlf/fZjwXRaOl9ZQz2++zKi0rqjaMtJVqMh55v
         1N8FPS0ylQPMfEk4c5Ziq2y1qjBwBMntL+VtVAu9i4SK+y33CzvX7ur1cypfSde15nIH
         SbPwmMfEM1L4+BKvqIPoIaL2Q8HdL5zwMb+DYOv0R9zWJ695EdOFvm1NhUcYdu0FK6WM
         PI2DEXsXsQtLQFGpQJPYg2oyW5QMuDb10ZT2srEUILGoP1727VaNaXI2fSxkaMdvZvL+
         nA/VKU2yZMUz9e5R3Qn+he9E0vuSsIc+RwJ1eRDzE4VAjWaWqvphjfhMveaGCqRQsyvy
         UtcQ==
X-Gm-Message-State: AOAM531Xm2y6q0CPVyaeZwztodo946eavpvYyP5eB/u7yAWMbeJ9xfns
	79EJULK/TWqGtd3padLGluJiussWdmcP+1TlL3Oojqk0OUvJLR3k
X-Google-Smtp-Source: ABdhPJyLX3U5P4Zp2zu5gkFIqc7/VgEMNulR7UPjb3ghv3XaqRAZ7ku8gyDNvKyXhW90Ig/vgiMrwtAwhejcjVEagWE=
X-Received: by 2002:a81:8c6:0:b0:2f4:d476:b46f with SMTP id
 189-20020a8108c6000000b002f4d476b46fmr1167732ywi.363.1652376555533; Thu, 12
 May 2022 10:29:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAFche=iquEi5gZU9ZQg8YwVZyfj7wrKUKGRyy=mftaQqd_=g2g@mail.gmail.com>
 <E242B407-112E-420E-A26F-8368485A5D3B@gmail.com>
In-Reply-To: <E242B407-112E-420E-A26F-8368485A5D3B@gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 12 May 2022 12:28:59 -0500
Message-ID: <CAFche=gJZqr6W7C9au4GFmhfTSqgRq_XV9Vew8L4gcpLFoJ4EA@mail.gmail.com>
To: Jeffrey Cuenco <jeffrey.cuenco@gmail.com>
Message-ID-Hash: E2XZJGQWHT6QI7TNJR6J26GQ2NQQ46LV
X-Message-ID-Hash: E2XZJGQWHT6QI7TNJR6J26GQ2NQQ46LV
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jeffrey Cuenco <jcuenco@ucsd.edu>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC 4.0 OOT FPGA Testbench Writing Guidance?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E2XZJGQWHT6QI7TNJR6J26GQ2NQQ46LV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3385296078676141412=="

--===============3385296078676141412==
Content-Type: multipart/alternative; boundary="000000000000a0cacb05ded3e580"

--000000000000a0cacb05ded3e580
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeff,

I took a look and noticed a couple things.

   - There are some signal width mismatches in rfnoc_block_conv.v. Take a
   look at s_rfnoc_ctrl_tdata, m_rfnoc_ctrl_tdata, m_in_payload_tdata,
   s_out_payload_tdata. They have different widths than what the noc_shell
   expects. I think it's possible to change the payload_tdata width to 8 on
   the noc_shell by changing the item_width in your YAML, but you'll want t=
o
   regenerate the noc_shell to do that (be careful not to overwrite your ot=
her
   files if you do this). But the ctrl bus must be 32-bit.
   - The ctrlport_clk has no driver. It looks like you specified ce_clk as
   the clock domain in your YAML, so perhaps that's the clock you want to u=
se?

Try resolving these issues and see where that gets you.

Wade

On Wed, May 11, 2022 at 2:19 PM Jeffrey Cuenco <jeffrey.cuenco@gmail.com>
wrote:

> Hi Wade,
>
> Please see attached. Thanks!
>
> -Jeff
>
>
>
>
> On May 11, 2022, at 08:42, Wade Fife <wade.fife@ettus.com> wrote:
>
> =EF=BB=BF
> Can you also share your block's YML and the noc_shell you generated?
>
> Wade
>
> On Wed, May 11, 2022 at 4:27 AM Jeffrey Cuenco <jcuenco@ucsd.edu> wrote:
>
>> Hi Wade,
>>
>> Yes, I have the ctrlport:has_status set to False in the block YAML... I
>> ended up having to comment out that test sequence to move onto the part
>> that sends samples into and out of the block; now I have an error that
>> states
>>
>>
>> *Fatal: Timeout: Test "Test passing through samples" time limit exceeded=
*
>> so I must be doing something that it isn't liking :) I've attached my
>> updated .v and .sv files that I modified based on your guidance in your
>> first response, as well as the updated xsim.log. Please let me know if
>> there are any additional things I may need to change such as sizes and w=
hat
>> not - thanks!
>>
>> -Jeff
>>
>> On Mon, May 9, 2022 at 3:12 PM Wade Fife <wade.fife@ettus.com> wrote:
>>
>>> Hi Jeffrey,
>>>
>>> Very curious that you're getting that CTRL_STS_OKAY error, since it
>>> looks like you're not using the status. I assume ctrlport:has_status is=
 set
>>> to False in your block's YAML? In that case the status should always be=
 OK.
>>>
>>> 1) For different input/output packet sizes, you need to modify the
>>> context to set the payload length of the outgoing packet. That's the bl=
ock
>>> of code starting on line 283 in the rfnoc_block_conv.v file you sent.
>>> There's an example in rfnoc_block_logpower, in which the output packet
>>> length is half the length of input packets. In your case you'll need to=
 set
>>> it to 3/2 instead of 1/2. See here:
>>>
>>>
>>> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/b=
locks/rfnoc_block_logpwr/rfnoc_block_logpwr.v#L202
>>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_Ettu=
sResearch_uhd_blob_master_fpga_usrp3_lib_rfnoc_blocks_rfnoc-5Fblock-5Flogpw=
r_rfnoc-5Fblock-5Flogpwr.v-23L202&d=3DDwMFaQ&c=3D-35OiAkTchMrZOngvJPOeA&r=
=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD08QrmMzW9aeZY&m=3DGXbgyQxDz4yiy7ZI94I9ia-1=
XvF2rdmrbxprVfQojmcljlWVOVrjE1Z7g7qsBL_a&s=3DWkFBbmpL8IpvF2oHp-4Vfhy73qA49j=
SJD2tHoTQ0anQ&e=3D>
>>>
>>> 2) The testbenches typically have an ITEM_W constant that indicates the
>>> size of the data type you want to work with. The ITEM_W is normally set=
 to
>>> the sample size (e.g., 32 for sc16 samples). Since you want to work wit=
h
>>> bytes, you could change that to 8 then create an item_t array and send =
it
>>> as a single packet using blk_ctrl.send_items(). Then you can call
>>> blk_ctrl.recv_items() to get the data output packet, and inspect the it=
ems
>>> array that is returned. Take a look at PkgRfnocBlockCtrlBfm to see what
>>> other send/recv methods are available. Here's a quick example assuming =
the
>>> item size is 8-bit:
>>>
>>> item_t sent[$], received[$];
>>> sent =3D { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };  // Whatever values you want
>>> for the input packet, one byte per element
>>> blk_ctrl.send_items(0, sent);
>>>
>>> blk_ctrl.recv_items(0, received);
>>> foreach(received[i]) begin
>>>   // Compare the expected value to the byte in received[i] and see if i=
t
>>> matches
>>> end
>>>
>>> Wade
>>>
>>> On Mon, May 9, 2022 at 1:30 PM Jeffrey Cuenco via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hi all,
>>>>
>>>> Long time no see! I am currently on a final stretches of completing a
>>>> masters project for my wireless embedded systems program that involves=
 a
>>>> USRP X310 with RFNoC 4.0 and GNURadio that implements a Hierarchical
>>>> Modulation design using nested 4QAM / QPSK (final constellation "appea=
rs"
>>>> like 16QAM but has embedded high priority and low priority layers that=
 can
>>>> adapt based on SNR).
>>>>
>>>> I am currently attempting to integrate the Xilinx Convolutional Encode=
r
>>>> v9.0 IP block into the template rfnoc_block_conv.v design that was cre=
ated
>>>> using rfnocmodtool and modeled after the Ettus FFT example. With a bit=
 of
>>>> work I was able to get the .xci file loaded by Vivado when the make ta=
rget
>>>> is executed for the testbench, and the testbench appears to build with=
out
>>>> much modification.
>>>>
>>>> When executing 'make rfnoc_block_conv_tb'  it appears to fully execute
>>>> the build process to the end, but I receive a fatal "Did not receive
>>>> CTRL_STS_OKAY status" message in the process which I attribute to eith=
er
>>>> something not being configured in the testbench file or something not =
being
>>>> configured right in my verilog module file.
>>>>
>>>> I've attempted to summarize where I'm stuck and need help on in the
>>>> below three summary points / questions:
>>>> 1) I have configured the convolutional encoder with rate 1/2 and
>>>> punctured (effective rate 2/3), which I assume will require me modifyi=
ng
>>>> the "axi_wrapper" so that the output to input ratios are set properly =
- are
>>>> there additional examples that I can follow for this?
>>>>
>>>> I've seen the axi_wrapper migration note but as I'm still a novice at
>>>> Verilog and System Verilog additional examples would be helpful. :)
>>>>
>>>>
>>>> 2) I would like to modify my testbench so that I send 10 bytes (80
>>>> bits) of data, and read out the 15 bytes (120 bits) that get spit out =
and
>>>> verify that the encoded bytes coming out of the core match ground trut=
h
>>>> data I would generate using MATLAB.
>>>>
>>>> Do we have any additional testbench examples or additional
>>>> documentation that show sending 1 or more bytes of data through an IP =
core?
>>>> The IP core's *s_axis_data_tdata* and *m_axis_data_tdata *are 8-bit
>>>> while most of the examples show sending 32 bits.  Aside from setting t=
he
>>>> assignments to [7:0] are there any other adjustments that need to be m=
ade
>>>> in any of the signal declarations and/or block definition wires earlie=
r in
>>>> the file?
>>>>
>>>> I've provided the IP core documentation for reference just in case:
>>>> https://docs.xilinx.com/v/u/en-US/pg026_convolution
>>>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__docs.xilinx.co=
m_v_u_en-2DUS_pg026-5Fconvolution&d=3DDwMFaQ&c=3D-35OiAkTchMrZOngvJPOeA&r=
=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD08QrmMzW9aeZY&m=3DGXbgyQxDz4yiy7ZI94I9ia-1=
XvF2rdmrbxprVfQojmcljlWVOVrjE1Z7g7qsBL_a&s=3DVpTL0Eev0xGrPxywg6lGumMok1Lx8k=
j5t4uFefeMWNA&e=3D>
>>>>
>>>> I've also included the module and testbench files as well as the xsim
>>>> log.
>>>>
>>>> Thanks in advance!
>>>> -Jeff
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>

--000000000000a0cacb05ded3e580
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jeff,</div><div><br></div><div>I took a look and n=
oticed a couple things.<br></div><div><ul><li>There are some signal width m=
ismatches in rfnoc_block_conv.v. Take a look at s_rfnoc_ctrl_tdata, m_rfnoc=
_ctrl_tdata, m_in_payload_tdata, s_out_payload_tdata. They have different w=
idths than what the noc_shell expects. I think it&#39;s possible to change =
the payload_tdata width to 8 on the noc_shell by changing the item_width in=
 your YAML, but you&#39;ll want to regenerate the noc_shell to do that (be =
careful not to overwrite your other files if you do this). But the ctrl bus=
 must be 32-bit.<br></li><li>The ctrlport_clk has no driver. It looks like =
you specified ce_clk as the clock domain in your YAML, so perhaps that&#39;=
s the clock you want to use?</li></ul><div>Try resolving these issues and s=
ee where that gets you.<br></div><div><br></div><div>Wade<br></div></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Wed, May 11, 2022 at 2:19 PM Jeffrey Cuenco &lt;<a href=3D"mailto:jeffrey.=
cuenco@gmail.com">jeffrey.cuenco@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hi Wade,<div><b=
r></div><div>Please see attached. Thanks!</div><div><br></div><div>-Jeff</d=
iv><div><br></div></div><div dir=3D"auto" role=3D"textbox" aria-label=3D"Me=
ssage Body"><div></div><div><br></div><div><font color=3D"#0a84ff"><span></=
span></font></div></div><div dir=3D"auto"><div><font color=3D"#0a84ff"><spa=
n><br></span></font><div dir=3D"ltr"><div><span style=3D"background-color:r=
gba(255,255,255,0)"><br></span></div><div></div></div><div dir=3D"ltr"><blo=
ckquote type=3D"cite">On May 11, 2022, at 08:42, Wade Fife &lt;<a href=3D"m=
ailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wr=
ote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=
=EF=BB=BF<div dir=3D"ltr"><div>Can you also share your block&#39;s YML and =
the noc_shell you generated?</div><div><br></div><div>Wade<br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed,=
 May 11, 2022 at 4:27 AM Jeffrey Cuenco &lt;<a href=3D"mailto:jcuenco@ucsd.=
edu" target=3D"_blank">jcuenco@ucsd.edu</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Wade,<div><br></=
div><div>Yes, I have the ctrlport:has_status set to False in the block YAML=
... I ended up having to comment out that test sequence to move onto the pa=
rt that sends samples into and out of the block; now I have an error that s=
tates=C2=A0<br><br><b>Fatal: Timeout: Test &quot;Test passing through sampl=
es&quot; time limit exceeded<br></b><br>so I must be doing something that i=
t isn&#39;t liking :) I&#39;ve attached my updated .v and .sv files that I =
modified based on your guidance in your first response, as well as the upda=
ted xsim.log. Please let me know if there are any additional things I may n=
eed to change such as sizes and what not - thanks!</div><div><br></div><div=
>-Jeff</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Mon, May 9, 2022 at 3:12 PM Wade Fife &lt;<a href=3D"mailto:=
wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div>Hi Jeffrey,</div><div><br></div><div>Very curious that you&#39;re gett=
ing=20
that CTRL_STS_OKAY error, since it looks like you&#39;re not using the stat=
us. I assume ctrlport:has_status is set to False in your block&#39;s YAML? =
In that case the status should always be OK.<br></div><div><br></div><div>1=
) For different input/output packet sizes, you need to modify the context t=
o set the payload length of the outgoing packet. That&#39;s the block of co=
de starting on line 283 in the rfnoc_block_conv.v file you sent. There&#39;=
s an example in rfnoc_block_logpower, in which the output packet length is =
half the length of input packets. In your case you&#39;ll need to set it to=
 3/2 instead of 1/2. See here:<br></div><div><br></div><div><a href=3D"http=
s://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_EttusResearch=
_uhd_blob_master_fpga_usrp3_lib_rfnoc_blocks_rfnoc-5Fblock-5Flogpwr_rfnoc-5=
Fblock-5Flogpwr.v-23L202&amp;d=3DDwMFaQ&amp;c=3D-35OiAkTchMrZOngvJPOeA&amp;=
r=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD08QrmMzW9aeZY&amp;m=3DGXbgyQxDz4yiy7ZI94I=
9ia-1XvF2rdmrbxprVfQojmcljlWVOVrjE1Z7g7qsBL_a&amp;s=3DWkFBbmpL8IpvF2oHp-4Vf=
hy73qA49jSJD2tHoTQ0anQ&amp;e=3D" target=3D"_blank">https://github.com/Ettus=
Research/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_logpwr/rfn=
oc_block_logpwr.v#L202</a> <br></div><div><br></div><div>2) The testbenches=
 typically have an ITEM_W constant that indicates the size of the data type=
 you want to work with. The ITEM_W is normally set to the sample size (e.g.=
, 32 for sc16 samples). Since you want to work with bytes, you could change=
 that to 8 then create an item_t array and send it as a single packet using=
 blk_ctrl.send_items(). Then you can call blk_ctrl.recv_items() to get the =
data output packet, and inspect the items array that is returned. Take a lo=
ok at PkgRfnocBlockCtrlBfm to see what other send/recv methods are availabl=
e. Here&#39;s a quick example assuming the item size is 8-bit:</div><div><b=
r></div><div></div><div>item_t sent[$], received[$];</div><div>sent =3D { 0=
, 1, 2, 3, 4, 5, 6, 7, 8, 9 };=C2=A0 // Whatever values you want for the in=
put packet, one byte per element<br></div><div>blk_ctrl.send_items(0, sent)=
;</div><div><br></div><div>blk_ctrl.recv_items(0, received);</div><div>fore=
ach(received[i]) begin<br></div><div>=C2=A0 // Compare the expected value t=
o the byte in received[i] and see if it matches<br></div><div>end</div><div=
><br></div><div>Wade</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Mon, May 9, 2022 at 1:30 PM Jeffrey Cuenco via=
 USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bl=
ank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote=
"><div dir=3D"ltr"><div style=3D"font-family:tahoma,sans-serif">Hi all,</di=
v><div style=3D"font-family:tahoma,sans-serif"><br>Long time no see!=C2=A0I=
 am currently on a final stretches of completing a masters project for my w=
ireless embedded systems program that involves a USRP X310 with RFNoC 4.0 a=
nd GNURadio that implements a Hierarchical Modulation design using nested 4=
QAM / QPSK (final constellation &quot;appears&quot; like 16QAM but has embe=
dded high priority and low priority layers that can adapt based on SNR).</d=
iv><div style=3D"font-family:tahoma,sans-serif"><br></div><div style=3D"fon=
t-family:tahoma,sans-serif">I am currently attempting to integrate the Xili=
nx Convolutional Encoder v9.0 IP block into the template rfnoc_block_conv.v=
 design that was created using rfnocmodtool and modeled after the Ettus FFT=
 example. With a bit of work I was able to get the .xci file loaded by Viva=
do when the make target is executed for the testbench, and the testbench ap=
pears to build without much modification.</div><div style=3D"font-family:ta=
homa,sans-serif"><br>When executing &#39;make rfnoc_block_conv_tb&#39;=C2=
=A0 it appears to fully execute the build process to the end, but I receive=
 a fatal &quot;Did not receive CTRL_STS_OKAY status&quot; message in the pr=
ocess which I attribute to either something not being configured in the tes=
tbench file or something not being configured right in my verilog module fi=
le.=C2=A0</div><div style=3D"font-family:tahoma,sans-serif"><br></div><div =
style=3D"font-family:tahoma,sans-serif">I&#39;ve attempted to summarize whe=
re I&#39;m stuck and need help on in the below three summary points / quest=
ions:</div><div style=3D"font-family:tahoma,sans-serif">1) I have configure=
d the convolutional encoder with rate 1/2 and punctured (effective rate 2/3=
), which I assume will require me modifying the &quot;axi_wrapper&quot; so =
that the output to input ratios are set properly - are there additional exa=
mples that I can follow for this?=C2=A0</div><div style=3D"font-family:taho=
ma,sans-serif"><br></div><div style=3D"font-family:tahoma,sans-serif">I&#39=
;ve seen the axi_wrapper migration note but as I&#39;m still a novice at Ve=
rilog and System Verilog additional examples would be helpful. :)=C2=A0</di=
v><div style=3D"font-family:tahoma,sans-serif"><br></div><div style=3D"font=
-family:tahoma,sans-serif"><br>2) I would like to modify my testbench so th=
at I send 10 bytes (80 bits) of data, and read out the 15 bytes (120 bits) =
that get spit out and verify that the encoded bytes coming out of the core =
match ground truth data I would generate using MATLAB.=C2=A0</div><div styl=
e=3D"font-family:tahoma,sans-serif"><br></div><div style=3D"font-family:tah=
oma,sans-serif">Do we have any additional testbench examples or additional =
documentation that show sending 1 or more bytes of data through an IP core?=
 The IP core&#39;s=C2=A0<b>s_axis_data_tdata</b> and=C2=A0<b>m_axis_data_td=
ata </b>are 8-bit while most of the examples show sending 32 bits.=C2=A0 As=
ide from setting the assignments to [7:0] are there any other adjustments t=
hat need to be made in any of the signal declarations and/or block definiti=
on wires earlier in the file?</div><div style=3D"font-family:tahoma,sans-se=
rif"><br></div><div style=3D"font-family:tahoma,sans-serif">I&#39;ve provid=
ed the IP core documentation for reference just in case:</div><div style=3D=
"font-family:tahoma,sans-serif"><a href=3D"https://urldefense.proofpoint.co=
m/v2/url?u=3Dhttps-3A__docs.xilinx.com_v_u_en-2DUS_pg026-5Fconvolution&amp;=
d=3DDwMFaQ&amp;c=3D-35OiAkTchMrZOngvJPOeA&amp;r=3DY3cOHwFMBDXttsqnINKoCyXB-=
ta6yD08QrmMzW9aeZY&amp;m=3DGXbgyQxDz4yiy7ZI94I9ia-1XvF2rdmrbxprVfQojmcljlWV=
OVrjE1Z7g7qsBL_a&amp;s=3DVpTL0Eev0xGrPxywg6lGumMok1Lx8kj5t4uFefeMWNA&amp;e=
=3D" target=3D"_blank">https://docs.xilinx.com/v/u/en-US/pg026_convolution<=
/a></div><div style=3D"font-family:tahoma,sans-serif"><br></div><div style=
=3D"font-family:tahoma,sans-serif">I&#39;ve also included the=C2=A0module a=
nd testbench files as well as the xsim log.<br></div><div style=3D"font-fam=
ily:tahoma,sans-serif"><br></div><div style=3D"font-family:tahoma,sans-seri=
f">Thanks in advance!</div><div style=3D"font-family:tahoma,sans-serif">-Je=
ff</div><div style=3D"font-family:tahoma,sans-serif"><br></div></div>
</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</div></blockquote></div></div></blockquote></div>

--000000000000a0cacb05ded3e580--

--===============3385296078676141412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3385296078676141412==--
