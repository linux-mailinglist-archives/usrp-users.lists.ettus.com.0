Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4AA526901
	for <lists+usrp-users@lfdr.de>; Fri, 13 May 2022 20:10:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D570384D11
	for <lists+usrp-users@lfdr.de>; Fri, 13 May 2022 14:10:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652465451; bh=LrAGv510Ji+iHtEXcuI/l6k5cvA34OEvdbqh1wHSP+k=;
	h=Date:References:In-Reply-To:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=aTdi/ZJI67O7dmPRorIoMivxjmCg0NF5cU6OU8ycwpG1OlvlNhyyap0ijM7qK/E8k
	 yqfHjyGkCMoyTqg0Gaq6wgf/uQ8i+j+osbq9Zfc12RGc3NIIWRTqU7wrfNxA2tRbXJ
	 8kXBUL68odz1AWkg8JebdYUlx1SQIEZD5L9xkagVSvLDceY6MRlds98kTMIrWxhqJ7
	 VOmD9n9M9ejZKp9Q8pDzxcsIyRHp/Hb6x5PKRfwAenVjGImThTH59rNetUdehy1mTk
	 vZe/4wKcpiL/vDUNsmXSoXoIjXn05rAZAR/ESu7c6ur9YLOomgBgAhxGXYb883YVe8
	 k92wamFrqFMQg==
Received: from mx0a-0016e101.pphosted.com (mx0a-0016e101.pphosted.com [148.163.145.30])
	by mm2.emwd.com (Postfix) with ESMTPS id E0866384BDF
	for <usrp-users@lists.ettus.com>; Fri, 13 May 2022 14:09:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ucsd.edu header.i=@ucsd.edu header.b="c3x7Uinr";
	dkim=pass (1024-bit key; unprotected) header.d=ucsd.edu header.i=@ucsd.edu header.b="PNQPRsB3";
	dkim-atps=neutral
Received: from pps.filterd (m0151355.ppops.net [127.0.0.1])
	by mx0a-0016e101.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 24DI5Bd2023794
	for <usrp-users@lists.ettus.com>; Fri, 13 May 2022 11:09:40 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucsd.edu; h=content-type :
 content-transfer-encoding : from : mime-version : subject : date :
 message-id : references : cc : in-reply-to : to; s=campus;
 bh=90Pt9zP8Yk8mbnbfmZL64FMJLdmVXrteHk0wrzMOIzc=;
 b=c3x7Uinr7oq7CWzfHT9iM+zyISCBHaAwaFnhRlNr3o980JC/aJfH6DIJ7+Mn1cy7/2cr
 FFA3kV0H5efd+R9VFELFFGPg74bibK2hh61giGqprwxa5l2BeypfhHA6s0QVhPJhkHIV
 Mk4ZSEhwgnp8bYOGkW+G6JhpMMZZkmhaumVmsu6vsaVkKAFD41wFoXtBlZAThdegtaoU
 k1521/LLU7nkXTSkItNzpR1JFCHry3vDKpAhMzmoBdmjCax35UK1R3ZXSIozXhVCidZz
 ILDxKQsqflMmIcoQOany2j95V1pxOdEjt6UNK+55rHhFkQyLD/kSM+shpObvc+hX4QYQ pA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0016e101.pphosted.com (PPS) with ESMTPS id 3g177n35nb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <usrp-users@lists.ettus.com>; Fri, 13 May 2022 11:09:39 -0700
Received: by mail-pf1-f200.google.com with SMTP id z34-20020a056a001da200b0050e057fdd7eso4371693pfw.12
        for <usrp-users@lists.ettus.com>; Fri, 13 May 2022 11:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ucsd.edu; s=google;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=90Pt9zP8Yk8mbnbfmZL64FMJLdmVXrteHk0wrzMOIzc=;
        b=PNQPRsB3t0t3R2LJMfB5cx6kImfWF9/o6ZxjrfN70wmhGKaGTgKbHWvzO2rnBahXus
         O28GlMQPmZh6q5lI94fU6c8SUbahqt5aI5a/Q65aAy0MYzqdZPVWrE1Qo/9kHUKmKf2F
         cMl5ES/QrOTMjVKSbH4TBssP+cWz4LSKTVKV8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=90Pt9zP8Yk8mbnbfmZL64FMJLdmVXrteHk0wrzMOIzc=;
        b=ExuGV0oO08b6SQkr1rKFPe74lJjlTo1XEgPzA6wCAc4DZM+Mceu6UnEP9sZoH9vrUv
         EdEtgroYSxUSRHyYggVB7F8n1K/dSnpYLXzCIpEQ6eLV3VFZ9fhlCRxDS4iZuLCuBeYS
         DmaxTPULAyJBJl/BpgvS2yH+R1Df45f2sETiM9IHem/6/m6i3cqsYoXW/uybiv5FoNKq
         P8TDdsxj2mUT35kl1Pmv/mfaZ9FOhEQ6NZ/IktFjLKu4mEeBvviI948OwZoGan7KzfwP
         pj5yRtyJ1YvKNW40iDMik4VvBg9ZSZlueQn588FfMBJqVYntXBXchyvNIfWftzwnORwg
         R6hg==
X-Gm-Message-State: AOAM533+BppI9zvgPsnB1pftddu647qVtDonpHlOP0FrjAdLb9ehe6Bx
	6HjbOOCLMVitblYD5pWuUZyinWTh0mBOx5BEigbr3AJKsL7oqA+8XuxYbSEofvOhlPNqfcPvIP9
	kcYOF3E/J7sjcXcXSiH2Y
X-Received: by 2002:a17:902:d145:b0:15e:d1a8:7f33 with SMTP id t5-20020a170902d14500b0015ed1a87f33mr5987822plt.66.1652465378288;
        Fri, 13 May 2022 11:09:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwzMzesQsl3f2xMcfBUwPNbuvhL3zYk7EMRq/u5drdaTnXOYM8anu30Wve4cnuN8cCzulGysQ==
X-Received: by 2002:a17:902:d145:b0:15e:d1a8:7f33 with SMTP id t5-20020a170902d14500b0015ed1a87f33mr5987795plt.66.1652465377921;
        Fri, 13 May 2022 11:09:37 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb91:2a7:5cc3:6489:632e:83e7:a3cf])
        by smtp.gmail.com with ESMTPSA id a9-20020a62bd09000000b0050dc762818csm2067994pff.102.2022.05.13.11.09.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 11:09:37 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Fri, 13 May 2022 11:09:35 -0700
Message-Id: <A6A77F83-C042-468F-BE5A-09EA770885A1@ucsd.edu>
References: <CAFche=gJZqr6W7C9au4GFmhfTSqgRq_XV9Vew8L4gcpLFoJ4EA@mail.gmail.com>
In-Reply-To: <CAFche=gJZqr6W7C9au4GFmhfTSqgRq_XV9Vew8L4gcpLFoJ4EA@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
X-Mailer: iPhone Mail (19E258)
X-campus_gsuite: gsuite_33445511
X-Proofpoint-ORIG-GUID: geArykBewp8WLvaPU0zuq4jIoy1JG0zk
X-Proofpoint-GUID: geArykBewp8WLvaPU0zuq4jIoy1JG0zk
pp_allow_relay: proofpoint_allowed
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-05-13_09,2022-05-13_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 mlxlogscore=999 phishscore=0 priorityscore=1501 bulkscore=0 mlxscore=0
 impostorscore=0 malwarescore=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=-80 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2205130075
Message-ID-Hash: VHBVUUJVLU6MBG7CXRO7EX2TIPHJFWX4
X-Message-ID-Hash: VHBVUUJVLU6MBG7CXRO7EX2TIPHJFWX4
X-MailFrom: jcuenco@ucsd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jeffrey Cuenco <jeffrey.cuenco@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC 4.0 OOT FPGA Testbench Writing Guidance?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VHBVUUJVLU6MBG7CXRO7EX2TIPHJFWX4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Jeffrey Cuenco via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeffrey Cuenco <jcuenco@ucsd.edu>
Content-Type: multipart/mixed; boundary="===============0011053757475869578=="


--===============0011053757475869578==
Content-Type: multipart/alternative; boundary=Apple-Mail-13329C4B-174D-40B1-B000-2BC7B5F3013D
Content-Transfer-Encoding: 7bit


--Apple-Mail-13329C4B-174D-40B1-B000-2BC7B5F3013D
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks Wade!

I went ahead and restored the signal sizes to 32-bit as you suggested.

For using ce_clk, does it suffice for me to create a wire for ce_clk in the .=
v file and then reference it from the yaml? Is ordering important or just en=
suring the name matches the wire? Thanks!

-Jeff


> On May 12, 2022, at 10:29, Wade Fife <wade.fife@ettus.com> wrote:
>=20
> =EF=BB=BF
> Hi Jeff,
>=20
> I took a look and noticed a couple things.
> There are some signal width mismatches in rfnoc_block_conv.v. Take a look a=
t s_rfnoc_ctrl_tdata, m_rfnoc_ctrl_tdata, m_in_payload_tdata, s_out_payload_=
tdata. They have different widths than what the noc_shell expects. I think i=
t's possible to change the payload_tdata width to 8 on the noc_shell by chan=
ging the item_width in your YAML, but you'll want to regenerate the noc_shel=
l to do that (be careful not to overwrite your other files if you do this). B=
ut the ctrl bus must be 32-bit.
> The ctrlport_clk has no driver. It looks like you specified ce_clk as the c=
lock domain in your YAML, so perhaps that's the clock you want to use?
> Try resolving these issues and see where that gets you.
>=20
> Wade
>=20
>> On Wed, May 11, 2022 at 2:19 PM Jeffrey Cuenco <jeffrey.cuenco@gmail.com>=
 wrote:
>> Hi Wade,
>>=20
>> Please see attached. Thanks!
>>=20
>> -Jeff
>>=20
>>=20
>>=20
>>=20
>>>> On May 11, 2022, at 08:42, Wade Fife <wade.fife@ettus.com> wrote:
>>>>=20
>>> =EF=BB=BF
>>> Can you also share your block's YML and the noc_shell you generated?
>>>=20
>>> Wade
>>>=20
>>>> On Wed, May 11, 2022 at 4:27 AM Jeffrey Cuenco <jcuenco@ucsd.edu> wrote=
:
>>>> Hi Wade,
>>>>=20
>>>> Yes, I have the ctrlport:has_status set to False in the block YAML... I=
 ended up having to comment out that test sequence to move onto the part tha=
t sends samples into and out of the block; now I have an error that states=20=

>>>>=20
>>>> Fatal: Timeout: Test "Test passing through samples" time limit exceeded=

>>>>=20
>>>> so I must be doing something that it isn't liking :) I've attached my u=
pdated .v and .sv files that I modified based on your guidance in your first=
 response, as well as the updated xsim.log. Please let me know if there are a=
ny additional things I may need to change such as sizes and what not - thank=
s!
>>>>=20
>>>> -Jeff
>>>>=20
>>>>> On Mon, May 9, 2022 at 3:12 PM Wade Fife <wade.fife@ettus.com> wrote:
>>>>> Hi Jeffrey,
>>>>>=20
>>>>> Very curious that you're getting that CTRL_STS_OKAY error, since it lo=
oks like you're not using the status. I assume ctrlport:has_status is set to=
 False in your block's YAML? In that case the status should always be OK.
>>>>>=20
>>>>> 1) For different input/output packet sizes, you need to modify the con=
text to set the payload length of the outgoing packet. That's the block of c=
ode starting on line 283 in the rfnoc_block_conv.v file you sent. There's an=
 example in rfnoc_block_logpower, in which the output packet length is half t=
he length of input packets. In your case you'll need to set it to 3/2 instea=
d of 1/2. See here:
>>>>>=20
>>>>> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/=
blocks/rfnoc_block_logpwr/rfnoc_block_logpwr.v#L202=20
>>>>>=20
>>>>> 2) The testbenches typically have an ITEM_W constant that indicates th=
e size of the data type you want to work with. The ITEM_W is normally set to=
 the sample size (e.g., 32 for sc16 samples). Since you want to work with by=
tes, you could change that to 8 then create an item_t array and send it as a=
 single packet using blk_ctrl.send_items(). Then you can call blk_ctrl.recv_=
items() to get the data output packet, and inspect the items array that is r=
eturned. Take a look at PkgRfnocBlockCtrlBfm to see what other send/recv met=
hods are available. Here's a quick example assuming the item size is 8-bit:
>>>>>=20
>>>>> item_t sent[$], received[$];
>>>>> sent =3D { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };  // Whatever values you wan=
t for the input packet, one byte per element
>>>>> blk_ctrl.send_items(0, sent);
>>>>>=20
>>>>> blk_ctrl.recv_items(0, received);
>>>>> foreach(received[i]) begin
>>>>>   // Compare the expected value to the byte in received[i] and see if i=
t matches
>>>>> end
>>>>>=20
>>>>> Wade
>>>>>=20
>>>>>> On Mon, May 9, 2022 at 1:30 PM Jeffrey Cuenco via USRP-users <usrp-us=
ers@lists.ettus.com> wrote:
>>>>>> Hi all,
>>>>>>=20
>>>>>> Long time no see! I am currently on a final stretches of completing a=
 masters project for my wireless embedded systems program that involves a US=
RP X310 with RFNoC 4.0 and GNURadio that implements a Hierarchical Modulatio=
n design using nested 4QAM / QPSK (final constellation "appears" like 16QAM b=
ut has embedded high priority and low priority layers that can adapt based o=
n SNR).
>>>>>>=20
>>>>>> I am currently attempting to integrate the Xilinx Convolutional Encod=
er v9.0 IP block into the template rfnoc_block_conv.v design that was create=
d using rfnocmodtool and modeled after the Ettus FFT example. With a bit of w=
ork I was able to get the .xci file loaded by Vivado when the make target is=
 executed for the testbench, and the testbench appears to build without much=
 modification.
>>>>>>=20
>>>>>> When executing 'make rfnoc_block_conv_tb'  it appears to fully execut=
e the build process to the end, but I receive a fatal "Did not receive CTRL_=
STS_OKAY status" message in the process which I attribute to either somethin=
g not being configured in the testbench file or something not being configur=
ed right in my verilog module file.=20
>>>>>>=20
>>>>>> I've attempted to summarize where I'm stuck and need help on in the b=
elow three summary points / questions:
>>>>>> 1) I have configured the convolutional encoder with rate 1/2 and punc=
tured (effective rate 2/3), which I assume will require me modifying the "ax=
i_wrapper" so that the output to input ratios are set properly - are there a=
dditional examples that I can follow for this?=20
>>>>>>=20
>>>>>> I've seen the axi_wrapper migration note but as I'm still a novice at=
 Verilog and System Verilog additional examples would be helpful. :)=20
>>>>>>=20
>>>>>>=20
>>>>>> 2) I would like to modify my testbench so that I send 10 bytes (80 bi=
ts) of data, and read out the 15 bytes (120 bits) that get spit out and veri=
fy that the encoded bytes coming out of the core match ground truth data I w=
ould generate using MATLAB.=20
>>>>>>=20
>>>>>> Do we have any additional testbench examples or additional documentat=
ion that show sending 1 or more bytes of data through an IP core? The IP cor=
e's s_axis_data_tdata and m_axis_data_tdata are 8-bit while most of the exam=
ples show sending 32 bits.  Aside from setting the assignments to [7:0] are t=
here any other adjustments that need to be made in any of the signal declara=
tions and/or block definition wires earlier in the file?
>>>>>>=20
>>>>>> I've provided the IP core documentation for reference just in case:
>>>>>> https://docs.xilinx.com/v/u/en-US/pg026_convolution
>>>>>>=20
>>>>>> I've also included the module and testbench files as well as the xsim=
 log.
>>>>>>=20
>>>>>> Thanks in advance!
>>>>>> -Jeff
>>>>>>=20
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-13329C4B-174D-40B1-B000-2BC7B5F3013D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Thanks Wade!<br><br><div dir=3D"ltr"><div><=
span style=3D"background-color: rgba(255, 255, 255, 0);">I went ahead and re=
stored the signal sizes to 32-bit as you suggested.</span></div><div><span s=
tyle=3D"background-color: rgba(255, 255, 255, 0);"><br></span></div><div><sp=
an style=3D"background-color: rgba(255, 255, 255, 0);">For using ce_clk, doe=
s it suffice for me to create a wire for ce_clk in the .v file and then refe=
rence it from the yaml? Is ordering important or just ensuring the name matc=
hes the wire? Thanks!</span></div><div><span style=3D"background-color: rgba=
(255, 255, 255, 0);"><br></span></div><div><span style=3D"background-color: r=
gba(255, 255, 255, 0);">-Jeff</span></div><div><span style=3D"background-col=
or: rgba(255, 255, 255, 0);"><br></span></div><div><span style=3D"background=
-color: rgba(255, 255, 255, 0);"><br></span></div></div><div dir=3D"ltr"><bl=
ockquote type=3D"cite">On May 12, 2022, at 10:29, Wade Fife &lt;wade.fife@et=
tus.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div d=
ir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>Hi Jeff,</div><div><br></div><div>=
I took a look and noticed a couple things.<br></div><div><ul><li>There are s=
ome signal width mismatches in rfnoc_block_conv.v. Take a look at s_rfnoc_ct=
rl_tdata, m_rfnoc_ctrl_tdata, m_in_payload_tdata, s_out_payload_tdata. They h=
ave different widths than what the noc_shell expects. I think it's possible t=
o change the payload_tdata width to 8 on the noc_shell by changing the item_=
width in your YAML, but you'll want to regenerate the noc_shell to do that (=
be careful not to overwrite your other files if you do this). But the ctrl b=
us must be 32-bit.<br></li><li>The ctrlport_clk has no driver. It looks like=
 you specified ce_clk as the clock domain in your YAML, so perhaps that's th=
e clock you want to use?</li></ul><div>Try resolving these issues and see wh=
ere that gets you.<br></div><div><br></div><div>Wade<br></div></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, M=
ay 11, 2022 at 2:19 PM Jeffrey Cuenco &lt;<a href=3D"mailto:jeffrey.cuenco@g=
mail.com">jeffrey.cuenco@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb=
(204,204,204);padding-left:1ex"><div dir=3D"auto">Hi Wade,<div><br></div><di=
v>Please see attached. Thanks!</div><div><br></div><div>-Jeff</div><div><br>=
</div></div><div dir=3D"auto" role=3D"textbox" aria-label=3D"Message Body"><=
div></div><div><br></div><div><font color=3D"#0a84ff"><span></span></font></=
div></div><div dir=3D"auto"><div><font color=3D"#0a84ff"><span><br></span></=
font><div dir=3D"ltr"><div><span style=3D"background-color:rgba(255,255,255,=
0)"><br></span></div><div></div></div><div dir=3D"ltr"><blockquote type=3D"c=
ite">On May 11, 2022, at 08:42, Wade Fife &lt;<a href=3D"mailto:wade.fife@et=
tus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br><br></block=
quote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"=
ltr"><div>Can you also share your block's YML and the noc_shell you generate=
d?</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 11, 2022 at 4:27 AM Jef=
frey Cuenco &lt;<a href=3D"mailto:jcuenco@ucsd.edu" target=3D"_blank">jcuenc=
o@ucsd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr">Hi Wade,<div><br></div><div>Yes, I have the ctrlport=
:has_status set to False in the block YAML... I ended up having to comment o=
ut that test sequence to move onto the part that sends samples into and out o=
f the block; now I have an error that states&nbsp;<br><br><b>Fatal: Timeout:=
 Test "Test passing through samples" time limit exceeded<br></b><br>so I mus=
t be doing something that it isn't liking :) I've attached my updated .v and=
 .sv files that I modified based on your guidance in your first response, as=
 well as the updated xsim.log. Please let me know if there are any additiona=
l things I may need to change such as sizes and what not - thanks!</div><div=
><br></div><div>-Jeff</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Mon, May 9, 2022 at 3:12 PM Wade Fife &lt;<a hr=
ef=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div>Hi Jeffrey,</div><div><br></div><div>Very curious that you're=
 getting=20
that CTRL_STS_OKAY error, since it looks like you're not using the status. I=
 assume ctrlport:has_status is set to False in your block's YAML? In that ca=
se the status should always be OK.<br></div><div><br></div><div>1) For diffe=
rent input/output packet sizes, you need to modify the context to set the pa=
yload length of the outgoing packet. That's the block of code starting on li=
ne 283 in the rfnoc_block_conv.v file you sent. There's an example in rfnoc_=
block_logpower, in which the output packet length is half the length of inpu=
t packets. In your case you'll need to set it to 3/2 instead of 1/2. See her=
e:<br></div><div><br></div><div><a href=3D"https://urldefense.proofpoint.com=
/v2/url?u=3Dhttps-3A__github.com_EttusResearch_uhd_blob_master_fpga_usrp3_li=
b_rfnoc_blocks_rfnoc-5Fblock-5Flogpwr_rfnoc-5Fblock-5Flogpwr.v-23L202&amp;d=3D=
DwMFaQ&amp;c=3D-35OiAkTchMrZOngvJPOeA&amp;r=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD=
08QrmMzW9aeZY&amp;m=3DGXbgyQxDz4yiy7ZI94I9ia-1XvF2rdmrbxprVfQojmcljlWVOVrjE1=
Z7g7qsBL_a&amp;s=3DWkFBbmpL8IpvF2oHp-4Vfhy73qA49jSJD2tHoTQ0anQ&amp;e=3D" tar=
get=3D"_blank">https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/l=
ib/rfnoc/blocks/rfnoc_block_logpwr/rfnoc_block_logpwr.v#L202</a> <br></div><=
div><br></div><div>2) The testbenches typically have an ITEM_W constant that=
 indicates the size of the data type you want to work with. The ITEM_W is no=
rmally set to the sample size (e.g., 32 for sc16 samples). Since you want to=
 work with bytes, you could change that to 8 then create an item_t array and=
 send it as a single packet using blk_ctrl.send_items(). Then you can call b=
lk_ctrl.recv_items() to get the data output packet, and inspect the items ar=
ray that is returned. Take a look at PkgRfnocBlockCtrlBfm to see what other s=
end/recv methods are available. Here's a quick example assuming the item siz=
e is 8-bit:</div><div><br></div><div></div><div>item_t sent[$], received[$];=
</div><div>sent =3D { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };&nbsp; // Whatever valu=
es you want for the input packet, one byte per element<br></div><div>blk_ctr=
l.send_items(0, sent);</div><div><br></div><div>blk_ctrl.recv_items(0, recei=
ved);</div><div>foreach(received[i]) begin<br></div><div>&nbsp; // Compare t=
he expected value to the byte in received[i] and see if it matches<br></div>=
<div>end</div><div><br></div><div>Wade</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 9, 2022 at 1:30 PM Je=
ffrey Cuenco via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"g=
mail_quote"><div dir=3D"ltr"><div style=3D"font-family:tahoma,sans-serif">Hi=
 all,</div><div style=3D"font-family:tahoma,sans-serif"><br>Long time no see=
!&nbsp;I am currently on a final stretches of completing a masters project f=
or my wireless embedded systems program that involves a USRP X310 with RFNoC=
 4.0 and GNURadio that implements a Hierarchical Modulation design using nes=
ted 4QAM / QPSK (final constellation "appears" like 16QAM but has embedded h=
igh priority and low priority layers that can adapt based on SNR).</div><div=
 style=3D"font-family:tahoma,sans-serif"><br></div><div style=3D"font-family=
:tahoma,sans-serif">I am currently attempting to integrate the Xilinx Convol=
utional Encoder v9.0 IP block into the template rfnoc_block_conv.v design th=
at was created using rfnocmodtool and modeled after the Ettus FFT example. W=
ith a bit of work I was able to get the .xci file loaded by Vivado when the m=
ake target is executed for the testbench, and the testbench appears to build=
 without much modification.</div><div style=3D"font-family:tahoma,sans-serif=
"><br>When executing 'make rfnoc_block_conv_tb'&nbsp; it appears to fully ex=
ecute the build process to the end, but I receive a fatal "Did not receive C=
TRL_STS_OKAY status" message in the process which I attribute to either some=
thing not being configured in the testbench file or something not being conf=
igured right in my verilog module file.&nbsp;</div><div style=3D"font-family=
:tahoma,sans-serif"><br></div><div style=3D"font-family:tahoma,sans-serif">I=
've attempted to summarize where I'm stuck and need help on in the below thr=
ee summary points / questions:</div><div style=3D"font-family:tahoma,sans-se=
rif">1) I have configured the convolutional encoder with rate 1/2 and punctu=
red (effective rate 2/3), which I assume will require me modifying the "axi_=
wrapper" so that the output to input ratios are set properly - are there add=
itional examples that I can follow for this?&nbsp;</div><div style=3D"font-f=
amily:tahoma,sans-serif"><br></div><div style=3D"font-family:tahoma,sans-ser=
if">I've seen the axi_wrapper migration note but as I'm still a novice at Ve=
rilog and System Verilog additional examples would be helpful. :)&nbsp;</div=
><div style=3D"font-family:tahoma,sans-serif"><br></div><div style=3D"font-f=
amily:tahoma,sans-serif"><br>2) I would like to modify my testbench so that I=
 send 10 bytes (80 bits) of data, and read out the 15 bytes (120 bits) that g=
et spit out and verify that the encoded bytes coming out of the core match g=
round truth data I would generate using MATLAB.&nbsp;</div><div style=3D"fon=
t-family:tahoma,sans-serif"><br></div><div style=3D"font-family:tahoma,sans-=
serif">Do we have any additional testbench examples or additional documentat=
ion that show sending 1 or more bytes of data through an IP core? The IP cor=
e's&nbsp;<b>s_axis_data_tdata</b> and&nbsp;<b>m_axis_data_tdata </b>are 8-bi=
t while most of the examples show sending 32 bits.&nbsp; Aside from setting t=
he assignments to [7:0] are there any other adjustments that need to be made=
 in any of the signal declarations and/or block definition wires earlier in t=
he file?</div><div style=3D"font-family:tahoma,sans-serif"><br></div><div st=
yle=3D"font-family:tahoma,sans-serif">I've provided the IP core documentatio=
n for reference just in case:</div><div style=3D"font-family:tahoma,sans-ser=
if"><a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__docs.x=
ilinx.com_v_u_en-2DUS_pg026-5Fconvolution&amp;d=3DDwMFaQ&amp;c=3D-35OiAkTchM=
rZOngvJPOeA&amp;r=3DY3cOHwFMBDXttsqnINKoCyXB-ta6yD08QrmMzW9aeZY&amp;m=3DGXbg=
yQxDz4yiy7ZI94I9ia-1XvF2rdmrbxprVfQojmcljlWVOVrjE1Z7g7qsBL_a&amp;s=3DVpTL0Ee=
v0xGrPxywg6lGumMok1Lx8kj5t4uFefeMWNA&amp;e=3D" target=3D"_blank">https://doc=
s.xilinx.com/v/u/en-US/pg026_convolution</a></div><div style=3D"font-family:=
tahoma,sans-serif"><br></div><div style=3D"font-family:tahoma,sans-serif">I'=
ve also included the&nbsp;module and testbench files as well as the xsim log=
.<br></div><div style=3D"font-family:tahoma,sans-serif"><br></div><div style=
=3D"font-family:tahoma,sans-serif">Thanks in advance!</div><div style=3D"fon=
t-family:tahoma,sans-serif">-Jeff</div><div style=3D"font-family:tahoma,sans=
-serif"><br></div></div>
</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</div></blockquote></div></div></blockquote></div>
</div></blockquote></body></html>=

--Apple-Mail-13329C4B-174D-40B1-B000-2BC7B5F3013D--

--===============0011053757475869578==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0011053757475869578==--
