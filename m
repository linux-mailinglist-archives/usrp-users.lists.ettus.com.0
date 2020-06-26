Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8223C20B606
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jun 2020 18:39:50 +0200 (CEST)
Received: from [::1] (port=35636 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jorOE-00017c-Vr; Fri, 26 Jun 2020 12:39:46 -0400
Received: from mail-vk1-f180.google.com ([209.85.221.180]:46530)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mdyaaseen1995@gmail.com>)
 id 1jorOB-0000vz-Bz
 for usrp-users@lists.ettus.com; Fri, 26 Jun 2020 12:39:43 -0400
Received: by mail-vk1-f180.google.com with SMTP id y23so2337307vkd.13
 for <usrp-users@lists.ettus.com>; Fri, 26 Jun 2020 09:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vdl2Wd4U2fHV220DhPmep+FSjEiZ6fJj/Exj4oKt8tI=;
 b=jgrWPLPQTvFvPSuV6G8XrMJYMZH6rAG1fRxX0cq6B8/y/VbocvQtzEwd388d/fbl3F
 qp8+fB6JiTU/6vLoLr7kr9jF0cNxdcS1HlXlhnhlBi4QzVJj5knjfuA71ww38WMBez1y
 gScD3KOF5nYjxShPcc2Iz0Ks9tk0C9IYWeHAV+HvA/0rOSc23KxXf1aW7EVWOwNb0u6k
 2x5249dzGDblUXvYZ0HlGxP/19HkOu+d/A1Z5DEqjHhzuiIUuYqS60aSSOeQN+X6t0E+
 +OIkY/QKBZWWJvwp5xb/mD+7EmI64+kcluShoUoyySWapg99N4G+ts+khHBs0vo30qpO
 WZIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vdl2Wd4U2fHV220DhPmep+FSjEiZ6fJj/Exj4oKt8tI=;
 b=cjAaI5Frqal2w2fVI2/WbJB4jU/k33cms1oDU+VtJttnbC/QNt15b1+aYPvSrXyyxC
 P+12mPtX5qtAOaceKOtZcd6gmldMAA5B0PHohkFqMuAEIA/p8OUuX6FTO00NA+iHgrzB
 qu3UqN9ObMcKtlq7cPoVlZ9uOypUVQ1sxnAT/NABJdpMyAoXD9gEqBMfMECf9sIZ7JDe
 SK4IWV7mcevQf5omi7+TUzvgTrkmHeByBHVuAnyL4x9czXN8ucq35u8NkF0hArFeqZiE
 HohmcOJSs4ePDtRCV/e+yYrBimfmuMA31Jcvko5HjRNK1iUX4an3oWXopA7f/vaeY5KT
 a9Ng==
X-Gm-Message-State: AOAM530hR5NM7DhC+QgKYqkOLjtNKC0/NgZlQl1PpZrZ6eAq3KBUC0Rr
 MMyQKHpF0iGVNmLEJI/1Hihbo7D+RvohrFt4HbE=
X-Google-Smtp-Source: ABdhPJxMlf7Qfcjb2iwv1UBtuTIPJtFIOUvJsWLXav+uwYiUpLHjFDodEF1934BrjnAXqQe2EzImXSNIc9WY0Lc5Qpk=
X-Received: by 2002:a1f:6049:: with SMTP id u70mr2902059vkb.7.1593189542669;
 Fri, 26 Jun 2020 09:39:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAN-A3_uAoXfcs4zvHt1PSvVN2fB78a7u=nXgiE7FB2S8tWeMVQ@mail.gmail.com>
 <CAN6+Rz=X+bMsvMuYUiJHc6yE8d-HURJFq-bmCPGnf2wKtZHgOg@mail.gmail.com>
In-Reply-To: <CAN6+Rz=X+bMsvMuYUiJHc6yE8d-HURJFq-bmCPGnf2wKtZHgOg@mail.gmail.com>
Date: Fri, 26 Jun 2020 18:37:46 +0200
Message-ID: <CAN-A3_tHx4Tsv4U6j7QKTNFTX6cPdDPakvFwhM53sXsbRikWrg@mail.gmail.com>
To: cherif chibane <cherif.chibane@gmail.com>
Cc: discuss-gnuradio@gnu.org, 
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] NEED HELP: RFNoC OOT tutorial
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Mohamed Yaaseen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mohamed Yaaseen <mdyaaseen1995@gmail.com>
Content-Type: multipart/mixed; boundary="===============2812841681762754585=="
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

--===============2812841681762754585==
Content-Type: multipart/alternative; boundary="000000000000c02eb705a8ff5831"

--000000000000c02eb705a8ff5831
Content-Type: text/plain; charset="UTF-8"

Hello Cherif,
      I followed the same tutorial, it is the same as in AN here:
https://kb.ettus.com/Getting_Started_with_RFNoC_Development
But, uhd 4.0 mentioned in there is the pybombs recipes, I am not sure which
source used to built these recipes, but I guess it should be uhd
rfnoc-devel branch
The UHD-3.15 branch of uhd repository is the current stable version and
master branch corresponds to UHD-4.0.0.


Regards,
Mohamed Yaaseen


On Fri, 26 Jun 2020 at 17:51, cherif chibane <cherif.chibane@gmail.com>
wrote:

> Hi Moahmmed,
>
> I am in the process going that RFOC tutorial in:
>
> https://www.youtube.com/watch?v=j-EfyPVpaJ8
>
> He seems to be using UHD 4.0.0 and yet  he uses XML for binding the RFNoC
> module he created. Am I missing something?
>
> Thanks,
> Cherif
>
>
>
> On Fri, Jun 26, 2020 at 11:14 AM Mohamed Yaaseen via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello Guys,
>>
>>     I am following the rfnoc getting started tutorial, to develop a gain
>> block. I am using the following branches of UHD, gr-ettus, gnuradio.
>> UHD - 3.15 LTS
>> gr-ettus - maint-3.8
>> gnuradio - maint-3.8
>> All installed in a custom prefix without using pybombs:
>> ~/workspace/installs/stable
>>
>> I have created the gain oot module using rfnocmodtool with all the
>> testbench and also have created the FPGA image. Now to create a gnuradio
>> grc bindings, the tutorial uses the xml file.
>> Since I am using gnuradio 3.8, it requires a yaml file. But even though I
>> am using gr-ettus maint-3.8 branch it's rfnocmodtools is not updated to
>> have yaml files. So, I am  stuck with xml.
>> Yea, I can just convert xml to yaml file manually, But, I find many extra
>> parameter with the xml file
>> and I am also not sure  how  I should change the CMakeLists.txt so that
>> the yaml files get installed correctly, while installing the OOT module.
>> I need some help on how I can create a yaml file for rfnoc oot in a
>> proper way ?
>>
>> My second question is: Currently, I can see that in the master branch of
>> UHD, the entire RFNoC work flow is  changing. I couldn't find
>> uhd_image_builder.py and gr-ettus is going to be removed etc.
>> I will  be working with RFNoC for the next couple of months, so I would
>> like to know If I should be moving to UHD 4.0.0 before I begin developing
>> my actual rfnoc application. And if so, is there any guide or how-to page
>> for RFNoC getting started UHD - 4.0.0 ? The current AN seems pretty
>> outdated even for UHD-3.15-LTS version
>>
>> Looking forward to your suggestions, tips and answers ..!!
>>
>> Thanks, stay safe and healthy !!
>>
>> Regards,
>> Mohamed Yaaseen
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000c02eb705a8ff5831
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Cherif,</div><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 I followed the same tutorial, it is the same as in AN here: <a href=3D"=
https://kb.ettus.com/Getting_Started_with_RFNoC_Development">https://kb.ett=
us.com/Getting_Started_with_RFNoC_Development</a></div><div>But, uhd 4.0 me=
ntioned in there is the pybombs recipes, I am not sure which source used to=
 built these recipes, but I guess it should be uhd rfnoc-devel branch <br><=
/div><div>The UHD-3.15 branch of uhd repository is the current stable versi=
on and master branch corresponds to UHD-4.0.0.<br></div><div><br></div><div=
><br></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr">Regards,<div>Mohamed Yaaseen</div></div></di=
v></div></div></div></div></div></div></div><br></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 26 Jun 2020 at 17:5=
1, cherif chibane &lt;<a href=3D"mailto:cherif.chibane@gmail.com">cherif.ch=
ibane@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><div>Hi Moahmmed,</div><div><br></div><div>=
I am in the process going that RFOC tutorial in:</div><div><br></div><div><=
a href=3D"https://www.youtube.com/watch?v=3Dj-EfyPVpaJ8" target=3D"_blank">=
https://www.youtube.com/watch?v=3Dj-EfyPVpaJ8</a></div><div><br></div><div>=
He seems to be using UHD 4.0.0 and yet=C2=A0 he uses XML for binding the RF=
NoC module he created. Am I missing something?</div><div><br></div><div>Tha=
nks,</div><div>Cherif<br></div><div><div><div dir=3D"ltr"><div dir=3D"ltr">=
<br></div></div></div><br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 26, 2020 at 11:14 AM Mohamed Ya=
aseen via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targ=
et=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello Guys,</=
div><div>=C2=A0=C2=A0</div><div>=C2=A0=C2=A0=C2=A0 I am following the rfnoc=
 getting started tutorial, to develop a gain block. I am using the followin=
g branches of UHD, gr-ettus, gnuradio.</div><div><div>UHD - 3.15 LTS</div><=
div>gr-ettus - maint-3.8</div><div>gnuradio - maint-3.8</div><div>All insta=
lled in a custom prefix without using pybombs: ~/workspace/installs/stable<=
br></div></div><div><br></div><div>I have created the gain oot module using=
 rfnocmodtool with all the testbench and also have created the FPGA image. =
Now to create a gnuradio grc bindings, the tutorial uses the xml file.</div=
><div>Since I am using gnuradio 3.8, it requires a yaml file. But even thou=
gh I am using gr-ettus maint-3.8 branch it&#39;s rfnocmodtools is not updat=
ed to have yaml files. So, I am=C2=A0 stuck with xml.</div><div>Yea, I can =
just convert xml to yaml file manually, But, I find many extra parameter wi=
th the xml file</div><div>and I am also not sure=C2=A0 how=C2=A0 I should c=
hange the CMakeLists.txt so that the yaml files get installed correctly, wh=
ile installing the OOT module.</div><div>I need some help on how I can crea=
te a yaml file for rfnoc oot in a=C2=A0 proper way ?<br></div><div><br></di=
v><div>My second question is: Currently, I can see that in the master branc=
h of UHD, the entire RFNoC work flow is=C2=A0 changing. I couldn&#39;t find=
 uhd_image_builder.py and gr-ettus is going to be removed etc. <br></div><d=
iv>I will=C2=A0 be working with RFNoC for the next couple of months, so I w=
ould like to know If I should be moving to UHD 4.0.0 before I begin develop=
ing=C2=A0 my actual rfnoc application. And if so, is there any guide or how=
-to page for RFNoC getting started UHD - 4.0.0 ? The current AN seems prett=
y outdated even for UHD-3.15-LTS version</div><div><br></div><div>Looking f=
orward to your suggestions, tips and answers ..!!<br></div><div><br></div><=
div>Thanks, stay safe and healthy !!<br></div><div> <br></div><div><div><di=
v dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">=
<div><div dir=3D"ltr">Regards,<div>Mohamed Yaaseen</div></div></div></div><=
/div></div></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000c02eb705a8ff5831--


--===============2812841681762754585==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2812841681762754585==--

