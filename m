Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0D71A5B9
	for <lists+usrp-users@lfdr.de>; Sat, 11 May 2019 02:14:25 +0200 (CEST)
Received: from [::1] (port=52550 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hPFei-00032g-1c; Fri, 10 May 2019 20:14:24 -0400
Received: from out2-smtp.messagingengine.com ([66.111.4.26]:53927)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <michael.dickens@ettus.com>)
 id 1hPFe9-0002ul-Ua
 for usrp-users@lists.ettus.com; Fri, 10 May 2019 20:14:19 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id B2FEB23967;
 Fri, 10 May 2019 20:13:09 -0400 (EDT)
Received: from imap8 ([10.202.2.58])
 by compute3.internal (MEProxy); Fri, 10 May 2019 20:13:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=7J+N+s
 O+VlzgoobPzCheMnS3zmvSF9epSFY8z29chcw=; b=awUZbrtISqnsloB5yq4Fra
 Yx78qjNY7a0lpQVrBj9IGMpiWo+QIt8ruLj3sQZHVWUzVitOtTQKxG8QrVUaztlp
 weV3sdvDAgehWjyeVJis2kRGD+IkKIjbyZ6Ejuwao07wfwNJPw6/UH3JqgAI6Dzj
 I9MxRzAg3ku5Y19lw+yqnLFB1dKKUkEbYSwzGx5nfUiGy2wO/R/oEd0On/cMe+GC
 gY1XcIKC/PxTIaAWy/3PcGGiUXlZzmLxZVsVqZxL5fwaGBBbYeADNv5qN0jMQBuY
 3zkK+7+ZWq6ygLO/pW6RpcdmC7UqeciByHyyP7625+TBvwcqrChqzJEj9oOb4mNQ
 ==
X-ME-Sender: <xms:lRPWXFIH83Ba06Q3_2qoRGkM-0aWG8pOxYNbx4nF0Zol26qgIJ8JnQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrkeelgdeffecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsegrtderreerreejnecuhfhrohhmpedfofhitghh
 rggvlhcuffhitghkvghnshdfuceomhhitghhrggvlhdrughitghkvghnshesvghtthhush
 drtghomheqnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmihgthhgrvghlrdguihgtkhgv
 nhhssegvthhtuhhsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:lRPWXPY8EQEnj36Y9IOm_ofJlMDJi9fm2mbDVN8mrbSslQLpGRYG0A>
 <xmx:lRPWXH180H5bgqsFrI_gnotVU349X64cPQNLGeRxZgvz4PXkrV6EgA>
 <xmx:lRPWXCyqu0cw7rrePQapUmm6h7gSXBLPaPofcFAU_5-DXK_Waxj1UA>
 <xmx:lRPWXLYDcbURDW_SnR3go22LuMJA1Z1ejiXFkQyaB9Z75-NYqUzpPQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 592D770A7E; Fri, 10 May 2019 20:13:09 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-449-gfb3fc5a-fmstable-20190430v1
Mime-Version: 1.0
Message-Id: <c722a229-d064-4b74-988a-a28a2dc98d79@www.fastmail.com>
In-Reply-To: <365E5ED3-897E-402B-B5BA-D8F9A217B3EF@k5so.com>
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <CAGVTi8VOeNG5B9X-WaMQrvbxkt96UFhm5a6-++9znYCzexfRtQ@mail.gmail.com>
 <9f223faf-add7-74cc-faa1-d4a0ed95e28a@balister.org>
 <2C9C895D-DD6D-4456-9F1D-557F699AB391@k5so.com>
 <5CD36887.5050805@gmail.com>
 <4F25C7C9-CB61-46DF-9163-2CB0CF86DDCF@k5so.com>
 <F19914AE-5635-4F61-A19B-13C16AE6CE8D@k5so.com>
 <2BBEC239-22F9-4F4C-B777-222484DEC314@k5so.com>
 <BL0PR12MB2340B79E071584EF5599E398AF330@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84612E15-1A0B-40FF-9AA3-A810D7500BE3@k5so.com>
 <CAM_0ocHPiAfxGGUND037U3mzSDoN_+odmwZX=tzDLq-=_JjH7A@mail.gmail.com>
 <CA+JMMq9dzg+FqLVgGJRZOBW4KMmYq2ZrCOOnLEVndKCtovF+PA@mail.gmail.com>
 <73C37420-AD11-4E22-9730-493E6FC41678@k5so.com>
 <52565C8B-D078-414F-A560-3672BEADE596@k5so.com>
 <A01FCD5D-DFB6-4E9F-AA41-5D2CF9B00EEA@k5so.com>
 <CA+JMMq_wYJYoenP=wX2ruK-KSHTT6EQdM6K+ksrGFLZZEe+5jQ@mail.gmail.com>
 <691F0564-B5AA-48C6-9258-D15F006E9F7D@k5so.com>
 <E4163757-B40B-4716-888F-2328596BB5B6@k5so.com>
 <5CD48C58.9050302@gmail.com>
 <8481269A-B583-40D7-B93C-1BDDFD50D338@k5so.com>
 <CA+JMMq_h4jKhUH7d6_WiMCstfC8anxeamESGAQ7Q=YLaaKG59A@mail.gmail.com>
 <31E31040-1F5D-4C84-BD3B-65CC609519A9@k5so.com>
 <CA+JMMq8kE4vL3wJz42NexKc=xicWUCGTsu0+Sb9sArw7OX8Tcw@mail.gmail.com>
 <72E6FBD3-F92B-4D0C-BC85-EEA19120596F@k5so.com>
 <161408E6-6B69-48D1-B606-48D3D4D7B22B@gmail.com>
 <ECD2FD88-0308-4D27-B17F-07F8FF4DCF6E@k5so.com>
 <82C6C97F-F209-435E-8C4C-37E43E71B827@gmail.com>
 <A0D159D0-D4D7-4645-8132-44768EF28D22@k5so.com>
 <365E5ED3-897E-402B-B5BA-D8F9A217B3EF@k5so.com>
Date: Fri, 10 May 2019 20:12:45 -0400
To: "Joe Martin" <k5so@k5so.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] 
 =?utf-8?q?Need_a_little_help_with_running_legacy_pr?=
 =?utf-8?q?ebuilt_UHD_versions?=
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: Ian Buckley <ian.buckley@gmail.com>,
 USRP Users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3490076235118940862=="
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

--===============3490076235118940862==
Content-Type: multipart/alternative;
 boundary=a32e44ed2f9743a8bf5e536d6dd85385

--a32e44ed2f9743a8bf5e536d6dd85385
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable

Excellent news, Joe! You're welcome for the assistance; any time! Congra=
ts on persisting & now: have fun! - MLD

On Fri, May 10, 2019, at 7:55 PM, Joe Martin via USRP-users wrote:
> Holy smoke! SUCCESS!! Nick pointed out that there are two switches on =
the N210; S1 and S2 and S1 is a reset, so an upload of FPGA code fails i=
f that is held (which I was holding for his suggested test!). Holding S2=
 during iMPACT loading of the .bit image results in the uhd_image_loader=
 step being SUCCESSFUL!! I am so happy to see that! Uhd_usrp_probe works=
 wonderfully. Finally. We now can put this little to work doing some tou=
gh things!=20
>=20
> Thank you all SO MUCH for your assistance with reviving this N210. A m=
onumental achievement in my book! I don=E2=80=99t know what to say excep=
t that we TOTALLY appreciate you efforts to get us running. You guys are=
 GREAT!=20
>=20
> Very best wishes to you each and every one!=20
>=20
> Joe

--a32e44ed2f9743a8bf5e536d6dd85385
Content-Type: text/html;charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div style=3D"font-f=
amily:Arial;">Excellent news, Joe! You're welcome for the assistance; an=
y time! Congrats on persisting &amp; now: have fun! - MLD<br></div><div =
style=3D"font-family:Arial;"><br></div><div>On Fri, May 10, 2019, at 7:5=
5 PM, Joe Martin via USRP-users wrote:<br></div><blockquote type=3D"cite=
" id=3D"qt"><div style=3D"font-family:Arial;">Holy smoke! &nbsp;SUCCESS!=
! &nbsp;Nick pointed out that there are two switches on the N210; S1 and=
 S2 and S1 is a reset, so an upload of FPGA code fails if that is held (=
which I was holding for his suggested test!). &nbsp;Holding S2 during iM=
PACT loading of the .bit image results in the uhd_image_loader step bein=
g SUCCESSFUL!! &nbsp;I am so happy to see that! &nbsp;Uhd_usrp_probe wor=
ks wonderfully. &nbsp;Finally. &nbsp;We now can put this little to work =
doing some tough things! &nbsp;<br></div><div class=3D"qt-"><br></div><d=
iv class=3D"qt-">Thank you all SO MUCH for your assistance with reviving=
 this N210. &nbsp;A monumental achievement in my book! &nbsp; I don=E2=80=
=99t know what to say except that we TOTALLY appreciate you efforts to g=
et us running. &nbsp;You guys are GREAT!&nbsp;<br></div><div class=3D"qt=
-"><br></div><div class=3D"qt-">Very best wishes to you each and every o=
ne! &nbsp;&nbsp;<br></div><div class=3D"qt-"><br></div><div class=3D"qt-=
"><div style=3D"font-family:Arial;">Joe<br></div></div></blockquote><div=
 style=3D"font-family:Arial;"><br></div></body></html>
--a32e44ed2f9743a8bf5e536d6dd85385--


--===============3490076235118940862==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3490076235118940862==--

