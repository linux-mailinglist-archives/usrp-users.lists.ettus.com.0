Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5C352C9F6
	for <lists+usrp-users@lfdr.de>; Thu, 19 May 2022 05:00:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DFF78384642
	for <lists+usrp-users@lfdr.de>; Wed, 18 May 2022 23:00:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652929242; bh=OLFvB50FI7abBf+Nm7rC4eFdojq5oy+drTOKukqsCMM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=JEKqd6fx1bJy55VgpKHqs4k/kS7Erl4JSaYeDJbDxwasMm7xsQNn1FVj20O29PEnT
	 pMFdJusK63qLQ+7cIBTooQQ614oqx2WaWi50CkF0Ir6LNSV9xcTgv47KYGJVuQrlUd
	 kQNimXBl/13Xx3YXqCZ0cn+6vUPxkjKV0st76+wq0rUDjCIB4DxlCV9lOdjKVzcO6K
	 iEH0TlE8X4uiEhmHdlSobV6WsOSMEmnz0Yq6CLG3JId4O2uEMNR2PLPSFrkonz+S28
	 1J/bKdHnM96lNdSs8GZy70Yh4IOg6PiH7wG5gk0kzNx1mjYxjMS1W7DsbXdgQh9GjB
	 mRYpL1+rciJNA==
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	by mm2.emwd.com (Postfix) with ESMTPS id C11E93845D0
	for <usrp-users@lists.ettus.com>; Wed, 18 May 2022 22:59:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="Lup/DE2z";
	dkim-atps=neutral
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-2f83983782fso43859247b3.6
        for <usrp-users@lists.ettus.com>; Wed, 18 May 2022 19:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HqcakNYr2Z+iz72xObYXkF4dFtrgW6gz8c/vNfhdKlI=;
        b=Lup/DE2zYk8s7Au0XIHoZBcmzlPuIWY8M9P3vmtUBn9q0Mick6SBVX401L3FmHysQc
         IczyRFgtj1jJTNuhH8u6E8sLJbK8NlrTrDPU5dNPHXbqQeJTjNOZNzKrnp48K7af1ZvI
         9BZXIwpZnqUwfsEENWw5+GcF6LmrVtmzsXTvegKbI/x86nWtHED11GZfa6hrAXn7qH1W
         WSF0I30riBt4ZLzjYAfrciC7PF3E5BuxgT/5tkltAY0un7PEKPj9uLMAhtS0KkoKwNP0
         N/PialzQHf7r2q2zRqxUbI6aZQW7sqZ/4K7VyldpHarGr9k8Acui4z6FRKn5hOI91TNr
         14Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HqcakNYr2Z+iz72xObYXkF4dFtrgW6gz8c/vNfhdKlI=;
        b=cu0IMHDMfOBw0zvt9WXSl2zpQv+yJJhtAuUh8u3rwavMepTc9RKFLGdlpWahdqQR7p
         OTd+bVrSDnsIc3Rj0lkTLxIqXnV6vzC6PKKNd6LSEBdQKtp8cK3s9KOnHd7qSC2wPeZL
         6scZ3atBTEt087gdl6Ernc515YJ7ehasV9DaMrrla+Bm4isi9S7o8+k76lhtWmdoZo+R
         UpyPiiZwxrE7hvZtPWtcKw5UKJaDJLhQNPyoiFfcK7qNn/UPBUr6/4qxkPM3O5LqHNFo
         U501NNR5FCXr+EIgBugbN7jpnXgoTX0ghPz2VZ2p4QcgzneBTzlw1TEOwg/3FCzLoFXZ
         krdw==
X-Gm-Message-State: AOAM532pxeouVgtKzJAJ5wQoqSNNPaC/YBV9//oZxUIeb4EUYK6DYhNd
	g+1KY3oDqcwmegbbs3CFEmz/UghSQU+8LinFlSQlZsHZ
X-Google-Smtp-Source: ABdhPJzLlWyrkTr5Em/iybTouJpHlS8SUHFu+117BGFw5barogde+rZS7bWGU2/Gkx8ES/nxRBibbh4+DSoSbPKBYPY=
X-Received: by 2002:a81:2f57:0:b0:2ff:111c:6003 with SMTP id
 v84-20020a812f57000000b002ff111c6003mr2447780ywv.363.1652929177076; Wed, 18
 May 2022 19:59:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAFche=gJZqr6W7C9au4GFmhfTSqgRq_XV9Vew8L4gcpLFoJ4EA@mail.gmail.com>
 <A6A77F83-C042-468F-BE5A-09EA770885A1@ucsd.edu> <CAFche=haW91uXYC66eFjA0sVz+SiofC0wo_gXTfVW2pTiEngUA@mail.gmail.com>
 <CA+GXwQBtvXawEqM6h59CohnG15Joy=jNPBeyrufTzkYpTm6Z_A@mail.gmail.com>
 <CA+GXwQDbzbYxkSTLWucY-GcfpaBrm2mbECu=pbhhrTsRsSBcfQ@mail.gmail.com> <CA+GXwQB2_vsAU6XF82qj9p-fF3keKw2+JAT4DUODZf8p369c1w@mail.gmail.com>
In-Reply-To: <CA+GXwQB2_vsAU6XF82qj9p-fF3keKw2+JAT4DUODZf8p369c1w@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 18 May 2022 21:59:21 -0500
Message-ID: <CAFche=jJyeqcaf5sPSkxA3qokEDXm=FfmaFmgxP784M4Ms2rOQ@mail.gmail.com>
To: Jeffrey Cuenco <jeffrey.cuenco@gmail.com>
Message-ID-Hash: UAOAUTGEHPW5CSO42BG4L73P3LGIAM2G
X-Message-ID-Hash: UAOAUTGEHPW5CSO42BG4L73P3LGIAM2G
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jeffrey Cuenco <jcuenco@ucsd.edu>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC 4.0 OOT FPGA Testbench Writing Guidance?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UAOAUTGEHPW5CSO42BG4L73P3LGIAM2G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2143633506682988341=="

--===============2143633506682988341==
Content-Type: multipart/alternative; boundary="00000000000070572605df5490f1"

--00000000000070572605df5490f1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you want to customize the YAML and regenerate from your modified YAML,
then I think you need to use rfnoc_create_verilog (part of UHD). So you
could do something like:

python3 uhd/host/utils/rfnoc_blocktool/rfnoc_create_verilog.py -c conv.yml
-d ./rfnoc_block_conv

However, I see ce_rst in the modtool templates:

https://github.com/EttusResearch/gr-ettus/blob/master/python/rfnoc_modtool/=
templates.py#L994
https://github.com/EttusResearch/gr-ettus/blob/master/python/rfnoc_modtool/=
templates.py#L1384

Perhaps you're using an older version of modtool?

Wade




On Wed, May 18, 2022 at 12:33 PM Jeffrey Cuenco <jeffrey.cuenco@gmail.com>
wrote:

> Spoke too soon - sent last one out too fast so apologies for the message
> clutter:
>
> What I see in rfnoc_block_conv.v is ce_clk as an input wire within the
> rfnoc_block_conv module declaration.
>
> However, I don't see ce_rst anywhere in either the noc_shell_conv.v nor
> the rfnoc_block_conv.v files.
>
> Is this something I should be concerned about, or will I need to manually
> add this wire in? Please advise - thanks!
>
> -Jeff
>
>
> On Wed, May 18, 2022 at 10:26 AM Jeffrey Cuenco <jeffrey.cuenco@gmail.com=
>
> wrote:
>
>> To clarify - I see them in rfnoc_block_conv.v but not in noc_shell_conv.=
v
>> - just want to ensure that is okay; I ended up regenerating from scratch=
 as
>> I had used the gain block as a base the first time and it seems it was
>> generated with an older RFNoC 3.x codegen.
>>
>> Will proceed with this and let you know my results. Thanks!
>>
>> On Wed, May 18, 2022 at 7:55 AM Jeffrey Cuenco <jeffrey.cuenco@gmail.com=
>
>> wrote:
>>
>>> Thanks Wade!
>>>
>>> I tried to regenerate using rfnocmodtool and noticed that the ce_clk an=
d
>>> ce_rst wires aren't present in the template code and the yaml files get
>>> overwritten - is there another command for rfnocmodtool that I should b=
e
>>> using to regenerate after customizing the yaml? Thanks!
>>>
>>> -Jeff
>>>
>>> On Mon, May 16, 2022 at 11:07 AM Wade Fife <wade.fife@ettus.com> wrote:
>>>
>>>> I was looking at your code to answer your question when I noticed that
>>>> the noc_shell code doesn't seem to match your YAML, so I'm wondering i=
f the
>>>> YAML was modified after you generated your noc_shell? The noc_shell is
>>>> missing the ce_clk declared in your YAML.
>>>>
>>>> To answer your question, I'm going to assume you want a ce_clk that's
>>>> different from rfnoc_chdr_clk and rfnoc_ctrl_clk and you want your DSP=
 and
>>>> the registers to use ce_clk. In that case:
>>>>
>>>>    1. Regenerate your block to get a new noc_shell_conv. This will add
>>>>    a ce_clk input and a ce_rst output to noc_shell_conv. Again, be car=
eful to
>>>>    not overwrite your existing code when regenerating your block.
>>>>    2. In rfnoc_block_conv, connect the ce_clk input port to the ce_clk
>>>>    input port of noc_shell_conv.
>>>>    3. In rfnoc_block_conv, declare a ce_rst wire at the top and
>>>>    connect it to the ce_rst output port of your noc_shell.
>>>>    4. Update your registers and custom logic to use ce_clk and ce_rst.
>>>>
>>>> The answer is slightly different if you want to use the current
>>>> noc_shell. But in general, you say what clocks you want to use in the =
YAML
>>>> file. When the noc_shell is generated, it will take as inputs the cloc=
ks
>>>> you declared in the YAML, it will output resets that you can use for t=
hose
>>>> clock domains, and it will output on ctrlport_clk and axis_data_clk
>>>> whatever clocks you said in the YAML that you wanted to use for those
>>>> interfaces. This can be a bit confusing because it means you can have
>>>> multiple versions of the same clock under different names (e.g., ce_cl=
k,
>>>> ctrlport_clk, and axis_data_clk might all be the same clock, just on
>>>> different signal names).
>>>>
>>>> Wade
>>>>
>>>>
>>>> On Fri, May 13, 2022 at 1:09 PM Jeffrey Cuenco <jcuenco@ucsd.edu>
>>>> wrote:
>>>>
>>>>> Thanks Wade!
>>>>>
>>>>> I went ahead and restored the signal sizes to 32-bit as you suggested=
.
>>>>>
>>>>> For using ce_clk, does it suffice for me to create a wire for ce_clk
>>>>> in the .v file and then reference it from the yaml? Is ordering impor=
tant
>>>>> or just ensuring the name matches the wire? Thanks!
>>>>>
>>>>> -Jeff
>>>>>
>>>>>
>>>>> On May 12, 2022, at 10:29, Wade Fife <wade.fife@ettus.com> wrote:
>>>>>
>>>>> =EF=BB=BF
>>>>> Hi Jeff,
>>>>>
>>>>> I took a look and noticed a couple things.
>>>>>
>>>>>    - There are some signal width mismatches in rfnoc_block_conv.v.
>>>>>    Take a look at s_rfnoc_ctrl_tdata, m_rfnoc_ctrl_tdata, m_in_payloa=
d_tdata,
>>>>>    s_out_payload_tdata. They have different widths than what the noc_=
shell
>>>>>    expects. I think it's possible to change the payload_tdata width t=
o 8 on
>>>>>    the noc_shell by changing the item_width in your YAML, but you'll =
want to
>>>>>    regenerate the noc_shell to do that (be careful not to overwrite y=
our other
>>>>>    files if you do this). But the ctrl bus must be 32-bit.
>>>>>    - The ctrlport_clk has no driver. It looks like you specified
>>>>>    ce_clk as the clock domain in your YAML, so perhaps that's the clo=
ck you
>>>>>    want to use?
>>>>>
>>>>> Try resolving these issues and see where that gets you.
>>>>>
>>>>> Wade
>>>>>
>>>>> On Wed, May 11, 2022 at 2:19 PM Jeffrey Cuenco <
>>>>> jeffrey.cuenco@gmail.com> wrote:
>>>>>
>>>>>> Hi Wade,
>>>>>>
>>>>>> Please see attached. Thanks!
>>>>>>
>>>>>> -Jeff
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>> On May 11, 2022, at 08:42, Wade Fife <wade.fife@ettus.com> wrote:
>>>>>>
>>>>>> =EF=BB=BF
>>>>>> Can you also share your block's YML and the noc_shell you generated?
>>>>>>
>>>>>> Wade
>>>>>>
>>>>>> On Wed, May 11, 2022 at 4:27 AM Jeffrey Cuenco <jcuenco@ucsd.edu>
>>>>>> wrote:
>>>>>>
>>>>>>> Hi Wade,
>>>>>>>
>>>>>>> Yes, I have the ctrlport:has_status set to False in the block
>>>>>>> YAML... I ended up having to comment out that test sequence to move=
 onto
>>>>>>> the part that sends samples into and out of the block; now I have a=
n error
>>>>>>> that states
>>>>>>>
>>>>>>>
>>>>>>> *Fatal: Timeout: Test "Test passing through samples" time limit
>>>>>>> exceeded*
>>>>>>> so I must be doing something that it isn't liking :) I've attached
>>>>>>> my updated .v and .sv files that I modified based on your guidance =
in your
>>>>>>> first response, as well as the updated xsim.log. Please let me know=
 if
>>>>>>> there are any additional things I may need to change such as sizes =
and what
>>>>>>> not - thanks!
>>>>>>>
>>>>>>> -Jeff
>>>>>>>
>>>>>>> On Mon, May 9, 2022 at 3:12 PM Wade Fife <wade.fife@ettus.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Hi Jeffrey,
>>>>>>>>
>>>>>>>> Very curious that you're getting that CTRL_STS_OKAY error, since i=
t
>>>>>>>> looks like you're not using the status. I assume ctrlport:has_stat=
us is set
>>>>>>>> to False in your block's YAML? In that case the status should alwa=
ys be OK.
>>>>>>>>
>>>>>>>> 1) For different input/output packet sizes, you need to modify the
>>>>>>>> context to set the payload length of the outgoing packet. That's t=
he block
>>>>>>>> of code starting on line 283 in the rfnoc_block_conv.v file you se=
nt.
>>>>>>>> There's an example in rfnoc_block_logpower, in which the output pa=
cket
>>>>>>>> length is half the length of input packets. In your case you'll ne=
ed to set
>>>>>>>> it to 3/2 instead of 1/2. See here:
>>>>>>>>
>>>>>>>>
>>>>>>>> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rf=
noc/blocks/rfnoc_block_logpwr/rfnoc_block_logpwr.v#L202
>>>>>>>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com=
_EttusResearch_uhd_blob_master_fpga_usrp3_lib_rfnoc_blocks_rfnoc-5Fblock-5F=
logpwr_rfnoc-5Fblock-5Flogpwr.v-23L202&d=3DDwMFaQ&c=3D-35OiAkTchMrZOngvJPOe=
A&r=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD08QrmMzW9aeZY&m=3DGXbgyQxDz4yiy7ZI94I9i=
a-1XvF2rdmrbxprVfQojmcljlWVOVrjE1Z7g7qsBL_a&s=3DWkFBbmpL8IpvF2oHp-4Vfhy73qA=
49jSJD2tHoTQ0anQ&e=3D>
>>>>>>>>
>>>>>>>> 2) The testbenches typically have an ITEM_W constant that indicate=
s
>>>>>>>> the size of the data type you want to work with. The ITEM_W is nor=
mally set
>>>>>>>> to the sample size (e.g., 32 for sc16 samples). Since you want to =
work with
>>>>>>>> bytes, you could change that to 8 then create an item_t array and =
send it
>>>>>>>> as a single packet using blk_ctrl.send_items(). Then you can call
>>>>>>>> blk_ctrl.recv_items() to get the data output packet, and inspect t=
he items
>>>>>>>> array that is returned. Take a look at PkgRfnocBlockCtrlBfm to see=
 what
>>>>>>>> other send/recv methods are available. Here's a quick example assu=
ming the
>>>>>>>> item size is 8-bit:
>>>>>>>>
>>>>>>>> item_t sent[$], received[$];
>>>>>>>> sent =3D { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };  // Whatever values you
>>>>>>>> want for the input packet, one byte per element
>>>>>>>> blk_ctrl.send_items(0, sent);
>>>>>>>>
>>>>>>>> blk_ctrl.recv_items(0, received);
>>>>>>>> foreach(received[i]) begin
>>>>>>>>   // Compare the expected value to the byte in received[i] and see
>>>>>>>> if it matches
>>>>>>>> end
>>>>>>>>
>>>>>>>> Wade
>>>>>>>>
>>>>>>>> On Mon, May 9, 2022 at 1:30 PM Jeffrey Cuenco via USRP-users <
>>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>>
>>>>>>>>> Hi all,
>>>>>>>>>
>>>>>>>>> Long time no see! I am currently on a final stretches of
>>>>>>>>> completing a masters project for my wireless embedded systems pro=
gram that
>>>>>>>>> involves a USRP X310 with RFNoC 4.0 and GNURadio that implements =
a
>>>>>>>>> Hierarchical Modulation design using nested 4QAM / QPSK (final
>>>>>>>>> constellation "appears" like 16QAM but has embedded high priority=
 and low
>>>>>>>>> priority layers that can adapt based on SNR).
>>>>>>>>>
>>>>>>>>> I am currently attempting to integrate the Xilinx Convolutional
>>>>>>>>> Encoder v9.0 IP block into the template rfnoc_block_conv.v design=
 that was
>>>>>>>>> created using rfnocmodtool and modeled after the Ettus FFT exampl=
e. With a
>>>>>>>>> bit of work I was able to get the .xci file loaded by Vivado when=
 the make
>>>>>>>>> target is executed for the testbench, and the testbench appears t=
o build
>>>>>>>>> without much modification.
>>>>>>>>>
>>>>>>>>> When executing 'make rfnoc_block_conv_tb'  it appears to fully
>>>>>>>>> execute the build process to the end, but I receive a fatal "Did =
not
>>>>>>>>> receive CTRL_STS_OKAY status" message in the process which I attr=
ibute to
>>>>>>>>> either something not being configured in the testbench file or so=
mething
>>>>>>>>> not being configured right in my verilog module file.
>>>>>>>>>
>>>>>>>>> I've attempted to summarize where I'm stuck and need help on in
>>>>>>>>> the below three summary points / questions:
>>>>>>>>> 1) I have configured the convolutional encoder with rate 1/2 and
>>>>>>>>> punctured (effective rate 2/3), which I assume will require me mo=
difying
>>>>>>>>> the "axi_wrapper" so that the output to input ratios are set prop=
erly - are
>>>>>>>>> there additional examples that I can follow for this?
>>>>>>>>>
>>>>>>>>> I've seen the axi_wrapper migration note but as I'm still a novic=
e
>>>>>>>>> at Verilog and System Verilog additional examples would be helpfu=
l. :)
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> 2) I would like to modify my testbench so that I send 10 bytes (8=
0
>>>>>>>>> bits) of data, and read out the 15 bytes (120 bits) that get spit=
 out and
>>>>>>>>> verify that the encoded bytes coming out of the core match ground=
 truth
>>>>>>>>> data I would generate using MATLAB.
>>>>>>>>>
>>>>>>>>> Do we have any additional testbench examples or additional
>>>>>>>>> documentation that show sending 1 or more bytes of data through a=
n IP core?
>>>>>>>>> The IP core's *s_axis_data_tdata* and *m_axis_data_tdata *are
>>>>>>>>> 8-bit while most of the examples show sending 32 bits.  Aside fro=
m setting
>>>>>>>>> the assignments to [7:0] are there any other adjustments that nee=
d to be
>>>>>>>>> made in any of the signal declarations and/or block definition wi=
res
>>>>>>>>> earlier in the file?
>>>>>>>>>
>>>>>>>>> I've provided the IP core documentation for reference just in cas=
e:
>>>>>>>>> https://docs.xilinx.com/v/u/en-US/pg026_convolution
>>>>>>>>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__docs.xili=
nx.com_v_u_en-2DUS_pg026-5Fconvolution&d=3DDwMFaQ&c=3D-35OiAkTchMrZOngvJPOe=
A&r=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD08QrmMzW9aeZY&m=3DGXbgyQxDz4yiy7ZI94I9i=
a-1XvF2rdmrbxprVfQojmcljlWVOVrjE1Z7g7qsBL_a&s=3DVpTL0Eev0xGrPxywg6lGumMok1L=
x8kj5t4uFefeMWNA&e=3D>
>>>>>>>>>
>>>>>>>>> I've also included the module and testbench files as well as the
>>>>>>>>> xsim log.
>>>>>>>>>
>>>>>>>>> Thanks in advance!
>>>>>>>>> -Jeff
>>>>>>>>>
>>>>>>>>> _______________________________________________
>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>>
>>>>>>>>

--00000000000070572605df5490f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>If you want to customize the YAML an=
d regenerate from your modified YAML, then I think you need to use rfnoc_cr=
eate_verilog (part of UHD). So you could do something like:</div><div><br><=
/div><div>python3 uhd/host/utils/rfnoc_blocktool/rfnoc_create_verilog.py -c=
 conv.yml -d ./rfnoc_block_conv</div><div><br></div><div>However, I see ce_=
rst in the modtool templates:</div><div><br></div><div><a href=3D"https://g=
ithub.com/EttusResearch/gr-ettus/blob/master/python/rfnoc_modtool/templates=
.py#L994">https://github.com/EttusResearch/gr-ettus/blob/master/python/rfno=
c_modtool/templates.py#L994</a></div><div><a href=3D"https://github.com/Ett=
usResearch/gr-ettus/blob/master/python/rfnoc_modtool/templates.py#L1384">ht=
tps://github.com/EttusResearch/gr-ettus/blob/master/python/rfnoc_modtool/te=
mplates.py#L1384</a></div><div><br></div><div>Perhaps you&#39;re using an o=
lder version of modtool?<br></div><div><br></div><div>Wade<br></div><div><b=
r></div><div><br></div><br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, May 18, 2022 at 12:33 PM Jeffrey C=
uenco &lt;<a href=3D"mailto:jeffrey.cuenco@gmail.com">jeffrey.cuenco@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahom=
a,sans-serif">Spoke too soon - sent last one out too fast so apologies for =
the message clutter:<br><br>What I see in rfnoc_block_conv.v is ce_clk as a=
n input wire within the rfnoc_block_conv module declaration.=C2=A0</div><di=
v><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><div dir=3D"ltr"></div></div></div></div></div></div></div><spa=
n class=3D"gmail_default"><div style=3D"font-family:tahoma,sans-serif"><spa=
n class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br></spa=
n></div>However, I don&#39;t see ce_rst anywhere in either the noc_shell_co=
nv.v nor the rfnoc_block_conv.v files.=C2=A0</span><div><span class=3D"gmai=
l_default"><br></span></div><div><span class=3D"gmail_default">Is this some=
thing I should be concerned about, or will I need to manually add this wire=
 in?</span><span class=3D"gmail_default" style=3D"font-family:tahoma,sans-s=
erif"> Please advise - thanks!</span></div><div><span class=3D"gmail_defaul=
t" style=3D"font-family:tahoma,sans-serif"><br></span></div><div><div class=
=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">-Jeff</div><br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Wed, May 18, 2022 at 10:26 AM Jeffrey Cuenco &lt;<a href=3D"mailto:=
jeffrey.cuenco@gmail.com" target=3D"_blank">jeffrey.cuenco@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-ser=
if">To clarify - I see them in rfnoc_block_conv.v but not in noc_shell_conv=
.v - just want to ensure that is okay; I ended up regenerating from scratch=
 as I had used the gain block as a base the first time and it seems it was =
generated with an older RFNoC 3.x codegen.</div><div><div dir=3D"ltr"><div =
dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"></div></div>=
</div></div></div></div><span class=3D"gmail_default"><div style=3D"font-fa=
mily:tahoma,sans-serif"><span class=3D"gmail_default" style=3D"font-family:=
tahoma,sans-serif"><br></span></div>Will proceed with this and let you know=
 my results. Thanks!</span><span class=3D"gmail_default" style=3D"font-fami=
ly:tahoma,sans-serif"></span></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, May 18, 2022 at 7:55 AM Jeffrey Cuenc=
o &lt;<a href=3D"mailto:jeffrey.cuenco@gmail.com" target=3D"_blank">jeffrey=
.cuenco@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:tahoma,sans-serif">Thanks Wade!</div><div><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"></div></div></=
div></div></div></div><span style=3D"font-family:tahoma,sans-serif"><div><s=
pan style=3D"font-family:tahoma,sans-serif"><br></span></div><span class=3D=
"gmail_default" style=3D"font-family:tahoma,sans-serif">I tried to regenera=
te using rfnocmodtool and noticed that the ce_clk and ce_rst wires aren&#39=
;t present in the template code and the yaml files get overwritten - is the=
re another command for rfnocmodtool that I should be using to regenerate af=
ter customizing the yaml? Thanks!</span></span><div><span style=3D"font-fam=
ily:tahoma,sans-serif"><br></span></div><div><span style=3D"font-family:tah=
oma,sans-serif"><span class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif">-Jeff</span></span></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Mon, May 16, 2022 at 11:07 AM Wade F=
ife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>I was looking at your code to answer your =
question when I noticed that the noc_shell code doesn&#39;t seem to match y=
our YAML, so I&#39;m wondering if the YAML was modified after you generated=
 your noc_shell? The noc_shell is missing the ce_clk declared in your YAML.=
</div><div><br></div><div>To answer your question, I&#39;m going to assume =
you want a ce_clk that&#39;s different from rfnoc_chdr_clk and rfnoc_ctrl_c=
lk and you want your DSP and the registers to use ce_clk. In that case:</di=
v><div><ol><li>Regenerate your block to get a new noc_shell_conv. This will=
 add a ce_clk input and a ce_rst output to noc_shell_conv. Again, be carefu=
l to not overwrite your existing code when regenerating your block.<br></li=
><li>In rfnoc_block_conv, connect the ce_clk input port to the ce_clk input=
 port of noc_shell_conv.</li><li>In rfnoc_block_conv, declare a ce_rst wire=
 at the top and connect it to the ce_rst output port of your noc_shell.</li=
><li>Update your registers and custom logic to use ce_clk and ce_rst.</li><=
/ol></div><div></div><div>The answer is slightly different if you want to u=
se the current noc_shell. But in general, you say what clocks you want to u=
se in the YAML file. When the noc_shell is generated, it will take as input=
s the clocks you declared in the YAML, it will output resets=20
that you can use

for those clock domains, and it will output on ctrlport_clk and axis_data_c=
lk whatever clocks you said in the YAML that you wanted to use for those in=
terfaces. This can be a bit confusing because it means you can have multipl=
e versions of the same clock under different names (e.g., ce_clk, ctrlport_=
clk, and axis_data_clk might all be the same clock, just on different signa=
l names).<br></div><div><br></div><div>Wade<br></div><br></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 13, 20=
22 at 1:09 PM Jeffrey Cuenco &lt;<a href=3D"mailto:jcuenco@ucsd.edu" target=
=3D"_blank">jcuenco@ucsd.edu</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"auto">Thanks Wade!<br><br><div dir=
=3D"ltr"><div><span style=3D"background-color:rgba(255,255,255,0)">I went a=
head and restored the signal sizes to 32-bit as you suggested.</span></div>=
<div><span style=3D"background-color:rgba(255,255,255,0)"><br></span></div>=
<div><span style=3D"background-color:rgba(255,255,255,0)">For using ce_clk,=
 does it suffice for me to create a wire for ce_clk in the .v file and then=
 reference it from the yaml? Is ordering important or just ensuring the nam=
e matches the wire? Thanks!</span></div><div><span style=3D"background-colo=
r:rgba(255,255,255,0)"><br></span></div><div><span style=3D"background-colo=
r:rgba(255,255,255,0)">-Jeff</span></div><div><span style=3D"background-col=
or:rgba(255,255,255,0)"><br></span></div><div><span style=3D"background-col=
or:rgba(255,255,255,0)"><br></span></div></div><div dir=3D"ltr"><blockquote=
 type=3D"cite">On May 12, 2022, at 10:29, Wade Fife &lt;<a href=3D"mailto:w=
ade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br=
><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<div dir=3D"ltr"><div>Hi Jeff,</div><div><br></div><div>I took a look an=
d noticed a couple things.<br></div><div><ul><li>There are some signal widt=
h mismatches in rfnoc_block_conv.v. Take a look at s_rfnoc_ctrl_tdata, m_rf=
noc_ctrl_tdata, m_in_payload_tdata, s_out_payload_tdata. They have differen=
t widths than what the noc_shell expects. I think it&#39;s possible to chan=
ge the payload_tdata width to 8 on the noc_shell by changing the item_width=
 in your YAML, but you&#39;ll want to regenerate the noc_shell to do that (=
be careful not to overwrite your other files if you do this). But the ctrl =
bus must be 32-bit.<br></li><li>The ctrlport_clk has no driver. It looks li=
ke you specified ce_clk as the clock domain in your YAML, so perhaps that&#=
39;s the clock you want to use?</li></ul><div>Try resolving these issues an=
d see where that gets you.<br></div><div><br></div><div>Wade<br></div></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Wed, May 11, 2022 at 2:19 PM Jeffrey Cuenco &lt;<a href=3D"mailto:jeffr=
ey.cuenco@gmail.com" target=3D"_blank">jeffrey.cuenco@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
auto">Hi Wade,<div><br></div><div>Please see attached. Thanks!</div><div><b=
r></div><div>-Jeff</div><div><br></div></div><div dir=3D"auto" role=3D"text=
box" aria-label=3D"Message Body"><div></div><div><br></div><div><font color=
=3D"#0a84ff"><span></span></font></div></div><div dir=3D"auto"><div><font c=
olor=3D"#0a84ff"><span><br></span></font><div dir=3D"ltr"><div><span style=
=3D"background-color:rgba(255,255,255,0)"><br></span></div><div></div></div=
><div dir=3D"ltr"><blockquote type=3D"cite">On May 11, 2022, at 08:42, Wade=
 Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fif=
e@ettus.com</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"ci=
te"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>Can you also share your=
 block&#39;s YML and the noc_shell you generated?</div><div><br></div><div>=
Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, May 11, 2022 at 4:27 AM Jeffrey Cuenco &lt;<a href=
=3D"mailto:jcuenco@ucsd.edu" target=3D"_blank">jcuenco@ucsd.edu</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">Hi Wade,<div><br></div><div>Yes, I have the ctrlport:has_status set to=
 False in the block YAML... I ended up having to comment out that test sequ=
ence to move onto the part that sends samples into and out of the block; no=
w I have an error that states=C2=A0<br><br><b>Fatal: Timeout: Test &quot;Te=
st passing through samples&quot; time limit exceeded<br></b><br>so I must b=
e doing something that it isn&#39;t liking :) I&#39;ve attached my updated =
.v and .sv files that I modified based on your guidance in your first respo=
nse, as well as the updated xsim.log. Please let me know if there are any a=
dditional things I may need to change such as sizes and what not - thanks!<=
/div><div><br></div><div>-Jeff</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Mon, May 9, 2022 at 3:12 PM Wade Fif=
e &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@et=
tus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>Hi Jeffrey,</div><div><br></div><div>Very curi=
ous that you&#39;re getting=20
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
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000070572605df5490f1--

--===============2143633506682988341==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2143633506682988341==--
