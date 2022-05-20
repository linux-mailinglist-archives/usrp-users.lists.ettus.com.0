Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D371A52F3D7
	for <lists+usrp-users@lfdr.de>; Fri, 20 May 2022 21:36:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B076D384DF7
	for <lists+usrp-users@lfdr.de>; Fri, 20 May 2022 15:36:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653075367; bh=E8Ue5Y/rGV10lV4wKkyQn1UDPkK80dcKlaaCST3XKSM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=paKFUQkFs/b57kadhggd4LOOFxuhnOFlLJjaa/yuvXhkYlzUMu4/SnRUIXH7GWcxq
	 UUheQhRtlIytGnj9nV9qfjrjH3SSQiAPYjqDGi/qYU1BC89gaOv8+/+NRbx9JxUSp5
	 p6/3m+ydH+l7w4e3IWJHXmGcgGLTTsVrkEeFFTqL7hs6BBefRsYR7MKETfdKM9C/il
	 jzLJhI4385JGwxHLR3vA5EJ6wRNYkUM308yOgWL6vphhDZUGZ/9pna7B38YzVfDdGM
	 VsWES79JzsJLKV+NeNpVzwwjSN2aEvFHeMmt+dqlhdJAdGQHiZsKyYfgIhRoQ90GB+
	 xu/bMUGtqWWKQ==
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 653E1384A3D
	for <usrp-users@lists.ettus.com>; Fri, 20 May 2022 15:35:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="vJINSAtG";
	dkim-atps=neutral
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-2ff7b90e635so31508767b3.5
        for <usrp-users@lists.ettus.com>; Fri, 20 May 2022 12:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iO4vhIvdqIYtFkoAUgJ8pW+yTQSybDq9OV4ExVRhB6Y=;
        b=vJINSAtGa9XiO11BzMTBgfkqpbYLj5DvjjfsEfJnlhro9UPNDAhuwSrQ6D6xfqc5uj
         5SKTQFXBE6C0nb/Zbd2fk+0CoF/6yNrBz1218FAtCWcVX7q5aF4Tgfb0LM3aoem/kxkD
         DTHkunQZrLu0vePxZHpqWPsrvvztIa0TfxOYrT9A6QMCEiKuEzbJq6/35qwmtqb4EDG9
         MtmXchobBGOlwT73N1SW3+NXl4uSFkDCGvjHxqnoUKuGt2EjPB4sMD9IZHPk+aBUnnby
         x4hlFxE3CQ1eMvTRI/r2tGrGDB/jvYPvdCO+XIxjrLGuIzQkcjfnTAIvlXq5a5MJ7W0n
         knxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iO4vhIvdqIYtFkoAUgJ8pW+yTQSybDq9OV4ExVRhB6Y=;
        b=nsLxaQ/Qcicn7ax04u6Og7YxivroRfayrUyUZPUGq/JUiaxAGOeuY0j8jYxJ97ZS8F
         oT5Q3JHcNYLjcvgAEmishuJTslfzOtuX8sHOd0Fo2mbEQjdpNE5IlqarurKttx2m26/x
         T697fn/T9jyfS7ZdE7vEWduR3gf0NGtUDDCfCCUAVFOHRKBS4UvMVL27BZpcHZHf7e5s
         IQ0jx61/QG+5AqWRY4jkIoPHDw2MdI3uPnoYOUtZArRholqx8VTMGu9kyFdgIrCO6Z5l
         OyFRWEDcdHSkNVeOC66ye/1E9auAoWSuKUDpI7OXcgbWARy/dkPl3FyOlDRhW+wPieZL
         FpeQ==
X-Gm-Message-State: AOAM533esXGsItHRR4V1D2npMkB2RGotD9JOBTwG+Qs0tPsrEjt5i8YG
	RJ7e2CM2oAArUN3AprLlytRszcAnije44a/CGEzPU2dK
X-Google-Smtp-Source: ABdhPJwc8/fYyG/Jb5I/uxP+o13t2y1WqgfEDTsNXIn2oaS9gfmptSVhRtNoX8Q0SPQ1jevW97u8y2dg61WwLnhM1j0=
X-Received: by 2002:a0d:ffc3:0:b0:2eb:2327:3361 with SMTP id
 p186-20020a0dffc3000000b002eb23273361mr11771800ywf.36.1653075303674; Fri, 20
 May 2022 12:35:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAFche=jJyeqcaf5sPSkxA3qokEDXm=FfmaFmgxP784M4Ms2rOQ@mail.gmail.com>
 <4BC71671-9217-4411-9903-E2A2D9A537E5@gmail.com> <CAFche=igDnrw+9D5R=+QMkw22vrFRyFGQyNr68kD7XtseY9+iA@mail.gmail.com>
 <CA+GXwQAYJj=36OLJvupV3R=TTnEHpNH62UaA_z8rCXe9VGuEbA@mail.gmail.com>
 <CAFche=jwjqmrZO46m1-mdX=b2rSinBf7386fV939rw6vfe9vVw@mail.gmail.com>
 <CA+GXwQCDeEKyYL_c178dQC0dS=33yYLNvDoaQ=0e+z-ZBNB=uA@mail.gmail.com>
 <CAFche=jyVR5=ig2EEuZ8Z2FXMMEAqvAd_-rKX6HCTG1Y35MJQQ@mail.gmail.com> <CAHKPiO5HhJESrCNWTM-8T7DdifYpkFSo6CVO7i7OVPG9qqsZDA@mail.gmail.com>
In-Reply-To: <CAHKPiO5HhJESrCNWTM-8T7DdifYpkFSo6CVO7i7OVPG9qqsZDA@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 20 May 2022 14:34:47 -0500
Message-ID: <CAFche=gYo6ipG00cYCYUuY1D-YvsU3Njz7MNOQUGkc6FK5fA=w@mail.gmail.com>
To: Jeffrey Cuenco <jcuenco@ucsd.edu>
Message-ID-Hash: OFHVKPR3GJSB3F2QWFJOD2WIHCHZHIEF
X-Message-ID-Hash: OFHVKPR3GJSB3F2QWFJOD2WIHCHZHIEF
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jeffrey Cuenco <jeffrey.cuenco@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC 4.0 OOT FPGA Testbench Writing Guidance?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OFHVKPR3GJSB3F2QWFJOD2WIHCHZHIEF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3732379805239694238=="

--===============3732379805239694238==
Content-Type: multipart/alternative; boundary="00000000000043471305df769675"

--00000000000043471305df769675
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I suggest looking at the simulation waveform of the inputs and outputs
going to/from the IP core. Make sure all the inputs are driven (no red/blue
signals; everything should resolve to green 0 or 1), check that the clocks
and resets are doing the correct things (double check the IP
documentation/configuration for reset polarity and reset duration
requirements), and make sure the other inputs going into the IP are doing
what they should be doing, then see what happens on the IP's output. Refer
to the documentation to know what the IP needs on its inputs to work
correctly and what the expected output should be.

Wade

On Fri, May 20, 2022 at 4:02 AM Jeffrey Cuenco <jcuenco@ucsd.edu> wrote:

> Thanks Wade, I ended up regenerating using axis_pyld_ctxt and was able to
> use the logpwr example again for generating a 2 to 1 output to input rati=
o
> context.
>
> Now the testbench builds but it seems the IP block times out when I wait
> for the output data to come out of the block.... at this point I'm not su=
re
> what could be the root cause so I've attached a link to my entire project
> tree containing the axi_conv.xci IP file, and all my logic for the noc
> shell, rfnoc block, and testbench just in case there's something I'm doin=
g
> wrong in wiring up the IP core; the default for the IP core is rate 1/2 i=
ts
> a fairly simple block that takes a stream of data in and outputs an
> convolutional encoded stream of data out that is 2x the length of the dat=
a
> going into it.
>
>
> https://drive.google.com/drive/folders/1dOl9VMCPmuQLiXN4jSTTqgtFCQ19FmJT?=
usp=3Dsharing
>
> I also posted the verilog files outside the tar.gz for convenience in cas=
e
> you catch something obvious on first glance - want to make sure I didn't
> miss anything in terms of clocks, data widths, etc. thanks!
>
> -Jeff
>
>
>
> On Thu, May 19, 2022 at 3:13 PM Wade Fife <wade.fife@ettus.com> wrote:
>
>> Regarding the payload/context change, it looks like the modtool sets the
>> fpga_iface to axis_pyld_ctxt, but in conv.yml you changed it to axis_dat=
a?
>> So when you ran rfnoc_create_verilog, it changed the interface type used=
 by
>> the NoC shell. You can read about "AXI-Stream Payload Context" and
>> "AXI-Stream Data" interface types in the RFNoC Specification
>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__files.ettus.com_=
app-5Fnotes_RFNoC-5FSpecification.pdf&d=3DDwMFaQ&c=3D-35OiAkTchMrZOngvJPOeA=
&r=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD08QrmMzW9aeZY&m=3DiWIZIMJmjHh1GpWVAWXO6i=
Gs641IqKVp_sQbEVackRZ-O08h4pR3Yi11Ui9cE0vs&s=3D_MwzXrHQa4GWT2C7uefcJvZJn_fs=
ZMZuuJEPEl5eXzg&e=3D>.
>> I think either could be used.
>>
>> Wade
>>
>> On Thu, May 19, 2022 at 4:18 PM Jeffrey Cuenco <jeffrey.cuenco@gmail.com=
>
>> wrote:
>>
>>> Thanks Wade! I just remembered that I forgot to set my output to input
>>> ratio which may be explaining why the timeouts are happening even with =
the
>>> extended delay.
>>>
>>> When I used the rfnoc_create_verilog, I noticed that the client
>>> interface only has m_in_axis_* and s_out_axis_* connections and no
>>> separation between context and payload for the template of noc shell us=
ed
>>> by the tool.
>>>
>>> As such the logpwr example you shared with me earlier isn't
>>> straightforward to port over and the duc example appears to be most
>>> compatible pin-out wise with axi_rate_change so I'm about to attempt to
>>> hook it up it but wanted to clarify that there aren't any additional
>>> changes I would need to do aside from adjusting MAX_M, MAX_N, and ensur=
ing
>>> the input/output wire names match what are in my signal declarations
>>> section? Thanks!
>>>
>>> -Jeff
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> On Thu, May 19, 2022 at 12:36 PM Wade Fife <wade.fife@ettus.com> wrote:
>>>
>>>> The testbench has start_test() and end_test() calls around each test.
>>>> There's a timeout in the start_test() call, and there's also a global
>>>> timeout (part of start_tb(), but I think 10 ms by default). If the
>>>> end_test() doesn't occur within a certain amount of time of the
>>>> start_test(), then the testbench assumes something went wrong. Otherwi=
se,
>>>> the simulation could just keep running forever.
>>>>
>>>> So you'll need to look at your simulation to see where things are
>>>> getting stuck. Also, make sure what you're doing doesn't just need mor=
e
>>>> time.
>>>>
>>>> Wade
>>>>
>>>> On Thu, May 19, 2022 at 2:29 PM Jeffrey Cuenco <
>>>> jeffrey.cuenco@gmail.com> wrote:
>>>>
>>>>> Thanks Wade! I used the rfnoc_create_verilog and it generated code
>>>>> that contained ce_clk and added
>>>>>
>>>>> output wire ce_rst;
>>>>>
>>>>> following the ce_clk declaration around line 32 of rfnoc_block_conv.v
>>>>> in the generated file, then plugged it into .ce_rst of noc_shell_conv=
 later
>>>>> in the file and also used it in my axi_conv instantiation.
>>>>>
>>>>> After doing that and building I was able to get the testbench to run
>>>>> but I now get a fatal timeout, something about time limit exceeded.
>>>>>
>>>>> Is there something that needs to be wired in so that it knows when
>>>>> things finish? Thanks!
>>>>>
>>>>> -Jeff
>>>>>
>>>>> On Thu, May 19, 2022 at 12:23 Wade Fife <wade.fife@ettus.com> wrote:
>>>>>
>>>>>> I think those versions are fine, but your gr-ettus might be out of
>>>>>> date. I'm not very familiar with the GNU Radio integration. You coul=
d try
>>>>>> updating your gr-ettus then regenerate your block, or you could run =
the
>>>>>> rfnoc_create_verilog tool using the YML file as an input if you need=
 to
>>>>>> customize the YAML to add the ce_clk/ce_rst signals. It's really up =
to you
>>>>>> if you need those signals. But your IP needs to be clocked and proba=
bly
>>>>>> reset by something, and you need to make sure the generated noc_shel=
l uses
>>>>>> the same clock domains you're expecting to use.
>>>>>>
>>>>>>
>>>>>> Wade
>>>>>>
>>>>>> On Wed, May 18, 2022 at 10:10 PM Jeffrey Cuenco <
>>>>>> jeffrey.cuenco@gmail.com> wrote:
>>>>>>
>>>>>>> Neel recommended I use UHD v4.1.0.5 and GRC v3.8.5.0 so that=E2=80=
=99s what
>>>>>>> I=E2=80=99ve been using - does this version not generate the right =
items? If not
>>>>>>> which version of UHD should I update to, and which version of GRC w=
orks
>>>>>>> best with it? Thanks!
>>>>>>>
>>>>>>> -Jeff
>>>>>>>
>>>>>>> On May 18, 2022, at 19:59, Wade Fife <wade.fife@ettus.com> wrote:
>>>>>>>
>>>>>>> =EF=BB=BF
>>>>>>> If you want to customize the YAML and regenerate from your modified
>>>>>>> YAML, then I think you need to use rfnoc_create_verilog (part of UH=
D). So
>>>>>>> you could do something like:
>>>>>>>
>>>>>>> python3 uhd/host/utils/rfnoc_blocktool/rfnoc_create_verilog.py -c
>>>>>>> conv.yml -d ./rfnoc_block_conv
>>>>>>>
>>>>>>> However, I see ce_rst in the modtool templates:
>>>>>>>
>>>>>>>
>>>>>>> https://github.com/EttusResearch/gr-ettus/blob/master/python/rfnoc_=
modtool/templates.py#L994
>>>>>>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_=
EttusResearch_gr-2Dettus_blob_master_python_rfnoc-5Fmodtool_templates.py-23=
L994&d=3DDwMFaQ&c=3D-35OiAkTchMrZOngvJPOeA&r=3DY3cOHwFMBDXttsqnINKoCyXB-ta6=
yD08QrmMzW9aeZY&m=3D1DdbigE2N0YgkBb5QwxGwLoaLzBicQiQrNdYgLIklkzVPw_RkRIL9bq=
4dINC9Cqd&s=3DfKouuct_wr3CdcChBQjBmaL6WDVq7l3U1zAVR7DcnDY&e=3D>
>>>>>>>
>>>>>>> https://github.com/EttusResearch/gr-ettus/blob/master/python/rfnoc_=
modtool/templates.py#L1384
>>>>>>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_=
EttusResearch_gr-2Dettus_blob_master_python_rfnoc-5Fmodtool_templates.py-23=
L1384&d=3DDwMFaQ&c=3D-35OiAkTchMrZOngvJPOeA&r=3DY3cOHwFMBDXttsqnINKoCyXB-ta=
6yD08QrmMzW9aeZY&m=3D1DdbigE2N0YgkBb5QwxGwLoaLzBicQiQrNdYgLIklkzVPw_RkRIL9b=
q4dINC9Cqd&s=3Dg8-XZVaLen6JS347_frcJqnHnCFTxWbAtw1WcLKrtzA&e=3D>
>>>>>>>
>>>>>>> Perhaps you're using an older version of modtool?
>>>>>>>
>>>>>>> Wade
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> On Wed, May 18, 2022 at 12:33 PM Jeffrey Cuenco <
>>>>>>> jeffrey.cuenco@gmail.com> wrote:
>>>>>>>
>>>>>>>> Spoke too soon - sent last one out too fast so apologies for the
>>>>>>>> message clutter:
>>>>>>>>
>>>>>>>> What I see in rfnoc_block_conv.v is ce_clk as an input wire within
>>>>>>>> the rfnoc_block_conv module declaration.
>>>>>>>>
>>>>>>>> However, I don't see ce_rst anywhere in either the noc_shell_conv.=
v
>>>>>>>> nor the rfnoc_block_conv.v files.
>>>>>>>>
>>>>>>>> Is this something I should be concerned about, or will I need to
>>>>>>>> manually add this wire in? Please advise - thanks!
>>>>>>>>
>>>>>>>> -Jeff
>>>>>>>>
>>>>>>>>
>>>>>>>> On Wed, May 18, 2022 at 10:26 AM Jeffrey Cuenco <
>>>>>>>> jeffrey.cuenco@gmail.com> wrote:
>>>>>>>>
>>>>>>>>> To clarify - I see them in rfnoc_block_conv.v but not in
>>>>>>>>> noc_shell_conv.v - just want to ensure that is okay; I ended up
>>>>>>>>> regenerating from scratch as I had used the gain block as a base =
the first
>>>>>>>>> time and it seems it was generated with an older RFNoC 3.x codege=
n.
>>>>>>>>>
>>>>>>>>> Will proceed with this and let you know my results. Thanks!
>>>>>>>>>
>>>>>>>>> On Wed, May 18, 2022 at 7:55 AM Jeffrey Cuenco <
>>>>>>>>> jeffrey.cuenco@gmail.com> wrote:
>>>>>>>>>
>>>>>>>>>> Thanks Wade!
>>>>>>>>>>
>>>>>>>>>> I tried to regenerate using rfnocmodtool and noticed that the
>>>>>>>>>> ce_clk and ce_rst wires aren't present in the template code and =
the yaml
>>>>>>>>>> files get overwritten - is there another command for rfnocmodtoo=
l that I
>>>>>>>>>> should be using to regenerate after customizing the yaml? Thanks=
!
>>>>>>>>>>
>>>>>>>>>> -Jeff
>>>>>>>>>>
>>>>>>>>>> On Mon, May 16, 2022 at 11:07 AM Wade Fife <wade.fife@ettus.com>
>>>>>>>>>> wrote:
>>>>>>>>>>
>>>>>>>>>>> I was looking at your code to answer your question when I
>>>>>>>>>>> noticed that the noc_shell code doesn't seem to match your YAML=
, so I'm
>>>>>>>>>>> wondering if the YAML was modified after you generated your noc=
_shell? The
>>>>>>>>>>> noc_shell is missing the ce_clk declared in your YAML.
>>>>>>>>>>>
>>>>>>>>>>> To answer your question, I'm going to assume you want a ce_clk
>>>>>>>>>>> that's different from rfnoc_chdr_clk and rfnoc_ctrl_clk and you=
 want your
>>>>>>>>>>> DSP and the registers to use ce_clk. In that case:
>>>>>>>>>>>
>>>>>>>>>>>    1. Regenerate your block to get a new noc_shell_conv. This
>>>>>>>>>>>    will add a ce_clk input and a ce_rst output to noc_shell_con=
v. Again, be
>>>>>>>>>>>    careful to not overwrite your existing code when regeneratin=
g your block.
>>>>>>>>>>>    2. In rfnoc_block_conv, connect the ce_clk input port to the
>>>>>>>>>>>    ce_clk input port of noc_shell_conv.
>>>>>>>>>>>    3. In rfnoc_block_conv, declare a ce_rst wire at the top and
>>>>>>>>>>>    connect it to the ce_rst output port of your noc_shell.
>>>>>>>>>>>    4. Update your registers and custom logic to use ce_clk and
>>>>>>>>>>>    ce_rst.
>>>>>>>>>>>
>>>>>>>>>>> The answer is slightly different if you want to use the current
>>>>>>>>>>> noc_shell. But in general, you say what clocks you want to use =
in the YAML
>>>>>>>>>>> file. When the noc_shell is generated, it will take as inputs t=
he clocks
>>>>>>>>>>> you declared in the YAML, it will output resets that you can us=
e for those
>>>>>>>>>>> clock domains, and it will output on ctrlport_clk and axis_data=
_clk
>>>>>>>>>>> whatever clocks you said in the YAML that you wanted to use for=
 those
>>>>>>>>>>> interfaces. This can be a bit confusing because it means you ca=
n have
>>>>>>>>>>> multiple versions of the same clock under different names (e.g.=
, ce_clk,
>>>>>>>>>>> ctrlport_clk, and axis_data_clk might all be the same clock, ju=
st on
>>>>>>>>>>> different signal names).
>>>>>>>>>>>
>>>>>>>>>>> Wade
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> On Fri, May 13, 2022 at 1:09 PM Jeffrey Cuenco <jcuenco@ucsd.ed=
u>
>>>>>>>>>>> wrote:
>>>>>>>>>>>
>>>>>>>>>>>> Thanks Wade!
>>>>>>>>>>>>
>>>>>>>>>>>> I went ahead and restored the signal sizes to 32-bit as you
>>>>>>>>>>>> suggested.
>>>>>>>>>>>>
>>>>>>>>>>>> For using ce_clk, does it suffice for me to create a wire for
>>>>>>>>>>>> ce_clk in the .v file and then reference it from the yaml? Is =
ordering
>>>>>>>>>>>> important or just ensuring the name matches the wire? Thanks!
>>>>>>>>>>>>
>>>>>>>>>>>> -Jeff
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> On May 12, 2022, at 10:29, Wade Fife <wade.fife@ettus.com>
>>>>>>>>>>>> wrote:
>>>>>>>>>>>>
>>>>>>>>>>>> =EF=BB=BF
>>>>>>>>>>>> Hi Jeff,
>>>>>>>>>>>>
>>>>>>>>>>>> I took a look and noticed a couple things.
>>>>>>>>>>>>
>>>>>>>>>>>>    - There are some signal width mismatches in
>>>>>>>>>>>>    rfnoc_block_conv.v. Take a look at s_rfnoc_ctrl_tdata, m_rf=
noc_ctrl_tdata,
>>>>>>>>>>>>    m_in_payload_tdata, s_out_payload_tdata. They have differen=
t widths than
>>>>>>>>>>>>    what the noc_shell expects. I think it's possible to change=
 the
>>>>>>>>>>>>    payload_tdata width to 8 on the noc_shell by changing the i=
tem_width in
>>>>>>>>>>>>    your YAML, but you'll want to regenerate the noc_shell to d=
o that (be
>>>>>>>>>>>>    careful not to overwrite your other files if you do this). =
But the ctrl bus
>>>>>>>>>>>>    must be 32-bit.
>>>>>>>>>>>>    - The ctrlport_clk has no driver. It looks like you
>>>>>>>>>>>>    specified ce_clk as the clock domain in your YAML, so perha=
ps that's the
>>>>>>>>>>>>    clock you want to use?
>>>>>>>>>>>>
>>>>>>>>>>>> Try resolving these issues and see where that gets you.
>>>>>>>>>>>>
>>>>>>>>>>>> Wade
>>>>>>>>>>>>
>>>>>>>>>>>> On Wed, May 11, 2022 at 2:19 PM Jeffrey Cuenco <
>>>>>>>>>>>> jeffrey.cuenco@gmail.com> wrote:
>>>>>>>>>>>>
>>>>>>>>>>>>> Hi Wade,
>>>>>>>>>>>>>
>>>>>>>>>>>>> Please see attached. Thanks!
>>>>>>>>>>>>>
>>>>>>>>>>>>> -Jeff
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>> On May 11, 2022, at 08:42, Wade Fife <wade.fife@ettus.com>
>>>>>>>>>>>>> wrote:
>>>>>>>>>>>>>
>>>>>>>>>>>>> =EF=BB=BF
>>>>>>>>>>>>> Can you also share your block's YML and the noc_shell you
>>>>>>>>>>>>> generated?
>>>>>>>>>>>>>
>>>>>>>>>>>>> Wade
>>>>>>>>>>>>>
>>>>>>>>>>>>> On Wed, May 11, 2022 at 4:27 AM Jeffrey Cuenco <
>>>>>>>>>>>>> jcuenco@ucsd.edu> wrote:
>>>>>>>>>>>>>
>>>>>>>>>>>>>> Hi Wade,
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Yes, I have the ctrlport:has_status set to False in the bloc=
k
>>>>>>>>>>>>>> YAML... I ended up having to comment out that test sequence =
to move onto
>>>>>>>>>>>>>> the part that sends samples into and out of the block; now I=
 have an error
>>>>>>>>>>>>>> that states
>>>>>>>>>>>>>>
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> *Fatal: Timeout: Test "Test passing through samples" time
>>>>>>>>>>>>>> limit exceeded*
>>>>>>>>>>>>>> so I must be doing something that it isn't liking :) I've
>>>>>>>>>>>>>> attached my updated .v and .sv files that I modified based o=
n your guidance
>>>>>>>>>>>>>> in your first response, as well as the updated xsim.log. Ple=
ase let me know
>>>>>>>>>>>>>> if there are any additional things I may need to change such=
 as sizes and
>>>>>>>>>>>>>> what not - thanks!
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> -Jeff
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> On Mon, May 9, 2022 at 3:12 PM Wade Fife <wade.fife@ettus.co=
m>
>>>>>>>>>>>>>> wrote:
>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> Hi Jeffrey,
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> Very curious that you're getting that CTRL_STS_OKAY error,
>>>>>>>>>>>>>>> since it looks like you're not using the status. I assume
>>>>>>>>>>>>>>> ctrlport:has_status is set to False in your block's YAML? I=
n that case the
>>>>>>>>>>>>>>> status should always be OK.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> 1) For different input/output packet sizes, you need to
>>>>>>>>>>>>>>> modify the context to set the payload length of the outgoin=
g packet. That's
>>>>>>>>>>>>>>> the block of code starting on line 283 in the rfnoc_block_c=
onv.v file you
>>>>>>>>>>>>>>> sent. There's an example in rfnoc_block_logpower, in which =
the output
>>>>>>>>>>>>>>> packet length is half the length of input packets. In your =
case you'll need
>>>>>>>>>>>>>>> to set it to 3/2 instead of 1/2. See here:
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3=
/lib/rfnoc/blocks/rfnoc_block_logpwr/rfnoc_block_logpwr.v#L202
>>>>>>>>>>>>>>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__git=
hub.com_EttusResearch_uhd_blob_master_fpga_usrp3_lib_rfnoc_blocks_rfnoc-5Fb=
lock-5Flogpwr_rfnoc-5Fblock-5Flogpwr.v-23L202&d=3DDwMFaQ&c=3D-35OiAkTchMrZO=
ngvJPOeA&r=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD08QrmMzW9aeZY&m=3DGXbgyQxDz4yiy7=
ZI94I9ia-1XvF2rdmrbxprVfQojmcljlWVOVrjE1Z7g7qsBL_a&s=3DWkFBbmpL8IpvF2oHp-4V=
fhy73qA49jSJD2tHoTQ0anQ&e=3D>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> 2) The testbenches typically have an ITEM_W constant that
>>>>>>>>>>>>>>> indicates the size of the data type you want to work with. =
The ITEM_W is
>>>>>>>>>>>>>>> normally set to the sample size (e.g., 32 for sc16 samples)=
. Since you want
>>>>>>>>>>>>>>> to work with bytes, you could change that to 8 then create =
an item_t array
>>>>>>>>>>>>>>> and send it as a single packet using blk_ctrl.send_items().=
 Then you can
>>>>>>>>>>>>>>> call blk_ctrl.recv_items() to get the data output packet, a=
nd inspect the
>>>>>>>>>>>>>>> items array that is returned. Take a look at PkgRfnocBlockC=
trlBfm to see
>>>>>>>>>>>>>>> what other send/recv methods are available. Here's a quick =
example assuming
>>>>>>>>>>>>>>> the item size is 8-bit:
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> item_t sent[$], received[$];
>>>>>>>>>>>>>>> sent =3D { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };  // Whatever val=
ues
>>>>>>>>>>>>>>> you want for the input packet, one byte per element
>>>>>>>>>>>>>>> blk_ctrl.send_items(0, sent);
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> blk_ctrl.recv_items(0, received);
>>>>>>>>>>>>>>> foreach(received[i]) begin
>>>>>>>>>>>>>>>   // Compare the expected value to the byte in received[i]
>>>>>>>>>>>>>>> and see if it matches
>>>>>>>>>>>>>>> end
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> Wade
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> On Mon, May 9, 2022 at 1:30 PM Jeffrey Cuenco via USRP-user=
s
>>>>>>>>>>>>>>> <usrp-users@lists.ettus.com> wrote:
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> Hi all,
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> Long time no see! I am currently on a final stretches of
>>>>>>>>>>>>>>>> completing a masters project for my wireless embedded syst=
ems program that
>>>>>>>>>>>>>>>> involves a USRP X310 with RFNoC 4.0 and GNURadio that impl=
ements a
>>>>>>>>>>>>>>>> Hierarchical Modulation design using nested 4QAM / QPSK (f=
inal
>>>>>>>>>>>>>>>> constellation "appears" like 16QAM but has embedded high p=
riority and low
>>>>>>>>>>>>>>>> priority layers that can adapt based on SNR).
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> I am currently attempting to integrate the Xilinx
>>>>>>>>>>>>>>>> Convolutional Encoder v9.0 IP block into the template rfno=
c_block_conv.v
>>>>>>>>>>>>>>>> design that was created using rfnocmodtool and modeled aft=
er the Ettus FFT
>>>>>>>>>>>>>>>> example. With a bit of work I was able to get the .xci fil=
e loaded by
>>>>>>>>>>>>>>>> Vivado when the make target is executed for the testbench,=
 and the
>>>>>>>>>>>>>>>> testbench appears to build without much modification.
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> When executing 'make rfnoc_block_conv_tb'  it appears to
>>>>>>>>>>>>>>>> fully execute the build process to the end, but I receive =
a fatal "Did not
>>>>>>>>>>>>>>>> receive CTRL_STS_OKAY status" message in the process which=
 I attribute to
>>>>>>>>>>>>>>>> either something not being configured in the testbench fil=
e or something
>>>>>>>>>>>>>>>> not being configured right in my verilog module file.
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> I've attempted to summarize where I'm stuck and need help
>>>>>>>>>>>>>>>> on in the below three summary points / questions:
>>>>>>>>>>>>>>>> 1) I have configured the convolutional encoder with rate
>>>>>>>>>>>>>>>> 1/2 and punctured (effective rate 2/3), which I assume wil=
l require me
>>>>>>>>>>>>>>>> modifying the "axi_wrapper" so that the output to input ra=
tios are set
>>>>>>>>>>>>>>>> properly - are there additional examples that I can follow=
 for this?
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> I've seen the axi_wrapper migration note but as I'm still =
a
>>>>>>>>>>>>>>>> novice at Verilog and System Verilog additional examples w=
ould be helpful.
>>>>>>>>>>>>>>>> :)
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> 2) I would like to modify my testbench so that I send 10
>>>>>>>>>>>>>>>> bytes (80 bits) of data, and read out the 15 bytes (120 bi=
ts) that get spit
>>>>>>>>>>>>>>>> out and verify that the encoded bytes coming out of the co=
re match ground
>>>>>>>>>>>>>>>> truth data I would generate using MATLAB.
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> Do we have any additional testbench examples or additional
>>>>>>>>>>>>>>>> documentation that show sending 1 or more bytes of data th=
rough an IP core?
>>>>>>>>>>>>>>>> The IP core's *s_axis_data_tdata* and *m_axis_data_tdata *=
are
>>>>>>>>>>>>>>>> 8-bit while most of the examples show sending 32 bits.  As=
ide from setting
>>>>>>>>>>>>>>>> the assignments to [7:0] are there any other adjustments t=
hat need to be
>>>>>>>>>>>>>>>> made in any of the signal declarations and/or block defini=
tion wires
>>>>>>>>>>>>>>>> earlier in the file?
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> I've provided the IP core documentation for reference just
>>>>>>>>>>>>>>>> in case:
>>>>>>>>>>>>>>>> https://docs.xilinx.com/v/u/en-US/pg026_convolution
>>>>>>>>>>>>>>>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__do=
cs.xilinx.com_v_u_en-2DUS_pg026-5Fconvolution&d=3DDwMFaQ&c=3D-35OiAkTchMrZO=
ngvJPOeA&r=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD08QrmMzW9aeZY&m=3DGXbgyQxDz4yiy7=
ZI94I9ia-1XvF2rdmrbxprVfQojmcljlWVOVrjE1Z7g7qsBL_a&s=3DVpTL0Eev0xGrPxywg6lG=
umMok1Lx8kj5t4uFefeMWNA&e=3D>
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> I've also included the module and testbench files as well
>>>>>>>>>>>>>>>> as the xsim log.
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> Thanks in advance!
>>>>>>>>>>>>>>>> -Jeff
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> _______________________________________________
>>>>>>>>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>>>>>>>>> To unsubscribe send an email to
>>>>>>>>>>>>>>>> usrp-users-leave@lists.ettus.com
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> --
>>>>>
>>>>>
>>>>> =E2=80=8B
>>>>> Jeffrey Cuenco
>>>>> Tech & Marketing Specialist | Cooperative Capitalist
>>>>> (619) 840-4508
>>>>> jeffrey.cuenco@gmail.com
>>>>>
>>>>> LinkedIn:
>>>>> https://www.linkedin.com/in/jeffrey-g-cuenco/
>>>>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.linkedin.=
com_in_jeffrey-2Dg-2Dcuenco_&d=3DDwMFaQ&c=3D-35OiAkTchMrZOngvJPOeA&r=3DY3cO=
HwFMBDXttsqnINKoCyXB-ta6yD08QrmMzW9aeZY&m=3DiWIZIMJmjHh1GpWVAWXO6iGs641IqKV=
p_sQbEVackRZ-O08h4pR3Yi11Ui9cE0vs&s=3DZGYCaHwWOMjpAqMmR-3m3IR5aUs6l32qanEYT=
xW5gwU&e=3D>
>>>>>
>>>>>

--00000000000043471305df769675
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I suggest looking at the simulation waveform of the i=
nputs and outputs going to/from the IP core. Make sure all the inputs are d=
riven (no red/blue signals; everything should resolve to green 0 or 1), che=
ck that the clocks and resets are doing the correct things (double check th=
e IP documentation/configuration for reset polarity and reset duration requ=
irements), and make sure the other inputs going into the IP are doing what =
they should be doing, then see what happens on the IP&#39;s output. Refer t=
o the documentation to know what the IP needs on its inputs to work correct=
ly and what the expected output should be.</div><div><br></div><div>Wade<br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, May 20, 2022 at 4:02 AM Jeffrey Cuenco &lt;<a href=3D"mailto=
:jcuenco@ucsd.edu">jcuenco@ucsd.edu</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Thanks Wade, I ended up=
 regenerating using axis_pyld_ctxt and was able to use the logpwr example a=
gain for generating a 2 to 1 output to input ratio context.<div><br></div><=
div>Now the testbench builds but it seems the IP block times out when I wai=
t for the output data to come out of the block.... at this point I&#39;m no=
t sure what could be the root cause so I&#39;ve attached a link to my entir=
e project tree containing the axi_conv.xci IP file, and all my logic for th=
e noc shell, rfnoc block, and testbench just in case there&#39;s something =
I&#39;m doing wrong in wiring up the IP core; the default for the IP core i=
s rate 1/2 its a fairly simple block that takes a stream of data in and out=
puts an convolutional encoded stream of data out that is 2x the length of t=
he data going into it.=C2=A0</div><div><br></div><div><a href=3D"https://dr=
ive.google.com/drive/folders/1dOl9VMCPmuQLiXN4jSTTqgtFCQ19FmJT?usp=3Dsharin=
g" target=3D"_blank">https://drive.google.com/drive/folders/1dOl9VMCPmuQLiX=
N4jSTTqgtFCQ19FmJT?usp=3Dsharing</a><br></div><div><br></div><div>I also po=
sted the verilog files outside the tar.gz for convenience in case you catch=
 something obvious on first glance - want to make sure I didn&#39;t miss an=
ything in terms of clocks, data widths, etc. thanks!</div><div><br></div><d=
iv>-Jeff</div><div><br></div><div><br></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 19, 2022 at 3:13 PM=
 Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wad=
e.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div>Regarding the payload/context change,=
 it looks like the modtool sets the fpga_iface to axis_pyld_ctxt, but in co=
nv.yml you changed it to axis_data? So when you ran rfnoc_create_verilog, i=
t changed the interface type used by the NoC shell. You can read about &quo=
t;AXI-Stream Payload Context&quot; and &quot;AXI-Stream Data&quot; interfac=
e types in the <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp=
s-3A__files.ettus.com_app-5Fnotes_RFNoC-5FSpecification.pdf&amp;d=3DDwMFaQ&=
amp;c=3D-35OiAkTchMrZOngvJPOeA&amp;r=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD08QrmM=
zW9aeZY&amp;m=3DiWIZIMJmjHh1GpWVAWXO6iGs641IqKVp_sQbEVackRZ-O08h4pR3Yi11Ui9=
cE0vs&amp;s=3D_MwzXrHQa4GWT2C7uefcJvZJn_fsZMZuuJEPEl5eXzg&amp;e=3D" target=
=3D"_blank">RFNoC Specification</a>. I think either could be used.</div><di=
v><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Thu, May 19, 2022 at 4:18 PM Jeffrey Cuen=
co &lt;<a href=3D"mailto:jeffrey.cuenco@gmail.com" target=3D"_blank">jeffre=
y.cuenco@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fo=
nt-family:tahoma,sans-serif">Thanks Wade! I just remembered that I forgot t=
o set my output to input ratio which may be explaining why the timeouts are=
 happening even with the extended delay.</div><div class=3D"gmail_default" =
style=3D"font-family:tahoma,sans-serif"><br></div><div class=3D"gmail_defau=
lt" style=3D"font-family:tahoma,sans-serif">When I used the rfnoc_create_ve=
rilog, I noticed that the client interface only has m_in_axis_* and s_out_a=
xis_* connections and no separation between context and payload for the tem=
plate of noc shell used by the tool.</div><div class=3D"gmail_default" styl=
e=3D"font-family:tahoma,sans-serif"><br></div><div class=3D"gmail_default" =
style=3D"font-family:tahoma,sans-serif">As such the logpwr=C2=A0example you=
 shared with me earlier isn&#39;t straightforward to port over and the duc =
example appears to be most compatible pin-out wise with axi_rate_change so =
I&#39;m about to attempt to hook it up it but wanted to clarify that there =
aren&#39;t any additional changes I would need to do aside from adjusting M=
AX_M, MAX_N, and ensuring the input/output wire names match what are in my =
signal declarations section? Thanks!</div><div class=3D"gmail_default" styl=
e=3D"font-family:tahoma,sans-serif"><br></div><div class=3D"gmail_default" =
style=3D"font-family:tahoma,sans-serif">-Jeff</div><div class=3D"gmail_defa=
ult" style=3D"font-family:tahoma,sans-serif"><br></div><div class=3D"gmail_=
default" style=3D"font-family:tahoma,sans-serif"><br></div><div><div dir=3D=
"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><=
div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div><div><br></div><div></=
div></div><div><br></div></div></div></div></div></div></div></div></div><b=
r></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Thu, May 19, 2022 at 12:36 PM Wade Fife &lt;<a href=3D"mailto:wade.fif=
e@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>The=
 testbench has start_test() and end_test() calls around each test. There&#3=
9;s a timeout in the start_test() call, and there&#39;s also a global timeo=
ut (part of start_tb(), but I think 10 ms by default). If the end_test() do=
esn&#39;t occur within a certain amount of time of the start_test(), then t=
he testbench assumes something went wrong. Otherwise, the simulation could =
just keep running forever.</div><div><br></div><div>So you&#39;ll need to l=
ook at your simulation to see where things are getting stuck. Also, make su=
re what you&#39;re doing doesn&#39;t just need more time.<br></div><div><br=
></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Thu, May 19, 2022 at 2:29 PM Jeffrey Cuenco &l=
t;<a href=3D"mailto:jeffrey.cuenco@gmail.com" target=3D"_blank">jeffrey.cue=
nco@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"auto">Thanks Wade! I used the rfnoc_create_verilog=
 and it generated code that contained ce_clk and added=C2=A0</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">output wire ce_rst;</div><div dir=3D"=
auto"><br></div><div dir=3D"auto">following the ce_clk declaration around l=
ine 32 of rfnoc_block_conv.v in the generated file, then plugged it into .c=
e_rst of noc_shell_conv later in the file and also used it in my axi_conv i=
nstantiation.</div><div dir=3D"auto"><br></div><div dir=3D"auto">After doin=
g that and building I was able to get the testbench to run but I now get a =
fatal timeout, something about time limit exceeded.</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">Is there something that needs to be wired in so=
 that it knows when things finish? Thanks!</div><div dir=3D"auto"><br></div=
><div dir=3D"auto">-Jeff</div><div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, May 19, 2022 at 12:23 Wade Fife &lt;<=
a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div>
I think those versions are fine, but your gr-ettus might be out of date. I&=
#39;m not very familiar with the GNU Radio integration. You could try updat=
ing your gr-ettus then regenerate your block, or you could run the rfnoc_cr=
eate_verilog tool using the YML file as an input if you need to customize t=
he YAML to add the ce_clk/ce_rst signals. It&#39;s really up to you if you =
need those signals. But your IP needs to be clocked and probably reset by s=
omething, and you need to make sure the generated noc_shell uses the same c=
lock domains you&#39;re expecting to use.</div></div><div dir=3D"ltr"><div>=
<br></div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 18, 2022 at 10:10 P=
M Jeffrey Cuenco &lt;<a href=3D"mailto:jeffrey.cuenco@gmail.com" target=3D"=
_blank">jeffrey.cuenco@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"auto">Neel recommended I use U=
HD v4.1.0.5 and GRC v3.8.5.0 so that=E2=80=99s what I=E2=80=99ve been using=
 - does this version not generate the right items? If not which version of =
UHD should I update to, and which version of GRC works best with it? Thanks=
!<br><br>-Jeff<br><div dir=3D"ltr"><div><span style=3D"background-color:rgb=
a(255,255,255,0)"><br></span></div><div></div></div><div dir=3D"ltr"><block=
quote type=3D"cite">On May 18, 2022, at 19:59, Wade Fife &lt;<a href=3D"mai=
lto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrot=
e:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=
=BB=BF<div dir=3D"ltr"><div dir=3D"ltr"><div>If you want to customize the Y=
AML and regenerate from your modified YAML, then I think you need to use rf=
noc_create_verilog (part of UHD). So you could do something like:</div><div=
><br></div><div>python3 uhd/host/utils/rfnoc_blocktool/rfnoc_create_verilog=
.py -c conv.yml -d ./rfnoc_block_conv</div><div><br></div><div>However, I s=
ee ce_rst in the modtool templates:</div><div><br></div><div><a href=3D"htt=
ps://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_EttusResearc=
h_gr-2Dettus_blob_master_python_rfnoc-5Fmodtool_templates.py-23L994&amp;d=
=3DDwMFaQ&amp;c=3D-35OiAkTchMrZOngvJPOeA&amp;r=3DY3cOHwFMBDXttsqnINKoCyXB-t=
a6yD08QrmMzW9aeZY&amp;m=3D1DdbigE2N0YgkBb5QwxGwLoaLzBicQiQrNdYgLIklkzVPw_Rk=
RIL9bq4dINC9Cqd&amp;s=3DfKouuct_wr3CdcChBQjBmaL6WDVq7l3U1zAVR7DcnDY&amp;e=
=3D" target=3D"_blank">https://github.com/EttusResearch/gr-ettus/blob/maste=
r/python/rfnoc_modtool/templates.py#L994</a></div><div><a href=3D"https://u=
rldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_EttusResearch_gr-2=
Dettus_blob_master_python_rfnoc-5Fmodtool_templates.py-23L1384&amp;d=3DDwMF=
aQ&amp;c=3D-35OiAkTchMrZOngvJPOeA&amp;r=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD08Q=
rmMzW9aeZY&amp;m=3D1DdbigE2N0YgkBb5QwxGwLoaLzBicQiQrNdYgLIklkzVPw_RkRIL9bq4=
dINC9Cqd&amp;s=3Dg8-XZVaLen6JS347_frcJqnHnCFTxWbAtw1WcLKrtzA&amp;e=3D" targ=
et=3D"_blank">https://github.com/EttusResearch/gr-ettus/blob/master/python/=
rfnoc_modtool/templates.py#L1384</a></div><div><br></div><div>Perhaps you&#=
39;re using an older version of modtool?<br></div><div><br></div><div>Wade<=
br></div><div><br></div><div><br></div><br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 18, 2022 at 12=
:33 PM Jeffrey Cuenco &lt;<a href=3D"mailto:jeffrey.cuenco@gmail.com" targe=
t=3D"_blank">jeffrey.cuenco@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_d=
efault" style=3D"font-family:tahoma,sans-serif">Spoke too soon - sent last =
one out too fast so apologies for the message clutter:<br><br>What I see in=
 rfnoc_block_conv.v is ce_clk as an input wire within the rfnoc_block_conv =
module declaration.=C2=A0</div><div><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"></div></div>=
</div></div></div></div></div><span class=3D"gmail_default"><div style=3D"f=
ont-family:tahoma,sans-serif"><span class=3D"gmail_default" style=3D"font-f=
amily:tahoma,sans-serif"><br></span></div>However, I don&#39;t see ce_rst a=
nywhere in either the noc_shell_conv.v nor the rfnoc_block_conv.v files.=C2=
=A0</span><div><span class=3D"gmail_default"><br></span></div><div><span cl=
ass=3D"gmail_default">Is this something I should be concerned about, or wil=
l I need to manually add this wire in?</span><span class=3D"gmail_default" =
style=3D"font-family:tahoma,sans-serif"> Please advise - thanks!</span></di=
v><div><span class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif=
"><br></span></div><div><div class=3D"gmail_default" style=3D"font-family:t=
ahoma,sans-serif">-Jeff</div><br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 18, 2022 at 10:26 AM Jef=
frey Cuenco &lt;<a href=3D"mailto:jeffrey.cuenco@gmail.com" target=3D"_blan=
k">jeffrey.cuenco@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" st=
yle=3D"font-family:tahoma,sans-serif">To clarify - I see them in rfnoc_bloc=
k_conv.v but not in noc_shell_conv.v - just want to ensure that is okay; I =
ended up regenerating from scratch as I had used the gain block as a base t=
he first time and it seems it was generated with an older RFNoC 3.x codegen=
.</div><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"=
ltr"><div dir=3D"ltr"></div></div></div></div></div></div><span class=3D"gm=
ail_default"><div style=3D"font-family:tahoma,sans-serif"><span class=3D"gm=
ail_default" style=3D"font-family:tahoma,sans-serif"><br></span></div>Will =
proceed with this and let you know my results. Thanks!</span><span class=3D=
"gmail_default" style=3D"font-family:tahoma,sans-serif"></span></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May =
18, 2022 at 7:55 AM Jeffrey Cuenco &lt;<a href=3D"mailto:jeffrey.cuenco@gma=
il.com" target=3D"_blank">jeffrey.cuenco@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Thanks Wade!</=
div><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"></div></div></div></div></div></div><span style=3D"font-=
family:tahoma,sans-serif"><div style=3D"font-family:tahoma,sans-serif"><spa=
n style=3D"font-family:tahoma,sans-serif"><br></span></div><span class=3D"g=
mail_default" style=3D"font-family:tahoma,sans-serif">I tried to regenerate=
 using rfnocmodtool and noticed that the ce_clk and ce_rst wires aren&#39;t=
 present in the template code and the yaml files get overwritten - is there=
 another command for rfnocmodtool that I should be using to regenerate afte=
r customizing the yaml? Thanks!</span></span><div><span style=3D"font-famil=
y:tahoma,sans-serif"><br></span></div><div><span style=3D"font-family:tahom=
a,sans-serif"><span class=3D"gmail_default" style=3D"font-family:tahoma,san=
s-serif">-Jeff</span></span></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Mon, May 16, 2022 at 11:07 AM Wade Fif=
e &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@et=
tus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>I was looking at your code to answer your ques=
tion when I noticed that the noc_shell code doesn&#39;t seem to match your =
YAML, so I&#39;m wondering if the YAML was modified after you generated you=
r noc_shell? The noc_shell is missing the ce_clk declared in your YAML.</di=
v><div><br></div><div>To answer your question, I&#39;m going to assume you =
want a ce_clk that&#39;s different from rfnoc_chdr_clk and rfnoc_ctrl_clk a=
nd you want your DSP and the registers to use ce_clk. In that case:</div><d=
iv><ol><li>Regenerate your block to get a new noc_shell_conv. This will add=
 a ce_clk input and a ce_rst output to noc_shell_conv. Again, be careful to=
 not overwrite your existing code when regenerating your block.<br></li><li=
>In rfnoc_block_conv, connect the ce_clk input port to the ce_clk input por=
t of noc_shell_conv.</li><li>In rfnoc_block_conv, declare a ce_rst wire at =
the top and connect it to the ce_rst output port of your noc_shell.</li><li=
>Update your registers and custom logic to use ce_clk and ce_rst.</li></ol>=
</div><div></div><div>The answer is slightly different if you want to use t=
he current noc_shell. But in general, you say what clocks you want to use i=
n the YAML file. When the noc_shell is generated, it will take as inputs th=
e clocks you declared in the YAML, it will output resets=20
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
box" aria-label=3D"Message Body"><div></div><div><br></div><div><font style=
=3D"color:rgb(10,132,255)"><span></span></font></div></div><div dir=3D"auto=
"><div><font style=3D"color:rgb(10,132,255)"><span><br></span></font><div d=
ir=3D"ltr"><div><span style=3D"background-color:rgba(255,255,255,0)"><br></=
span></div><div></div></div><div dir=3D"ltr"><blockquote type=3D"cite">On M=
ay 11, 2022, at 08:42, Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com"=
 target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br><br></blockquote><=
/div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><=
div>Can you also share your block&#39;s YML and the noc_shell you generated=
?</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 11, 2022 at 4:27 AM Je=
ffrey Cuenco &lt;<a href=3D"mailto:jcuenco@ucsd.edu" target=3D"_blank">jcue=
nco@ucsd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">Hi Wade,<div><br></div><div>Yes, I have the ct=
rlport:has_status set to False in the block YAML... I ended up having to co=
mment out that test sequence to move onto the part that sends samples into =
and out of the block; now I have an error that states=C2=A0<br><br><b>Fatal=
: Timeout: Test &quot;Test passing through samples&quot; time limit exceede=
d<br></b><br>so I must be doing something that it isn&#39;t liking :) I&#39=
;ve attached my updated .v and .sv files that I modified based on your guid=
ance in your first response, as well as the updated xsim.log. Please let me=
 know if there are any additional things I may need to change such as sizes=
 and what not - thanks!</div><div><br></div><div>-Jeff</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 9, =
2022 at 3:12 PM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=
=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Jeffrey,</div><di=
v><br></div><div>Very curious that you&#39;re getting=20
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
 The IP core&#39;s=C2=A0<b style=3D"font-family:tahoma,sans-serif">s_axis_d=
ata_tdata</b> and=C2=A0<b style=3D"font-family:tahoma,sans-serif">m_axis_da=
ta_tdata </b>are 8-bit while most of the examples show sending 32 bits.=C2=
=A0 Aside from setting the assignments to [7:0] are there any other adjustm=
ents that need to be made in any of the signal declarations and/or block de=
finition wires earlier in the file?</div><div style=3D"font-family:tahoma,s=
ans-serif"><br></div><div style=3D"font-family:tahoma,sans-serif">I&#39;ve =
provided the IP core documentation for reference just in case:</div><div st=
yle=3D"font-family:tahoma,sans-serif"><a href=3D"https://urldefense.proofpo=
int.com/v2/url?u=3Dhttps-3A__docs.xilinx.com_v_u_en-2DUS_pg026-5Fconvolutio=
n&amp;d=3DDwMFaQ&amp;c=3D-35OiAkTchMrZOngvJPOeA&amp;r=3DY3cOHwFMBDXttsqnINK=
oCyXB-ta6yD08QrmMzW9aeZY&amp;m=3DGXbgyQxDz4yiy7ZI94I9ia-1XvF2rdmrbxprVfQojm=
cljlWVOVrjE1Z7g7qsBL_a&amp;s=3DVpTL0Eev0xGrPxywg6lGumMok1Lx8kj5t4uFefeMWNA&=
amp;e=3D" style=3D"font-family:tahoma,sans-serif" target=3D"_blank">https:/=
/docs.xilinx.com/v/u/en-US/pg026_convolution</a></div><div style=3D"font-fa=
mily:tahoma,sans-serif"><br></div><div style=3D"font-family:tahoma,sans-ser=
if">I&#39;ve also included the=C2=A0module and testbench files as well as t=
he xsim log.<br></div><div style=3D"font-family:tahoma,sans-serif"><br></di=
v><div style=3D"font-family:tahoma,sans-serif">Thanks in advance!</div><div=
 style=3D"font-family:tahoma,sans-serif">-Jeff</div><div style=3D"font-fami=
ly:tahoma,sans-serif"><br></div></div>
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
</div></blockquote></div></blockquote></div>
</blockquote></div></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D=
"ltr"><div><br></div><div><div><img src=3D"https://docs.google.com/uc?expor=
t=3Ddownload&amp;id=3D0B9OsFnswXvE4WTMyVWJtdzZnMjA&amp;revid=3D0B9OsFnswXvE=
4OVNxYVFXUngvZlhYNlZaZ2REaUh6dEszN3FBPQ" width=3D"96" height=3D"96"><br>=E2=
=80=8B</div><div><font face=3D"tahoma, sans-serif">Jeffrey Cuenco</font></d=
iv><div><div><font face=3D"tahoma, sans-serif">Tech &amp; Marketing Special=
ist | Cooperative Capitalist</font></div><div><font face=3D"tahoma, sans-se=
rif">(619) 840-4508</font></div><div><font face=3D"tahoma, sans-serif"><a h=
ref=3D"mailto:jeffrey.cuenco@gmail.com" target=3D"_blank">jeffrey.cuenco@gm=
ail.com</a></font></div><div><font face=3D"tahoma, sans-serif"><br></font><=
/div><div><font face=3D"tahoma, sans-serif">LinkedIn:</font></div><div><fon=
t face=3D"tahoma, sans-serif"><a href=3D"https://urldefense.proofpoint.com/=
v2/url?u=3Dhttps-3A__www.linkedin.com_in_jeffrey-2Dg-2Dcuenco_&amp;d=3DDwMF=
aQ&amp;c=3D-35OiAkTchMrZOngvJPOeA&amp;r=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD08Q=
rmMzW9aeZY&amp;m=3DiWIZIMJmjHh1GpWVAWXO6iGs641IqKVp_sQbEVackRZ-O08h4pR3Yi11=
Ui9cE0vs&amp;s=3DZGYCaHwWOMjpAqMmR-3m3IR5aUs6l32qanEYTxW5gwU&amp;e=3D" targ=
et=3D"_blank">https://www.linkedin.com/in/jeffrey-g-cuenco/</a></font></div=
></div></div><div><br></div></div></div></div></div></div></div></div></div=
>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000043471305df769675--

--===============3732379805239694238==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3732379805239694238==--
