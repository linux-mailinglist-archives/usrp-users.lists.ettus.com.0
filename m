Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C043528C94
	for <lists+usrp-users@lfdr.de>; Mon, 16 May 2022 20:08:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6EBA438538A
	for <lists+usrp-users@lfdr.de>; Mon, 16 May 2022 14:08:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652724527; bh=JDiMLd7zUvqC4q1Gt1AQtI7HUjX/ltri0kyQAvFMeqk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Xii3VzQ45Pl+Wim19BRK1EQCYS6DnBfuzf7PpkQi2l6HTkIBPW08k/Y+JhXVipse9
	 7wmiTXr7hUxiXO2xCwpyODrgDHPknPzGZsFjsW/PDseA7++IeNlEEXxcicD78Kverq
	 ys8GLLp94nXgQJcGYE7rx01o12YpWVGNdWKTTRZpd6RRfEBaa5JM/+S29Xk/LjlW44
	 loh2MNIogt3Qs9peesHDOJW1LIQhjQqBE7B0CC4YnyU2CyP9Oiun2ptEI3mnjnC0az
	 2rCqDTOJN9nP0IAjx+jMosYgcOZdfVR2Nz/3n7wpdTrIcxGOPUFaNncgvRmF02UrLy
	 EyrE8QXsV2maA==
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 688AA3851E7
	for <usrp-users@lists.ettus.com>; Mon, 16 May 2022 14:07:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="uTMZAbbF";
	dkim-atps=neutral
Received: by mail-yb1-f170.google.com with SMTP id d137so9260389ybc.13
        for <usrp-users@lists.ettus.com>; Mon, 16 May 2022 11:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RpwGWR/jGgFygkl8yexpxiyOIHRpcQ/DuhG3R7yUYuE=;
        b=uTMZAbbFmeuRRbKorr0jEE5uC9CfmJCWp5f0IwzE03potIBaRYz9wGFzM7AyFOZduH
         Cwk6mYY8bvCb91cIQcm+3HjOTTJo24qHYDZ+4Wu9HLBDjFLMlIuw243ilNIENLKjj/S4
         YRJAf9RVPpTfYBOGCZoR0YSkPT2XD628hVkway8pefgN5Afpqw0abXR7yWiCyFpdsDEk
         UYvAD4KH7FEWCDeAKxPgNQK2PiIeuX/e5UY+yTkyyiJB32kjrVRiK3I4071xSsgBc1wy
         G9rn0UUfcURFbm9of0GTfT0tFLlLMYA0oMbayKelx+84yF+whIsD5OkE6sdavJluIQJY
         1VCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RpwGWR/jGgFygkl8yexpxiyOIHRpcQ/DuhG3R7yUYuE=;
        b=XuZV4CQ/0sGj4EaZgZaIgpL1NjNW/sCFGvEYFU8dSxXIccMf27L8+zMHuAUhQHNYPa
         blR54iFXXegt+OKRKVj3Pir9I7VBSCcYYamQKB9SqDPkjrgcrGa70p84yDsHN39WnqpH
         XroqloXhyDvUVSDyMvzwLsMxdFY2QfKoJWqeVvwVWJB2bntDP9cdzAfsYlBzn5I2qeAX
         gZgNH4EruCJs3QmVmwYmCk8BsJVrbtuVOXVK7uSRINcYdYk1QX6LjeIZ1BswiSLF4FnD
         IOgnby1lZozonyZcmg+MKhPmtf8XSNcKbDfoSfSmq8hr+nibr+YaSodsO7M+g800zeQE
         CrYQ==
X-Gm-Message-State: AOAM530NWUVcbZud9L7snXXkHKeOR2cZWgtX0xkVb7Jm5CEO4emas5Ah
	WNBMGAjgWJJaAo+pR86mGekrRYehESaH62C2hAUDZi/8
X-Google-Smtp-Source: ABdhPJz0lXHbMlEmQWxiBcFSmxd1vNtxviB+CyHFK1JgaHaeUZHUJ7M+5ZJLYmgjRkzyTp+6RxEVapqZwmDmM98zRRw=
X-Received: by 2002:a25:c0d1:0:b0:64d:6eaa:a32c with SMTP id
 c200-20020a25c0d1000000b0064d6eaaa32cmr10497661ybf.108.1652724459756; Mon, 16
 May 2022 11:07:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAFche=gJZqr6W7C9au4GFmhfTSqgRq_XV9Vew8L4gcpLFoJ4EA@mail.gmail.com>
 <A6A77F83-C042-468F-BE5A-09EA770885A1@ucsd.edu>
In-Reply-To: <A6A77F83-C042-468F-BE5A-09EA770885A1@ucsd.edu>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 16 May 2022 13:07:23 -0500
Message-ID: <CAFche=haW91uXYC66eFjA0sVz+SiofC0wo_gXTfVW2pTiEngUA@mail.gmail.com>
To: Jeffrey Cuenco <jcuenco@ucsd.edu>
Message-ID-Hash: R5A6F5IZ4PQ55ZY5SMOXM2TYT2MBWVVU
X-Message-ID-Hash: R5A6F5IZ4PQ55ZY5SMOXM2TYT2MBWVVU
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jeffrey Cuenco <jeffrey.cuenco@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC 4.0 OOT FPGA Testbench Writing Guidance?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R5A6F5IZ4PQ55ZY5SMOXM2TYT2MBWVVU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3581552898457525991=="

--===============3581552898457525991==
Content-Type: multipart/alternative; boundary="00000000000055f16c05df24e6c1"

--00000000000055f16c05df24e6c1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I was looking at your code to answer your question when I noticed that the
noc_shell code doesn't seem to match your YAML, so I'm wondering if the
YAML was modified after you generated your noc_shell? The noc_shell is
missing the ce_clk declared in your YAML.

To answer your question, I'm going to assume you want a ce_clk that's
different from rfnoc_chdr_clk and rfnoc_ctrl_clk and you want your DSP and
the registers to use ce_clk. In that case:

   1. Regenerate your block to get a new noc_shell_conv. This will add a
   ce_clk input and a ce_rst output to noc_shell_conv. Again, be careful to
   not overwrite your existing code when regenerating your block.
   2. In rfnoc_block_conv, connect the ce_clk input port to the ce_clk
   input port of noc_shell_conv.
   3. In rfnoc_block_conv, declare a ce_rst wire at the top and connect it
   to the ce_rst output port of your noc_shell.
   4. Update your registers and custom logic to use ce_clk and ce_rst.

The answer is slightly different if you want to use the current noc_shell.
But in general, you say what clocks you want to use in the YAML file. When
the noc_shell is generated, it will take as inputs the clocks you declared
in the YAML, it will output resets that you can use for those clock
domains, and it will output on ctrlport_clk and axis_data_clk whatever
clocks you said in the YAML that you wanted to use for those interfaces.
This can be a bit confusing because it means you can have multiple versions
of the same clock under different names (e.g., ce_clk, ctrlport_clk, and
axis_data_clk might all be the same clock, just on different signal names).

Wade


On Fri, May 13, 2022 at 1:09 PM Jeffrey Cuenco <jcuenco@ucsd.edu> wrote:

> Thanks Wade!
>
> I went ahead and restored the signal sizes to 32-bit as you suggested.
>
> For using ce_clk, does it suffice for me to create a wire for ce_clk in
> the .v file and then reference it from the yaml? Is ordering important or
> just ensuring the name matches the wire? Thanks!
>
> -Jeff
>
>
> On May 12, 2022, at 10:29, Wade Fife <wade.fife@ettus.com> wrote:
>
> =EF=BB=BF
> Hi Jeff,
>
> I took a look and noticed a couple things.
>
>    - There are some signal width mismatches in rfnoc_block_conv.v. Take a
>    look at s_rfnoc_ctrl_tdata, m_rfnoc_ctrl_tdata, m_in_payload_tdata,
>    s_out_payload_tdata. They have different widths than what the noc_shel=
l
>    expects. I think it's possible to change the payload_tdata width to 8 =
on
>    the noc_shell by changing the item_width in your YAML, but you'll want=
 to
>    regenerate the noc_shell to do that (be careful not to overwrite your =
other
>    files if you do this). But the ctrl bus must be 32-bit.
>    - The ctrlport_clk has no driver. It looks like you specified ce_clk
>    as the clock domain in your YAML, so perhaps that's the clock you want=
 to
>    use?
>
> Try resolving these issues and see where that gets you.
>
> Wade
>
> On Wed, May 11, 2022 at 2:19 PM Jeffrey Cuenco <jeffrey.cuenco@gmail.com>
> wrote:
>
>> Hi Wade,
>>
>> Please see attached. Thanks!
>>
>> -Jeff
>>
>>
>>
>>
>> On May 11, 2022, at 08:42, Wade Fife <wade.fife@ettus.com> wrote:
>>
>> =EF=BB=BF
>> Can you also share your block's YML and the noc_shell you generated?
>>
>> Wade
>>
>> On Wed, May 11, 2022 at 4:27 AM Jeffrey Cuenco <jcuenco@ucsd.edu> wrote:
>>
>>> Hi Wade,
>>>
>>> Yes, I have the ctrlport:has_status set to False in the block YAML... I
>>> ended up having to comment out that test sequence to move onto the part
>>> that sends samples into and out of the block; now I have an error that
>>> states
>>>
>>>
>>> *Fatal: Timeout: Test "Test passing through samples" time limit exceede=
d*
>>> so I must be doing something that it isn't liking :) I've attached my
>>> updated .v and .sv files that I modified based on your guidance in your
>>> first response, as well as the updated xsim.log. Please let me know if
>>> there are any additional things I may need to change such as sizes and =
what
>>> not - thanks!
>>>
>>> -Jeff
>>>
>>> On Mon, May 9, 2022 at 3:12 PM Wade Fife <wade.fife@ettus.com> wrote:
>>>
>>>> Hi Jeffrey,
>>>>
>>>> Very curious that you're getting that CTRL_STS_OKAY error, since it
>>>> looks like you're not using the status. I assume ctrlport:has_status i=
s set
>>>> to False in your block's YAML? In that case the status should always b=
e OK.
>>>>
>>>> 1) For different input/output packet sizes, you need to modify the
>>>> context to set the payload length of the outgoing packet. That's the b=
lock
>>>> of code starting on line 283 in the rfnoc_block_conv.v file you sent.
>>>> There's an example in rfnoc_block_logpower, in which the output packet
>>>> length is half the length of input packets. In your case you'll need t=
o set
>>>> it to 3/2 instead of 1/2. See here:
>>>>
>>>>
>>>> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/=
blocks/rfnoc_block_logpwr/rfnoc_block_logpwr.v#L202
>>>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_Ett=
usResearch_uhd_blob_master_fpga_usrp3_lib_rfnoc_blocks_rfnoc-5Fblock-5Flogp=
wr_rfnoc-5Fblock-5Flogpwr.v-23L202&d=3DDwMFaQ&c=3D-35OiAkTchMrZOngvJPOeA&r=
=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD08QrmMzW9aeZY&m=3DGXbgyQxDz4yiy7ZI94I9ia-1=
XvF2rdmrbxprVfQojmcljlWVOVrjE1Z7g7qsBL_a&s=3DWkFBbmpL8IpvF2oHp-4Vfhy73qA49j=
SJD2tHoTQ0anQ&e=3D>
>>>>
>>>> 2) The testbenches typically have an ITEM_W constant that indicates th=
e
>>>> size of the data type you want to work with. The ITEM_W is normally se=
t to
>>>> the sample size (e.g., 32 for sc16 samples). Since you want to work wi=
th
>>>> bytes, you could change that to 8 then create an item_t array and send=
 it
>>>> as a single packet using blk_ctrl.send_items(). Then you can call
>>>> blk_ctrl.recv_items() to get the data output packet, and inspect the i=
tems
>>>> array that is returned. Take a look at PkgRfnocBlockCtrlBfm to see wha=
t
>>>> other send/recv methods are available. Here's a quick example assuming=
 the
>>>> item size is 8-bit:
>>>>
>>>> item_t sent[$], received[$];
>>>> sent =3D { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };  // Whatever values you wan=
t
>>>> for the input packet, one byte per element
>>>> blk_ctrl.send_items(0, sent);
>>>>
>>>> blk_ctrl.recv_items(0, received);
>>>> foreach(received[i]) begin
>>>>   // Compare the expected value to the byte in received[i] and see if
>>>> it matches
>>>> end
>>>>
>>>> Wade
>>>>
>>>> On Mon, May 9, 2022 at 1:30 PM Jeffrey Cuenco via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> Hi all,
>>>>>
>>>>> Long time no see! I am currently on a final stretches of completing a
>>>>> masters project for my wireless embedded systems program that involve=
s a
>>>>> USRP X310 with RFNoC 4.0 and GNURadio that implements a Hierarchical
>>>>> Modulation design using nested 4QAM / QPSK (final constellation "appe=
ars"
>>>>> like 16QAM but has embedded high priority and low priority layers tha=
t can
>>>>> adapt based on SNR).
>>>>>
>>>>> I am currently attempting to integrate the Xilinx Convolutional
>>>>> Encoder v9.0 IP block into the template rfnoc_block_conv.v design tha=
t was
>>>>> created using rfnocmodtool and modeled after the Ettus FFT example. W=
ith a
>>>>> bit of work I was able to get the .xci file loaded by Vivado when the=
 make
>>>>> target is executed for the testbench, and the testbench appears to bu=
ild
>>>>> without much modification.
>>>>>
>>>>> When executing 'make rfnoc_block_conv_tb'  it appears to fully execut=
e
>>>>> the build process to the end, but I receive a fatal "Did not receive
>>>>> CTRL_STS_OKAY status" message in the process which I attribute to eit=
her
>>>>> something not being configured in the testbench file or something not=
 being
>>>>> configured right in my verilog module file.
>>>>>
>>>>> I've attempted to summarize where I'm stuck and need help on in the
>>>>> below three summary points / questions:
>>>>> 1) I have configured the convolutional encoder with rate 1/2 and
>>>>> punctured (effective rate 2/3), which I assume will require me modify=
ing
>>>>> the "axi_wrapper" so that the output to input ratios are set properly=
 - are
>>>>> there additional examples that I can follow for this?
>>>>>
>>>>> I've seen the axi_wrapper migration note but as I'm still a novice at
>>>>> Verilog and System Verilog additional examples would be helpful. :)
>>>>>
>>>>>
>>>>> 2) I would like to modify my testbench so that I send 10 bytes (80
>>>>> bits) of data, and read out the 15 bytes (120 bits) that get spit out=
 and
>>>>> verify that the encoded bytes coming out of the core match ground tru=
th
>>>>> data I would generate using MATLAB.
>>>>>
>>>>> Do we have any additional testbench examples or additional
>>>>> documentation that show sending 1 or more bytes of data through an IP=
 core?
>>>>> The IP core's *s_axis_data_tdata* and *m_axis_data_tdata *are 8-bit
>>>>> while most of the examples show sending 32 bits.  Aside from setting =
the
>>>>> assignments to [7:0] are there any other adjustments that need to be =
made
>>>>> in any of the signal declarations and/or block definition wires earli=
er in
>>>>> the file?
>>>>>
>>>>> I've provided the IP core documentation for reference just in case:
>>>>> https://docs.xilinx.com/v/u/en-US/pg026_convolution
>>>>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__docs.xilinx.c=
om_v_u_en-2DUS_pg026-5Fconvolution&d=3DDwMFaQ&c=3D-35OiAkTchMrZOngvJPOeA&r=
=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD08QrmMzW9aeZY&m=3DGXbgyQxDz4yiy7ZI94I9ia-1=
XvF2rdmrbxprVfQojmcljlWVOVrjE1Z7g7qsBL_a&s=3DVpTL0Eev0xGrPxywg6lGumMok1Lx8k=
j5t4uFefeMWNA&e=3D>
>>>>>
>>>>> I've also included the module and testbench files as well as the xsim
>>>>> log.
>>>>>
>>>>> Thanks in advance!
>>>>> -Jeff
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>>

--00000000000055f16c05df24e6c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I was looking at your code to answer your question wh=
en I noticed that the noc_shell code doesn&#39;t seem to match your YAML, s=
o I&#39;m wondering if the YAML was modified after you generated your noc_s=
hell? The noc_shell is missing the ce_clk declared in your YAML.</div><div>=
<br></div><div>To answer your question, I&#39;m going to assume you want a =
ce_clk that&#39;s different from rfnoc_chdr_clk and rfnoc_ctrl_clk and you =
want your DSP and the registers to use ce_clk. In that case:</div><div><ol>=
<li>Regenerate your block to get a new noc_shell_conv. This will add a ce_c=
lk input and a ce_rst output to noc_shell_conv. Again, be careful to not ov=
erwrite your existing code when regenerating your block.<br></li><li>In rfn=
oc_block_conv, connect the ce_clk input port to the ce_clk input port of no=
c_shell_conv.</li><li>In rfnoc_block_conv, declare a ce_rst wire at the top=
 and connect it to the ce_rst output port of your noc_shell.</li><li>Update=
 your registers and custom logic to use ce_clk and ce_rst.</li></ol></div><=
div></div><div>The answer is slightly different if you want to use the curr=
ent noc_shell. But in general, you say what clocks you want to use in the Y=
AML file. When the noc_shell is generated, it will take as inputs the clock=
s you declared in the YAML, it will output resets=20
that you can use

for those clock domains, and it will output on ctrlport_clk and axis_data_c=
lk whatever clocks you said in the YAML that you wanted to use for those in=
terfaces. This can be a bit confusing because it means you can have multipl=
e versions of the same clock under different names (e.g., ce_clk, ctrlport_=
clk, and axis_data_clk might all be the same clock, just on different signa=
l names).<br></div><div><br></div><div>Wade<br></div><br></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 13, 20=
22 at 1:09 PM Jeffrey Cuenco &lt;<a href=3D"mailto:jcuenco@ucsd.edu">jcuenc=
o@ucsd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"auto">Thanks Wade!<br><br><div dir=3D"ltr"><div><spa=
n style=3D"background-color:rgba(255,255,255,0)">I went ahead and restored =
the signal sizes to 32-bit as you suggested.</span></div><div><span style=
=3D"background-color:rgba(255,255,255,0)"><br></span></div><div><span style=
=3D"background-color:rgba(255,255,255,0)">For using ce_clk, does it suffice=
 for me to create a wire for ce_clk in the .v file and then reference it fr=
om the yaml? Is ordering important or just ensuring the name matches the wi=
re? Thanks!</span></div><div><span style=3D"background-color:rgba(255,255,2=
55,0)"><br></span></div><div><span style=3D"background-color:rgba(255,255,2=
55,0)">-Jeff</span></div><div><span style=3D"background-color:rgba(255,255,=
255,0)"><br></span></div><div><span style=3D"background-color:rgba(255,255,=
255,0)"><br></span></div></div><div dir=3D"ltr"><blockquote type=3D"cite">O=
n May 12, 2022, at 10:29, Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.c=
om" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br><br></blockquot=
e></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr=
"><div>Hi Jeff,</div><div><br></div><div>I took a look and noticed a couple=
 things.<br></div><div><ul><li>There are some signal width mismatches in rf=
noc_block_conv.v. Take a look at s_rfnoc_ctrl_tdata, m_rfnoc_ctrl_tdata, m_=
in_payload_tdata, s_out_payload_tdata. They have different widths than what=
 the noc_shell expects. I think it&#39;s possible to change the payload_tda=
ta width to 8 on the noc_shell by changing the item_width in your YAML, but=
 you&#39;ll want to regenerate the noc_shell to do that (be careful not to =
overwrite your other files if you do this). But the ctrl bus must be 32-bit=
.<br></li><li>The ctrlport_clk has no driver. It looks like you specified c=
e_clk as the clock domain in your YAML, so perhaps that&#39;s the clock you=
 want to use?</li></ul><div>Try resolving these issues and see where that g=
ets you.<br></div><div><br></div><div>Wade<br></div></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 11, 2=
022 at 2:19 PM Jeffrey Cuenco &lt;<a href=3D"mailto:jeffrey.cuenco@gmail.co=
m" target=3D"_blank">jeffrey.cuenco@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hi Wade,<div=
><br></div><div>Please see attached. Thanks!</div><div><br></div><div>-Jeff=
</div><div><br></div></div><div dir=3D"auto" role=3D"textbox" aria-label=3D=
"Message Body"><div></div><div><br></div><div><font color=3D"#0a84ff"><span=
></span></font></div></div><div dir=3D"auto"><div><font color=3D"#0a84ff"><=
span><br></span></font><div dir=3D"ltr"><div><span style=3D"background-colo=
r:rgba(255,255,255,0)"><br></span></div><div></div></div><div dir=3D"ltr"><=
blockquote type=3D"cite">On May 11, 2022, at 08:42, Wade Fife &lt;<a href=
=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&g=
t; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"l=
tr">=EF=BB=BF<div dir=3D"ltr"><div>Can you also share your block&#39;s YML =
and the noc_shell you generated?</div><div><br></div><div>Wade<br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, May 11, 2022 at 4:27 AM Jeffrey Cuenco &lt;<a href=3D"mailto:jcuenco@u=
csd.edu" target=3D"_blank">jcuenco@ucsd.edu</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Wade,<div><b=
r></div><div>Yes, I have the ctrlport:has_status set to False in the block =
YAML... I ended up having to comment out that test sequence to move onto th=
e part that sends samples into and out of the block; now I have an error th=
at states=C2=A0<br><br><b>Fatal: Timeout: Test &quot;Test passing through s=
amples&quot; time limit exceeded<br></b><br>so I must be doing something th=
at it isn&#39;t liking :) I&#39;ve attached my updated .v and .sv files tha=
t I modified based on your guidance in your first response, as well as the =
updated xsim.log. Please let me know if there are any additional things I m=
ay need to change such as sizes and what not - thanks!</div><div><br></div>=
<div>-Jeff</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, May 9, 2022 at 3:12 PM Wade Fife &lt;<a href=3D"mai=
lto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div>Hi Jeffrey,</div><div><br></div><div>Very curious that you&#39;re =
getting=20
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
</div></blockquote></div></blockquote></div>

--00000000000055f16c05df24e6c1--

--===============3581552898457525991==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3581552898457525991==--
