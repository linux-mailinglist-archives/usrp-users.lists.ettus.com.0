Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3373852E837
	for <lists+usrp-users@lfdr.de>; Fri, 20 May 2022 11:03:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E80B0384BCC
	for <lists+usrp-users@lfdr.de>; Fri, 20 May 2022 05:03:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653037413; bh=8C71QdvVqBkceWS92xlBio5tBMRWX5Kf6Q5LTfpR99A=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=kbNnWsYTAJeWeSuYfYUButP6c5jCZIqquJioN5Rh7O66HW2Q48ZE0PTbp556Ry0CY
	 KY3iynnVLgXqokjQsDeuvlQ8mjIp31+HzE/VWn7B9/WrKciuwfxYQKPb3uYAwVnXQ2
	 +knAKGhrSVKuDg4q39vqmcJiXoPl4tx8Iq1nyfAKMHqVKIiVpZ/JcgTwURAoHHpIJF
	 kf/nz2Kvsug+19S2RbvfMGlM4tMBa2bJIb3IVpBSPGiD17WfBsXnevgrHwIuE+fIOy
	 hK2n5t0Yrao2phosz5874U1eHBs7vmzcKfuIJHVbIQqMdQf8mbQ7PICWsb10y+7wsQ
	 EHI+tfcDJUutA==
Received: from mx0a-0016e101.pphosted.com (mx0a-0016e101.pphosted.com [148.163.145.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 0165E38423A
	for <usrp-users@lists.ettus.com>; Fri, 20 May 2022 05:02:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ucsd.edu header.i=@ucsd.edu header.b="F0hEL455";
	dkim=pass (1024-bit key; unprotected) header.d=ucsd.edu header.i=@ucsd.edu header.b="Dvi7kkiK";
	dkim-atps=neutral
Received: from pps.filterd (m0151353.ppops.net [127.0.0.1])
	by mx0a-0016e101.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 24K8sYXe010108
	for <usrp-users@lists.ettus.com>; Fri, 20 May 2022 02:02:26 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucsd.edu; h=mime-version :
 references : in-reply-to : from : date : message-id : subject : to : cc :
 content-type; s=campus; bh=SnLGSaoH1Sdjc5AMtlV+6VjmhroJaEt5AQ9Kbbbm+5U=;
 b=F0hEL455xnfV6f2ATcdo5UUsqG4dSBPouE3NZMeDrYhSRFKSBoEbje8rRzkB2HwUzBmT
 XJPY3JSPFG/RpJZE0wLXgUuZKx7DdZnVCKCDD6IB6orinTxdszc2UMeN4WPt+qiLWYM/
 wkqMbqNR5hWpWXu0JJEO/VrcYXx4ulwe3SmbZbMAmAOfu7d7vZRovcWX5Jn9qYtdDYPk
 wOhFBSr8ogobhD1PzOGHih/fCZYJU0AvaoOQ42DYRxY1UzymurpKAK0pdRZXagOJJEpO
 lIPjmpicXJAmTZRhZ3HILuhJwn/NdKE7CxznBFPqJjD+kkwGasBwUhTPP3xHK5JHjjQm Lg==
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com [209.85.219.198])
	by mx0a-0016e101.pphosted.com (PPS) with ESMTPS id 3g58dgk4qw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <usrp-users@lists.ettus.com>; Fri, 20 May 2022 02:02:25 -0700
Received: by mail-yb1-f198.google.com with SMTP id o7-20020a256b47000000b0064ddc3bea70so6609441ybm.4
        for <usrp-users@lists.ettus.com>; Fri, 20 May 2022 02:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ucsd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SnLGSaoH1Sdjc5AMtlV+6VjmhroJaEt5AQ9Kbbbm+5U=;
        b=Dvi7kkiKuRqE6YQ8+SnjHCSTQZ9f+Lxh+y1hoGY+2+/2vN2So3yBJcinDviStrUX6N
         UUnNTRzChZhSTIsC/B+tAIqjLNUH8N9mdIkI90u0FKQlEwSQzN7HXmUqILbv9+K4hl3W
         esY5Q8ZxUy0P6vTpOsuLmvFiG4dcEuHHlejVU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SnLGSaoH1Sdjc5AMtlV+6VjmhroJaEt5AQ9Kbbbm+5U=;
        b=dS8OlaPTAspFAM/50J1exlT8He9Rv2ggKmI5eCRfkn5olMu/X7Tgs75SYzpA7lAumK
         TJcUlQILeIn5hf4YEZJq3JyhGj2rfczbeWX9RZLSElV/ZeufJsJLi3/D6rYTXvxzBNmi
         gRcCm++3rEK+rL43khE8i6wEx322Nuz3EOEiW4d51X6tm4nJrzEw1WpT/2vDQYeXPSc8
         REbV+G/5nhrL6TwuKglBayv0/sL302/ugM52EIzB/y+8h0+rWcu+f21xZG3N1P5BX3UC
         0Ot+RPnioDvfc3hJbIoPNDwcA20Ka1T9fow/+yLtUa/jhaTH68bbF1s6u6NRqZtnLNrD
         wgDQ==
X-Gm-Message-State: AOAM531iuYnoCn2KMj63CV7VsLj2ld76wrY9SOnsYB6ETELymQ2NSI2b
	HtDxiIzrTqD32/ytCeeBmMTpc3g+askxqClsBm8R+pMLgy7HrzyBslZhogc0i29o/soayqrZa/O
	wpBMnyYAQCtz1GKI4JgmxOYelTw24P9Gyvy5W
X-Received: by 2002:a25:4902:0:b0:648:d1db:af83 with SMTP id w2-20020a254902000000b00648d1dbaf83mr8636652yba.559.1653037343645;
        Fri, 20 May 2022 02:02:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyi3IW5BQf6Za7Dcz1l0+q7+ohBTVlMt5ET9qybGRgcHcwETJFYEZPBfkGMPKMIu9WmgugQ5fAuso4eDlODUrU=
X-Received: by 2002:a25:4902:0:b0:648:d1db:af83 with SMTP id
 w2-20020a254902000000b00648d1dbaf83mr8636624yba.559.1653037343317; Fri, 20
 May 2022 02:02:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAFche=jJyeqcaf5sPSkxA3qokEDXm=FfmaFmgxP784M4Ms2rOQ@mail.gmail.com>
 <4BC71671-9217-4411-9903-E2A2D9A537E5@gmail.com> <CAFche=igDnrw+9D5R=+QMkw22vrFRyFGQyNr68kD7XtseY9+iA@mail.gmail.com>
 <CA+GXwQAYJj=36OLJvupV3R=TTnEHpNH62UaA_z8rCXe9VGuEbA@mail.gmail.com>
 <CAFche=jwjqmrZO46m1-mdX=b2rSinBf7386fV939rw6vfe9vVw@mail.gmail.com>
 <CA+GXwQCDeEKyYL_c178dQC0dS=33yYLNvDoaQ=0e+z-ZBNB=uA@mail.gmail.com> <CAFche=jyVR5=ig2EEuZ8Z2FXMMEAqvAd_-rKX6HCTG1Y35MJQQ@mail.gmail.com>
In-Reply-To: <CAFche=jyVR5=ig2EEuZ8Z2FXMMEAqvAd_-rKX6HCTG1Y35MJQQ@mail.gmail.com>
Date: Fri, 20 May 2022 02:02:11 -0700
Message-ID: <CAHKPiO5HhJESrCNWTM-8T7DdifYpkFSo6CVO7i7OVPG9qqsZDA@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
X-campus_gsuite: gsuite_33445511
X-Proofpoint-GUID: 0Lz4_3bi4efcKEevxWZyNtApJ3zMjBOl
X-Proofpoint-ORIG-GUID: 0Lz4_3bi4efcKEevxWZyNtApJ3zMjBOl
pp_allow_relay: proofpoint_allowed
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.874,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-05-20_03,2022-05-20_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 clxscore=1015 adultscore=0 suspectscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 mlxscore=0 mlxlogscore=999 spamscore=0
 priorityscore=1501 classifier=spam adjust=-80 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2205200066
Message-ID-Hash: C243FQL6NOY2HMNP3UQMKNTR4ZC2642F
X-Message-ID-Hash: C243FQL6NOY2HMNP3UQMKNTR4ZC2642F
X-MailFrom: jcuenco@ucsd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jeffrey Cuenco <jeffrey.cuenco@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC 4.0 OOT FPGA Testbench Writing Guidance?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C243FQL6NOY2HMNP3UQMKNTR4ZC2642F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Jeffrey Cuenco via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeffrey Cuenco <jcuenco@ucsd.edu>
Content-Type: multipart/mixed; boundary="===============7313991211671628151=="

--===============7313991211671628151==
Content-Type: multipart/alternative; boundary="000000000000a63aec05df6dbf21"

--000000000000a63aec05df6dbf21
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Wade, I ended up regenerating using axis_pyld_ctxt and was able to
use the logpwr example again for generating a 2 to 1 output to input ratio
context.

Now the testbench builds but it seems the IP block times out when I wait
for the output data to come out of the block.... at this point I'm not sure
what could be the root cause so I've attached a link to my entire project
tree containing the axi_conv.xci IP file, and all my logic for the noc
shell, rfnoc block, and testbench just in case there's something I'm doing
wrong in wiring up the IP core; the default for the IP core is rate 1/2 its
a fairly simple block that takes a stream of data in and outputs an
convolutional encoded stream of data out that is 2x the length of the data
going into it.

https://drive.google.com/drive/folders/1dOl9VMCPmuQLiXN4jSTTqgtFCQ19FmJT?us=
p=3Dsharing

I also posted the verilog files outside the tar.gz for convenience in case
you catch something obvious on first glance - want to make sure I didn't
miss anything in terms of clocks, data widths, etc. thanks!

-Jeff



On Thu, May 19, 2022 at 3:13 PM Wade Fife <wade.fife@ettus.com> wrote:

> Regarding the payload/context change, it looks like the modtool sets the
> fpga_iface to axis_pyld_ctxt, but in conv.yml you changed it to axis_data=
?
> So when you ran rfnoc_create_verilog, it changed the interface type used =
by
> the NoC shell. You can read about "AXI-Stream Payload Context" and
> "AXI-Stream Data" interface types in the RFNoC Specification
> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__files.ettus.com_a=
pp-5Fnotes_RFNoC-5FSpecification.pdf&d=3DDwMFaQ&c=3D-35OiAkTchMrZOngvJPOeA&=
r=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD08QrmMzW9aeZY&m=3DiWIZIMJmjHh1GpWVAWXO6iG=
s641IqKVp_sQbEVackRZ-O08h4pR3Yi11Ui9cE0vs&s=3D_MwzXrHQa4GWT2C7uefcJvZJn_fsZ=
MZuuJEPEl5eXzg&e=3D>.
> I think either could be used.
>
> Wade
>
> On Thu, May 19, 2022 at 4:18 PM Jeffrey Cuenco <jeffrey.cuenco@gmail.com>
> wrote:
>
>> Thanks Wade! I just remembered that I forgot to set my output to input
>> ratio which may be explaining why the timeouts are happening even with t=
he
>> extended delay.
>>
>> When I used the rfnoc_create_verilog, I noticed that the client interfac=
e
>> only has m_in_axis_* and s_out_axis_* connections and no separation betw=
een
>> context and payload for the template of noc shell used by the tool.
>>
>> As such the logpwr example you shared with me earlier isn't
>> straightforward to port over and the duc example appears to be most
>> compatible pin-out wise with axi_rate_change so I'm about to attempt to
>> hook it up it but wanted to clarify that there aren't any additional
>> changes I would need to do aside from adjusting MAX_M, MAX_N, and ensuri=
ng
>> the input/output wire names match what are in my signal declarations
>> section? Thanks!
>>
>> -Jeff
>>
>>
>>
>>
>>
>>
>>
>> On Thu, May 19, 2022 at 12:36 PM Wade Fife <wade.fife@ettus.com> wrote:
>>
>>> The testbench has start_test() and end_test() calls around each test.
>>> There's a timeout in the start_test() call, and there's also a global
>>> timeout (part of start_tb(), but I think 10 ms by default). If the
>>> end_test() doesn't occur within a certain amount of time of the
>>> start_test(), then the testbench assumes something went wrong. Otherwis=
e,
>>> the simulation could just keep running forever.
>>>
>>> So you'll need to look at your simulation to see where things are
>>> getting stuck. Also, make sure what you're doing doesn't just need more
>>> time.
>>>
>>> Wade
>>>
>>> On Thu, May 19, 2022 at 2:29 PM Jeffrey Cuenco <jeffrey.cuenco@gmail.co=
m>
>>> wrote:
>>>
>>>> Thanks Wade! I used the rfnoc_create_verilog and it generated code tha=
t
>>>> contained ce_clk and added
>>>>
>>>> output wire ce_rst;
>>>>
>>>> following the ce_clk declaration around line 32 of rfnoc_block_conv.v
>>>> in the generated file, then plugged it into .ce_rst of noc_shell_conv =
later
>>>> in the file and also used it in my axi_conv instantiation.
>>>>
>>>> After doing that and building I was able to get the testbench to run
>>>> but I now get a fatal timeout, something about time limit exceeded.
>>>>
>>>> Is there something that needs to be wired in so that it knows when
>>>> things finish? Thanks!
>>>>
>>>> -Jeff
>>>>
>>>> On Thu, May 19, 2022 at 12:23 Wade Fife <wade.fife@ettus.com> wrote:
>>>>
>>>>> I think those versions are fine, but your gr-ettus might be out of
>>>>> date. I'm not very familiar with the GNU Radio integration. You could=
 try
>>>>> updating your gr-ettus then regenerate your block, or you could run t=
he
>>>>> rfnoc_create_verilog tool using the YML file as an input if you need =
to
>>>>> customize the YAML to add the ce_clk/ce_rst signals. It's really up t=
o you
>>>>> if you need those signals. But your IP needs to be clocked and probab=
ly
>>>>> reset by something, and you need to make sure the generated noc_shell=
 uses
>>>>> the same clock domains you're expecting to use.
>>>>>
>>>>>
>>>>> Wade
>>>>>
>>>>> On Wed, May 18, 2022 at 10:10 PM Jeffrey Cuenco <
>>>>> jeffrey.cuenco@gmail.com> wrote:
>>>>>
>>>>>> Neel recommended I use UHD v4.1.0.5 and GRC v3.8.5.0 so that=E2=80=
=99s what
>>>>>> I=E2=80=99ve been using - does this version not generate the right i=
tems? If not
>>>>>> which version of UHD should I update to, and which version of GRC wo=
rks
>>>>>> best with it? Thanks!
>>>>>>
>>>>>> -Jeff
>>>>>>
>>>>>> On May 18, 2022, at 19:59, Wade Fife <wade.fife@ettus.com> wrote:
>>>>>>
>>>>>> =EF=BB=BF
>>>>>> If you want to customize the YAML and regenerate from your modified
>>>>>> YAML, then I think you need to use rfnoc_create_verilog (part of UHD=
). So
>>>>>> you could do something like:
>>>>>>
>>>>>> python3 uhd/host/utils/rfnoc_blocktool/rfnoc_create_verilog.py -c
>>>>>> conv.yml -d ./rfnoc_block_conv
>>>>>>
>>>>>> However, I see ce_rst in the modtool templates:
>>>>>>
>>>>>>
>>>>>> https://github.com/EttusResearch/gr-ettus/blob/master/python/rfnoc_m=
odtool/templates.py#L994
>>>>>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_E=
ttusResearch_gr-2Dettus_blob_master_python_rfnoc-5Fmodtool_templates.py-23L=
994&d=3DDwMFaQ&c=3D-35OiAkTchMrZOngvJPOeA&r=3DY3cOHwFMBDXttsqnINKoCyXB-ta6y=
D08QrmMzW9aeZY&m=3D1DdbigE2N0YgkBb5QwxGwLoaLzBicQiQrNdYgLIklkzVPw_RkRIL9bq4=
dINC9Cqd&s=3DfKouuct_wr3CdcChBQjBmaL6WDVq7l3U1zAVR7DcnDY&e=3D>
>>>>>>
>>>>>> https://github.com/EttusResearch/gr-ettus/blob/master/python/rfnoc_m=
odtool/templates.py#L1384
>>>>>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_E=
ttusResearch_gr-2Dettus_blob_master_python_rfnoc-5Fmodtool_templates.py-23L=
1384&d=3DDwMFaQ&c=3D-35OiAkTchMrZOngvJPOeA&r=3DY3cOHwFMBDXttsqnINKoCyXB-ta6=
yD08QrmMzW9aeZY&m=3D1DdbigE2N0YgkBb5QwxGwLoaLzBicQiQrNdYgLIklkzVPw_RkRIL9bq=
4dINC9Cqd&s=3Dg8-XZVaLen6JS347_frcJqnHnCFTxWbAtw1WcLKrtzA&e=3D>
>>>>>>
>>>>>> Perhaps you're using an older version of modtool?
>>>>>>
>>>>>> Wade
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>> On Wed, May 18, 2022 at 12:33 PM Jeffrey Cuenco <
>>>>>> jeffrey.cuenco@gmail.com> wrote:
>>>>>>
>>>>>>> Spoke too soon - sent last one out too fast so apologies for the
>>>>>>> message clutter:
>>>>>>>
>>>>>>> What I see in rfnoc_block_conv.v is ce_clk as an input wire within
>>>>>>> the rfnoc_block_conv module declaration.
>>>>>>>
>>>>>>> However, I don't see ce_rst anywhere in either the noc_shell_conv.v
>>>>>>> nor the rfnoc_block_conv.v files.
>>>>>>>
>>>>>>> Is this something I should be concerned about, or will I need to
>>>>>>> manually add this wire in? Please advise - thanks!
>>>>>>>
>>>>>>> -Jeff
>>>>>>>
>>>>>>>
>>>>>>> On Wed, May 18, 2022 at 10:26 AM Jeffrey Cuenco <
>>>>>>> jeffrey.cuenco@gmail.com> wrote:
>>>>>>>
>>>>>>>> To clarify - I see them in rfnoc_block_conv.v but not in
>>>>>>>> noc_shell_conv.v - just want to ensure that is okay; I ended up
>>>>>>>> regenerating from scratch as I had used the gain block as a base t=
he first
>>>>>>>> time and it seems it was generated with an older RFNoC 3.x codegen=
.
>>>>>>>>
>>>>>>>> Will proceed with this and let you know my results. Thanks!
>>>>>>>>
>>>>>>>> On Wed, May 18, 2022 at 7:55 AM Jeffrey Cuenco <
>>>>>>>> jeffrey.cuenco@gmail.com> wrote:
>>>>>>>>
>>>>>>>>> Thanks Wade!
>>>>>>>>>
>>>>>>>>> I tried to regenerate using rfnocmodtool and noticed that the
>>>>>>>>> ce_clk and ce_rst wires aren't present in the template code and t=
he yaml
>>>>>>>>> files get overwritten - is there another command for rfnocmodtool=
 that I
>>>>>>>>> should be using to regenerate after customizing the yaml? Thanks!
>>>>>>>>>
>>>>>>>>> -Jeff
>>>>>>>>>
>>>>>>>>> On Mon, May 16, 2022 at 11:07 AM Wade Fife <wade.fife@ettus.com>
>>>>>>>>> wrote:
>>>>>>>>>
>>>>>>>>>> I was looking at your code to answer your question when I notice=
d
>>>>>>>>>> that the noc_shell code doesn't seem to match your YAML, so I'm =
wondering
>>>>>>>>>> if the YAML was modified after you generated your noc_shell? The=
 noc_shell
>>>>>>>>>> is missing the ce_clk declared in your YAML.
>>>>>>>>>>
>>>>>>>>>> To answer your question, I'm going to assume you want a ce_clk
>>>>>>>>>> that's different from rfnoc_chdr_clk and rfnoc_ctrl_clk and you =
want your
>>>>>>>>>> DSP and the registers to use ce_clk. In that case:
>>>>>>>>>>
>>>>>>>>>>    1. Regenerate your block to get a new noc_shell_conv. This
>>>>>>>>>>    will add a ce_clk input and a ce_rst output to noc_shell_conv=
. Again, be
>>>>>>>>>>    careful to not overwrite your existing code when regenerating=
 your block.
>>>>>>>>>>    2. In rfnoc_block_conv, connect the ce_clk input port to the
>>>>>>>>>>    ce_clk input port of noc_shell_conv.
>>>>>>>>>>    3. In rfnoc_block_conv, declare a ce_rst wire at the top and
>>>>>>>>>>    connect it to the ce_rst output port of your noc_shell.
>>>>>>>>>>    4. Update your registers and custom logic to use ce_clk and
>>>>>>>>>>    ce_rst.
>>>>>>>>>>
>>>>>>>>>> The answer is slightly different if you want to use the current
>>>>>>>>>> noc_shell. But in general, you say what clocks you want to use i=
n the YAML
>>>>>>>>>> file. When the noc_shell is generated, it will take as inputs th=
e clocks
>>>>>>>>>> you declared in the YAML, it will output resets that you can use=
 for those
>>>>>>>>>> clock domains, and it will output on ctrlport_clk and axis_data_=
clk
>>>>>>>>>> whatever clocks you said in the YAML that you wanted to use for =
those
>>>>>>>>>> interfaces. This can be a bit confusing because it means you can=
 have
>>>>>>>>>> multiple versions of the same clock under different names (e.g.,=
 ce_clk,
>>>>>>>>>> ctrlport_clk, and axis_data_clk might all be the same clock, jus=
t on
>>>>>>>>>> different signal names).
>>>>>>>>>>
>>>>>>>>>> Wade
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> On Fri, May 13, 2022 at 1:09 PM Jeffrey Cuenco <jcuenco@ucsd.edu=
>
>>>>>>>>>> wrote:
>>>>>>>>>>
>>>>>>>>>>> Thanks Wade!
>>>>>>>>>>>
>>>>>>>>>>> I went ahead and restored the signal sizes to 32-bit as you
>>>>>>>>>>> suggested.
>>>>>>>>>>>
>>>>>>>>>>> For using ce_clk, does it suffice for me to create a wire for
>>>>>>>>>>> ce_clk in the .v file and then reference it from the yaml? Is o=
rdering
>>>>>>>>>>> important or just ensuring the name matches the wire? Thanks!
>>>>>>>>>>>
>>>>>>>>>>> -Jeff
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> On May 12, 2022, at 10:29, Wade Fife <wade.fife@ettus.com>
>>>>>>>>>>> wrote:
>>>>>>>>>>>
>>>>>>>>>>> =EF=BB=BF
>>>>>>>>>>> Hi Jeff,
>>>>>>>>>>>
>>>>>>>>>>> I took a look and noticed a couple things.
>>>>>>>>>>>
>>>>>>>>>>>    - There are some signal width mismatches in
>>>>>>>>>>>    rfnoc_block_conv.v. Take a look at s_rfnoc_ctrl_tdata, m_rfn=
oc_ctrl_tdata,
>>>>>>>>>>>    m_in_payload_tdata, s_out_payload_tdata. They have different=
 widths than
>>>>>>>>>>>    what the noc_shell expects. I think it's possible to change =
the
>>>>>>>>>>>    payload_tdata width to 8 on the noc_shell by changing the it=
em_width in
>>>>>>>>>>>    your YAML, but you'll want to regenerate the noc_shell to do=
 that (be
>>>>>>>>>>>    careful not to overwrite your other files if you do this). B=
ut the ctrl bus
>>>>>>>>>>>    must be 32-bit.
>>>>>>>>>>>    - The ctrlport_clk has no driver. It looks like you
>>>>>>>>>>>    specified ce_clk as the clock domain in your YAML, so perhap=
s that's the
>>>>>>>>>>>    clock you want to use?
>>>>>>>>>>>
>>>>>>>>>>> Try resolving these issues and see where that gets you.
>>>>>>>>>>>
>>>>>>>>>>> Wade
>>>>>>>>>>>
>>>>>>>>>>> On Wed, May 11, 2022 at 2:19 PM Jeffrey Cuenco <
>>>>>>>>>>> jeffrey.cuenco@gmail.com> wrote:
>>>>>>>>>>>
>>>>>>>>>>>> Hi Wade,
>>>>>>>>>>>>
>>>>>>>>>>>> Please see attached. Thanks!
>>>>>>>>>>>>
>>>>>>>>>>>> -Jeff
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> On May 11, 2022, at 08:42, Wade Fife <wade.fife@ettus.com>
>>>>>>>>>>>> wrote:
>>>>>>>>>>>>
>>>>>>>>>>>> =EF=BB=BF
>>>>>>>>>>>> Can you also share your block's YML and the noc_shell you
>>>>>>>>>>>> generated?
>>>>>>>>>>>>
>>>>>>>>>>>> Wade
>>>>>>>>>>>>
>>>>>>>>>>>> On Wed, May 11, 2022 at 4:27 AM Jeffrey Cuenco <
>>>>>>>>>>>> jcuenco@ucsd.edu> wrote:
>>>>>>>>>>>>
>>>>>>>>>>>>> Hi Wade,
>>>>>>>>>>>>>
>>>>>>>>>>>>> Yes, I have the ctrlport:has_status set to False in the block
>>>>>>>>>>>>> YAML... I ended up having to comment out that test sequence t=
o move onto
>>>>>>>>>>>>> the part that sends samples into and out of the block; now I =
have an error
>>>>>>>>>>>>> that states
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>> *Fatal: Timeout: Test "Test passing through samples" time
>>>>>>>>>>>>> limit exceeded*
>>>>>>>>>>>>> so I must be doing something that it isn't liking :) I've
>>>>>>>>>>>>> attached my updated .v and .sv files that I modified based on=
 your guidance
>>>>>>>>>>>>> in your first response, as well as the updated xsim.log. Plea=
se let me know
>>>>>>>>>>>>> if there are any additional things I may need to change such =
as sizes and
>>>>>>>>>>>>> what not - thanks!
>>>>>>>>>>>>>
>>>>>>>>>>>>> -Jeff
>>>>>>>>>>>>>
>>>>>>>>>>>>> On Mon, May 9, 2022 at 3:12 PM Wade Fife <wade.fife@ettus.com=
>
>>>>>>>>>>>>> wrote:
>>>>>>>>>>>>>
>>>>>>>>>>>>>> Hi Jeffrey,
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Very curious that you're getting that CTRL_STS_OKAY error,
>>>>>>>>>>>>>> since it looks like you're not using the status. I assume
>>>>>>>>>>>>>> ctrlport:has_status is set to False in your block's YAML? In=
 that case the
>>>>>>>>>>>>>> status should always be OK.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> 1) For different input/output packet sizes, you need to
>>>>>>>>>>>>>> modify the context to set the payload length of the outgoing=
 packet. That's
>>>>>>>>>>>>>> the block of code starting on line 283 in the rfnoc_block_co=
nv.v file you
>>>>>>>>>>>>>> sent. There's an example in rfnoc_block_logpower, in which t=
he output
>>>>>>>>>>>>>> packet length is half the length of input packets. In your c=
ase you'll need
>>>>>>>>>>>>>> to set it to 3/2 instead of 1/2. See here:
>>>>>>>>>>>>>>
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/=
lib/rfnoc/blocks/rfnoc_block_logpwr/rfnoc_block_logpwr.v#L202
>>>>>>>>>>>>>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__gith=
ub.com_EttusResearch_uhd_blob_master_fpga_usrp3_lib_rfnoc_blocks_rfnoc-5Fbl=
ock-5Flogpwr_rfnoc-5Fblock-5Flogpwr.v-23L202&d=3DDwMFaQ&c=3D-35OiAkTchMrZOn=
gvJPOeA&r=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD08QrmMzW9aeZY&m=3DGXbgyQxDz4yiy7Z=
I94I9ia-1XvF2rdmrbxprVfQojmcljlWVOVrjE1Z7g7qsBL_a&s=3DWkFBbmpL8IpvF2oHp-4Vf=
hy73qA49jSJD2tHoTQ0anQ&e=3D>
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> 2) The testbenches typically have an ITEM_W constant that
>>>>>>>>>>>>>> indicates the size of the data type you want to work with. T=
he ITEM_W is
>>>>>>>>>>>>>> normally set to the sample size (e.g., 32 for sc16 samples).=
 Since you want
>>>>>>>>>>>>>> to work with bytes, you could change that to 8 then create a=
n item_t array
>>>>>>>>>>>>>> and send it as a single packet using blk_ctrl.send_items(). =
Then you can
>>>>>>>>>>>>>> call blk_ctrl.recv_items() to get the data output packet, an=
d inspect the
>>>>>>>>>>>>>> items array that is returned. Take a look at PkgRfnocBlockCt=
rlBfm to see
>>>>>>>>>>>>>> what other send/recv methods are available. Here's a quick e=
xample assuming
>>>>>>>>>>>>>> the item size is 8-bit:
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> item_t sent[$], received[$];
>>>>>>>>>>>>>> sent =3D { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };  // Whatever valu=
es
>>>>>>>>>>>>>> you want for the input packet, one byte per element
>>>>>>>>>>>>>> blk_ctrl.send_items(0, sent);
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> blk_ctrl.recv_items(0, received);
>>>>>>>>>>>>>> foreach(received[i]) begin
>>>>>>>>>>>>>>   // Compare the expected value to the byte in received[i]
>>>>>>>>>>>>>> and see if it matches
>>>>>>>>>>>>>> end
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Wade
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> On Mon, May 9, 2022 at 1:30 PM Jeffrey Cuenco via USRP-users=
 <
>>>>>>>>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> Hi all,
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> Long time no see! I am currently on a final stretches of
>>>>>>>>>>>>>>> completing a masters project for my wireless embedded syste=
ms program that
>>>>>>>>>>>>>>> involves a USRP X310 with RFNoC 4.0 and GNURadio that imple=
ments a
>>>>>>>>>>>>>>> Hierarchical Modulation design using nested 4QAM / QPSK (fi=
nal
>>>>>>>>>>>>>>> constellation "appears" like 16QAM but has embedded high pr=
iority and low
>>>>>>>>>>>>>>> priority layers that can adapt based on SNR).
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> I am currently attempting to integrate the Xilinx
>>>>>>>>>>>>>>> Convolutional Encoder v9.0 IP block into the template rfnoc=
_block_conv.v
>>>>>>>>>>>>>>> design that was created using rfnocmodtool and modeled afte=
r the Ettus FFT
>>>>>>>>>>>>>>> example. With a bit of work I was able to get the .xci file=
 loaded by
>>>>>>>>>>>>>>> Vivado when the make target is executed for the testbench, =
and the
>>>>>>>>>>>>>>> testbench appears to build without much modification.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> When executing 'make rfnoc_block_conv_tb'  it appears to
>>>>>>>>>>>>>>> fully execute the build process to the end, but I receive a=
 fatal "Did not
>>>>>>>>>>>>>>> receive CTRL_STS_OKAY status" message in the process which =
I attribute to
>>>>>>>>>>>>>>> either something not being configured in the testbench file=
 or something
>>>>>>>>>>>>>>> not being configured right in my verilog module file.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> I've attempted to summarize where I'm stuck and need help o=
n
>>>>>>>>>>>>>>> in the below three summary points / questions:
>>>>>>>>>>>>>>> 1) I have configured the convolutional encoder with rate 1/=
2
>>>>>>>>>>>>>>> and punctured (effective rate 2/3), which I assume will req=
uire me
>>>>>>>>>>>>>>> modifying the "axi_wrapper" so that the output to input rat=
ios are set
>>>>>>>>>>>>>>> properly - are there additional examples that I can follow =
for this?
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> I've seen the axi_wrapper migration note but as I'm still a
>>>>>>>>>>>>>>> novice at Verilog and System Verilog additional examples wo=
uld be helpful.
>>>>>>>>>>>>>>> :)
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> 2) I would like to modify my testbench so that I send 10
>>>>>>>>>>>>>>> bytes (80 bits) of data, and read out the 15 bytes (120 bit=
s) that get spit
>>>>>>>>>>>>>>> out and verify that the encoded bytes coming out of the cor=
e match ground
>>>>>>>>>>>>>>> truth data I would generate using MATLAB.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> Do we have any additional testbench examples or additional
>>>>>>>>>>>>>>> documentation that show sending 1 or more bytes of data thr=
ough an IP core?
>>>>>>>>>>>>>>> The IP core's *s_axis_data_tdata* and *m_axis_data_tdata *a=
re
>>>>>>>>>>>>>>> 8-bit while most of the examples show sending 32 bits.  Asi=
de from setting
>>>>>>>>>>>>>>> the assignments to [7:0] are there any other adjustments th=
at need to be
>>>>>>>>>>>>>>> made in any of the signal declarations and/or block definit=
ion wires
>>>>>>>>>>>>>>> earlier in the file?
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> I've provided the IP core documentation for reference just
>>>>>>>>>>>>>>> in case:
>>>>>>>>>>>>>>> https://docs.xilinx.com/v/u/en-US/pg026_convolution
>>>>>>>>>>>>>>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__doc=
s.xilinx.com_v_u_en-2DUS_pg026-5Fconvolution&d=3DDwMFaQ&c=3D-35OiAkTchMrZOn=
gvJPOeA&r=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD08QrmMzW9aeZY&m=3DGXbgyQxDz4yiy7Z=
I94I9ia-1XvF2rdmrbxprVfQojmcljlWVOVrjE1Z7g7qsBL_a&s=3DVpTL0Eev0xGrPxywg6lGu=
mMok1Lx8kj5t4uFefeMWNA&e=3D>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> I've also included the module and testbench files as well a=
s
>>>>>>>>>>>>>>> the xsim log.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> Thanks in advance!
>>>>>>>>>>>>>>> -Jeff
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> _______________________________________________
>>>>>>>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>>>>>>>> To unsubscribe send an email to
>>>>>>>>>>>>>>> usrp-users-leave@lists.ettus.com
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>> --
>>>>
>>>>
>>>> =E2=80=8B
>>>> Jeffrey Cuenco
>>>> Tech & Marketing Specialist | Cooperative Capitalist
>>>> (619) 840-4508
>>>> jeffrey.cuenco@gmail.com
>>>>
>>>> LinkedIn:
>>>> https://www.linkedin.com/in/jeffrey-g-cuenco/
>>>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.linkedin.c=
om_in_jeffrey-2Dg-2Dcuenco_&d=3DDwMFaQ&c=3D-35OiAkTchMrZOngvJPOeA&r=3DY3cOH=
wFMBDXttsqnINKoCyXB-ta6yD08QrmMzW9aeZY&m=3DiWIZIMJmjHh1GpWVAWXO6iGs641IqKVp=
_sQbEVackRZ-O08h4pR3Yi11Ui9cE0vs&s=3DZGYCaHwWOMjpAqMmR-3m3IR5aUs6l32qanEYTx=
W5gwU&e=3D>
>>>>
>>>>

--000000000000a63aec05df6dbf21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Wade, I ended up regenerating using axis_pyld_ctxt =
and was able to use the logpwr example again for generating a 2 to 1 output=
 to input ratio context.<div><br></div><div>Now the testbench builds but it=
 seems the IP block times out when I wait for the output data to come out o=
f the block.... at this point I&#39;m not sure what could be the root cause=
 so I&#39;ve attached a link to my entire project tree containing the axi_c=
onv.xci IP file, and all my logic for the noc shell, rfnoc block, and testb=
ench just in case there&#39;s something I&#39;m doing wrong in wiring up th=
e IP core; the default for the IP core is rate 1/2 its a fairly simple bloc=
k that takes a stream of data in and outputs an convolutional encoded strea=
m of data out that is 2x the length of the data going into it.=C2=A0</div><=
div><br></div><div><a href=3D"https://drive.google.com/drive/folders/1dOl9V=
MCPmuQLiXN4jSTTqgtFCQ19FmJT?usp=3Dsharing">https://drive.google.com/drive/f=
olders/1dOl9VMCPmuQLiXN4jSTTqgtFCQ19FmJT?usp=3Dsharing</a><br></div><div><b=
r></div><div>I also posted the verilog files outside the tar.gz for conveni=
ence in case you catch something obvious on first glance - want to make sur=
e I didn&#39;t miss anything in terms of clocks, data widths, etc. thanks!<=
/div><div><br></div><div>-Jeff</div><div><br></div><div><br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, M=
ay 19, 2022 at 3:13 PM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com"=
>wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div>Regarding the payload/context cha=
nge, it looks like the modtool sets the fpga_iface to axis_pyld_ctxt, but i=
n conv.yml you changed it to axis_data? So when you ran rfnoc_create_verilo=
g, it changed the interface type used by the NoC shell. You can read about =
&quot;AXI-Stream Payload Context&quot; and &quot;AXI-Stream Data&quot; inte=
rface types in the <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3D=
https-3A__files.ettus.com_app-5Fnotes_RFNoC-5FSpecification.pdf&amp;d=3DDwM=
FaQ&amp;c=3D-35OiAkTchMrZOngvJPOeA&amp;r=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD08=
QrmMzW9aeZY&amp;m=3DiWIZIMJmjHh1GpWVAWXO6iGs641IqKVp_sQbEVackRZ-O08h4pR3Yi1=
1Ui9cE0vs&amp;s=3D_MwzXrHQa4GWT2C7uefcJvZJn_fsZMZuuJEPEl5eXzg&amp;e=3D" tar=
get=3D"_blank">RFNoC Specification</a>. I think either could be used.</div>=
<div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, May 19, 2022 at 4:18 PM Jeffrey C=
uenco &lt;<a href=3D"mailto:jeffrey.cuenco@gmail.com" target=3D"_blank">jef=
frey.cuenco@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D=
"font-family:tahoma,sans-serif">Thanks Wade! I just remembered that I forgo=
t to set my output to input ratio which may be explaining why the timeouts =
are happening even with the extended delay.</div><div class=3D"gmail_defaul=
t" style=3D"font-family:tahoma,sans-serif"><br></div><div class=3D"gmail_de=
fault" style=3D"font-family:tahoma,sans-serif">When I used the rfnoc_create=
_verilog, I noticed that the client interface only has m_in_axis_* and s_ou=
t_axis_* connections and no separation between context and payload for the =
template of noc shell used by the tool.</div><div class=3D"gmail_default" s=
tyle=3D"font-family:tahoma,sans-serif"><br></div><div class=3D"gmail_defaul=
t" style=3D"font-family:tahoma,sans-serif">As such the logpwr=C2=A0example =
you shared with me earlier isn&#39;t straightforward to port over and the d=
uc example appears to be most compatible pin-out wise with axi_rate_change =
so I&#39;m about to attempt to hook it up it but wanted to clarify that the=
re aren&#39;t any additional changes I would need to do aside from adjustin=
g MAX_M, MAX_N, and ensuring the input/output wire names match what are in =
my signal declarations section? Thanks!</div><div class=3D"gmail_default" s=
tyle=3D"font-family:tahoma,sans-serif"><br></div><div class=3D"gmail_defaul=
t" style=3D"font-family:tahoma,sans-serif">-Jeff</div><div class=3D"gmail_d=
efault" style=3D"font-family:tahoma,sans-serif"><br></div><div class=3D"gma=
il_default" style=3D"font-family:tahoma,sans-serif"><br></div><div><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div><div><br></div><div=
></div></div><div><br></div></div></div></div></div></div></div></div></div=
><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Thu, May 19, 2022 at 12:36 PM Wade Fife &lt;<a href=3D"mailto:wade.=
fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>=
The testbench has start_test() and end_test() calls around each test. There=
&#39;s a timeout in the start_test() call, and there&#39;s also a global ti=
meout (part of start_tb(), but I think 10 ms by default). If the end_test()=
 doesn&#39;t occur within a certain amount of time of the start_test(), the=
n the testbench assumes something went wrong. Otherwise, the simulation cou=
ld just keep running forever.</div><div><br></div><div>So you&#39;ll need t=
o look at your simulation to see where things are getting stuck. Also, make=
 sure what you&#39;re doing doesn&#39;t just need more time.<br></div><div>=
<br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, May 19, 2022 at 2:29 PM Jeffrey Cuenc=
o &lt;<a href=3D"mailto:jeffrey.cuenco@gmail.com" target=3D"_blank">jeffrey=
.cuenco@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"auto">Thanks Wade! I used the rfnoc_create_ver=
ilog and it generated code that contained ce_clk and added=C2=A0</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">output wire ce_rst;</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">following the ce_clk declaration arou=
nd line 32 of rfnoc_block_conv.v in the generated file, then plugged it int=
o .ce_rst of noc_shell_conv later in the file and also used it in my axi_co=
nv instantiation.</div><div dir=3D"auto"><br></div><div dir=3D"auto">After =
doing that and building I was able to get the testbench to run but I now ge=
t a fatal timeout, something about time limit exceeded.</div><div dir=3D"au=
to"><br></div><div dir=3D"auto">Is there something that needs to be wired i=
n so that it knows when things finish? Thanks!</div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">-Jeff</div><div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, May 19, 2022 at 12:23 Wade Fife &l=
t;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div>
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

--000000000000a63aec05df6dbf21--

--===============7313991211671628151==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7313991211671628151==--
