Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BEA9DA45D
	for <lists+usrp-users@lfdr.de>; Wed, 27 Nov 2024 10:02:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 845AE3858FB
	for <lists+usrp-users@lfdr.de>; Wed, 27 Nov 2024 04:02:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732698131; bh=7SXydcTs/ClYMIn7kYRiRuBNZYhbMawfNDCqQpZw0SY=;
	h=Date:References:In-Reply-To:From:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=gQYuoXbPt6a9Q9g3GssDShjQK0AAcZj53KHKi5CNi4fNbGJwCzpbaOOGbbXaiNS6n
	 sVqBWdrToRmqvmoYyK8wFCyBU3TWLJtfVPSljqSyv+0mpdy1idUC65vNMra/YA4pb0
	 RACIAoqetzyNJOpMX8wjp0QQ8yIg/PTdwcWryIwHSIG0ixFc+WctvNm+qBkrP5pQCJ
	 yLhsAAY9fAl0lN4CE721s0GLU0fCxA1ANzgu5zZ6yr3NSoS9oahyNr8mrPKBpPToIG
	 f9BEWC3KpCPZI+hipA+WxwrUBN6w30Hcc/hnAGL+UNpy4JKAwDYFnSgyt4C7ir3T0x
	 iskLUOfhjH4Yw==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mm2.emwd.com (Postfix) with ESMTPS id 23383385309
	for <usrp-users@lists.ettus.com>; Wed, 27 Nov 2024 04:01:57 -0500 (EST)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-51541da4f92so757218e0c.2
        for <usrp-users@lists.ettus.com>; Wed, 27 Nov 2024 01:01:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732698116; x=1733302916;
        h=cc:to:from:subject:message-id:in-reply-to:references:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WJdeD90vAEf+Z8GbtD/X/u69TI7JR5IwxaGeJCYpc/k=;
        b=lvQqxzxivQzlBRDo3wZJxOROZKD8DXbrDipzEx+kg77mF5AKYpjVNGa/TXuXDw3mng
         3HpdIqndYO6vN6VsRX5c16YWp0F3jmucQWISPJ1wz69JuBhTJcuJ7yS6+gwCNf+7mG0s
         xQYhfmLV49hPCwe/zk8uLtBHeQNqAVh2HTDr7GVfwuOHHVW/x0tsrOW1sz5s4vv5LoWV
         Au62AOVoPxX5+Sy96t+hBoMi2FmRzTB5Bs0gpUkTo6ZbY1tdMdjqqBwJACtgoO446Wl5
         H7iSmbsMYFWcWL4eExL/GiFJdjdwRMAyoNW+fTvglbOPalNzfEz1iKQ7IQeYma5iuAbW
         Mr2Q==
X-Gm-Message-State: AOJu0Yw3ofqAUGVA4tir1kP6K/dJTbFrstF/difAUOzp+a7+W93Zyae1
	WDuWeqIAMkXjp3/RIKND+Q73QB/qSoqlo9e1ZmdHT+/C1aPdEQWH16r9+MltDbWmfSLjalpOfMv
	lez4la/JYOJ60voFGG7u+Eag3mXB7C6qJQdFaUKOnncn04bpAmwNq1rwpe2htfHRUTWv19w==
X-Gm-Gg: ASbGncvjc6gUEPrnJtmUkQW5neIVcC300TKbBM5iiQMJXCuDTtDd6cz+mEVv12MuhNv
	zAdUVALpnpUG32Q==
X-Google-Smtp-Source: AGHT+IHlaL4O50bCMp4t48pXt6geU4pqcbjngO7Jz6NePIAILtfe/e0o5YDBTA9pNLAo/y5O9lTFURQGSnAhB1C0LQZxIb3ueJnb7A==
X-Received: by 2002:a05:6122:4f9a:b0:515:4fab:3041 with SMTP id 71dfb90a1353d-5155692217dmr3666518e0c.4.1732698116541;
        Wed, 27 Nov 2024 01:01:56 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 26 Nov 2024 17:32:29 +0100
References: <CAO=xj9WM9jE2+niznSkpqcrqL5hmyYiStSM2DAaOZzL1LAJm=Q@mail.gmail.com>
	<35f6b1f4-8291-47ca-852f-b47e58aabf77@gmail.com>
	<CAO=xj9WGNbN5_YjrD6KfqTB2HA0bxmyr6D1iwRsqoH7VpcVnpg@mail.gmail.com>
	<ba50962f-2d73-425a-afc6-364cf359384e@gmail.com>
In-Reply-To: <ba50962f-2d73-425a-afc6-364cf359384e@gmail.com>
Message-ID: <CAO=xj9Vm1eDeKvyGrUaUmrzLCCA9uv_jyFcdJthgBOVt0cE=Rw@mail.gmail.com>
From: Houshang <houshang.azizi@accelleran.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="0000000000002fb8320627d3658a"
Message-ID-Hash: 7HMNQTKDEQASNYBCX4XJAHRRPNRPJFJT
X-Message-ID-Hash: 7HMNQTKDEQASNYBCX4XJAHRRPNRPJFJT
X-MailFrom: houshang.azizi@accelleran.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: n310 | Error: failed receiving packet. RfnocError
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7HMNQTKDEQASNYBCX4XJAHRRPNRPJFJT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--0000000000002fb8320627d3658a
Content-Type: multipart/alternative; boundary="0000000000002fb82e0627d36588"

--0000000000002fb82e0627d36588
Content-Type: text/plain; charset="UTF-8"

Hi Marcus
I ran the benchmark command on both ip of the n310 and attached you can
find the printout.

On Tue, 26 Nov 2024 at 17:22, Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 26/11/2024 11:10, Houshang wrote:
>
> Many thanks for prompt reply Marcus! Please find attached the printout for
> that probe command you asked for.
>
> OK, so the next thing to do is to test your network capacity between your
> host computer and the N310:
>
> benchmark_rate --args
> "type=n3xx,product=n310,addr=10.10.0.100,master_clock_rate=125e6" --rx_rate
> 25e6 --tx_rate 25e6
>
>
>
> On Tue, 26 Nov 2024 at 16:59, Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 26/11/2024 10:18, Houshang wrote:
>>
>> Hello
>>
>> I have following UHD version on my server:
>>
>>
>>
>> *ad@bm-super11-intel:~/houshang$ uhd_config_info --version UHD
>> 4.7.0.0-0ubuntu1~jammy1 ad@bm-super11-intel:~/houshang$ ssh
>> root@10.10.0.100 <root@10.10.0.100>*
>>
>> And the following UHD version on my n310:
>>
>>
>>
>> *root@ni-n3xx-32000F1:~# uhd_config_info --version UHD
>> 4.7.0.0-0-ga5ed1872 root@ni-n3xx-32000F1:~# *
>>
>> They are the same and my n310 is updated with the following file:
>>
>>
>>
>> *ad@bm-super11-intel:~/houshang$ md5sum
>> /usr/share/uhd/images/usrp_n310_fpga_HG.bit
>> 532b338d6861268c05a4fd9837ca80e5
>>  /usr/share/uhd/images/usrp_n310_fpga_HG.bit
>> ad@bm-super11-intel:~/houshang$ *
>>
>> I am running srsRAN gNB on my server (*Commit 9d5dd742a*). A version of
>> srs of srsRAN that is compiled with *UHD 4.7.0.0.*
>>
>>
>> Here are the error messages I get:
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> *==== gNB started === Type <h> to view help Error: failed receiving
>> packet. RfnocError: OpTimeout: Control operation timed out waiting for ACK.
>> Late: 2805; Underflow: 2238; Overflow: 0; Error: failed receiving packet.
>> RfnocError: OpTimeout: Control operation timed out waiting for ACK. Error:
>> failed receiving packet. RfnocError: OpTimeout: Control operation timed out
>> waiting for ACK. Late: 0; Underflow: 5; Overflow: 0; Error: failed
>> receiving packet. RfnocError: OpTimeout: Control operation timed out
>> waiting for ACK. Error: failed receiving packet. RfnocError: OpTimeout:
>> Control operation timed out waiting for ACK. Late: 0; Underflow: 4;
>> Overflow: 0; Error: failed receiving packet. RfnocError: OpTimeout: Control
>> operation timed out waiting for ACK. Error: failed receiving packet.
>> RfnocError: OpTimeout: Control operation timed out waiting for ACK. Late:
>> 0; Underflow: 4; Overflow: 0; Error: failed receiving packet. RfnocError:
>> OpTimeout: Control operation timed out waiting for ACK. Error: failed
>> receiving packet. RfnocError: OpTimeout: Control operation timed out
>> waiting for ACK. Late: 0; Underflow: 4; Overflow: 0; Error: failed
>> receiving packet. RfnocError: OpTimeout: Control operation timed out
>> waiting for ACK.*
>>
>>
>> And obviously it is not working with this amount of errors.
>>
>> Can anyone help me with this please? Is it a bug in the UHD version? Or
>> is there something I am missing here?
>>
>> Thanks
>> Houshang
>>
>> Try "the basics" first.
>>
>> What does:
>>
>> uhd_usrp_probe --args "type=n3xx,product=n310,addr=192.168.10.2"
>>
>>
>> Produce (you might have to change the addr to whatever the address is of
>> your N310).
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>
> --
>
> *Houshang Azizi*
>
> *Test Engineer*
> [image: logo] <https://www.accelleran.com/>
>
> *(32) 492195241*
>
> *houshang.azizi@accelleran.com <Email@accelleran.com>*
>
>
>
> *www.accelleran.com* <http://www.accelleran.com/>
>
> [image: linkedin icon] <https://www.linkedin.com/company/accelleran>    [image:
> twitter icon] <https://twitter.com/accelleran>    [image: youtube icon]
> <https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=1>
>
>
>
>

-- 

*Houshang Azizi*

*Test Engineer*

[image: logo] <https://www.accelleran.com/>

*(32) 492195241*

*houshang.azizi@accelleran.com <Email@accelleran.com>*



*www.accelleran.com* <http://www.accelleran.com/>

[image: linkedin icon] <https://www.linkedin.com/company/accelleran>    [image:
twitter icon] <https://twitter.com/accelleran>    [image: youtube icon]
<https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=1>

--0000000000002fb82e0627d36588
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Marcus</div><div>I ran the benchmark command on bo=
th ip of the n310 and attached you can find the printout.<br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, =
26 Nov 2024 at 17:22, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@g=
mail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 26/11/2024 11:10, Houshang wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Many thanks for prompt reply Marcus! Please find
        attached the printout for that probe command you asked for.<br>
      </div>
    </blockquote>
    OK, so the next thing to do is to test your network capacity between
    your host computer and the N310:<br>
    <br>
    benchmark_rate --args
    &quot;type=3Dn3xx,product=3Dn310,addr=3D10.10.0.100,master_clock_rate=
=3D125e6&quot;
    --rx_rate 25e6 --tx_rate 25e6<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 26 Nov 2024 at 16:59,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 26/11/2024 10:18, Houshang wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>Hello</div>
                <div><br>
                </div>
                <div>I have following UHD version on my server:</div>
                <br>
                <i><span style=3D"background-color:rgb(238,238,238)">ad@bm-=
super11-intel:~/houshang$
                    uhd_config_info --version<br>
                    UHD 4.7.0.0-0ubuntu1~jammy1<br>
                    ad@bm-super11-intel:~/houshang$ ssh <a href=3D"mailto:r=
oot@10.10.0.100" target=3D"_blank">root@10.10.0.100</a></span></i><br>
                <br>
                And the following UHD version on my n310:<br>
                <br>
                <i><span style=3D"background-color:rgb(238,238,238)">root@n=
i-n3xx-32000F1:~#
                    uhd_config_info --version<br>
                    UHD 4.7.0.0-0-ga5ed1872<br>
                    root@ni-n3xx-32000F1:~# </span></i><br>
                <br>
                <div>They are the same and my n310 is updated with the
                  following file:</div>
                <div><br>
                </div>
                <i><span style=3D"background-color:rgb(238,238,238)">ad@bm-=
super11-intel:~/houshang$
                    md5sum /usr/share/uhd/images/usrp_n310_fpga_HG.bit<br>
                    532b338d6861268c05a4fd9837ca80e5
                    =C2=A0/usr/share/uhd/images/usrp_n310_fpga_HG.bit<br>
                    ad@bm-super11-intel:~/houshang$ </span></i><br>
                <br>
                I am running srsRAN gNB on my server (<i><span style=3D"bac=
kground-color:rgb(238,238,238)">Commit
                    9d5dd742a</span></i>). A version of srs of srsRAN
                that is compiled with <i><span style=3D"background-color:rg=
b(238,238,238)">UHD
                    4.7.0.0.</span></i><br>
                <br>
                <br>
                Here are the error messages I get:<br>
                <br>
                <i><span style=3D"background-color:rgb(238,238,238)">=3D=3D=
=3D=3D
                    gNB started =3D=3D=3D<br>
                    Type &lt;h&gt; to view help<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.<br>
                    Late: 2805; Underflow: 2238; Overflow: 0;<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.<br>
                    Late: 0; Underflow: 5; Overflow: 0;<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.<br>
                    Late: 0; Underflow: 4; Overflow: 0;<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.<br>
                    Late: 0; Underflow: 4; Overflow: 0;<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.<br>
                    Late: 0; Underflow: 4; Overflow: 0;<br>
                    Error: failed receiving packet. RfnocError:
                    OpTimeout: Control operation timed out waiting for
                    ACK.</span></i><br>
                <br>
                <br>
                And obviously it is not working with this amount of
                errors.<br>
                <br>
                Can anyone help me with this please? Is it a bug in the
                UHD version? Or is there something I am missing here?<br>
                <br>
                Thanks<br>
                Houshang<br>
              </div>
              <br>
            </blockquote>
            Try &quot;the basics&quot; first.<br>
            <br>
            What does:<br>
            <br>
            uhd_usrp_probe --args
            &quot;type=3Dn3xx,product=3Dn310,addr=3D192.168.10.2&quot;<br>
            <br>
            <br>
            Produce (you might have to change the addr to whatever the
            address is of your N310).<br>
            <br>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
      <div><br clear=3D"all">
      </div>
      <br>
      <span class=3D"gmail_signature_prefix">-- </span><br>
      <div dir=3D"ltr" class=3D"gmail_signature">
        <div dir=3D"ltr">
          <div style=3D"text-align:left">
            <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;f=
ont-size:12pt;font-family:Aptos,sans-serif"><b><span style=3D"font-size:11p=
t;font-family:Arial,sans-serif;color:rgb(0,173,238)">Houshang
                  Azizi</span></b><span style=3D"font-size:11pt;font-family=
:Arial,sans-serif"></span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;f=
ont-size:12pt;font-family:Aptos,sans-serif"><b><span style=3D"font-size:11p=
t;font-family:Arial,sans-serif;color:rgb(246,146,30)">Test
                  Engineer</span></b></p>
          </div>
          <a href=3D"https://www.accelleran.com/" rel=3D"noopener" style=3D=
"color:rgb(51,122,183);background-color:transparent" target=3D"_blank"><fon=
t size=3D"2"><img alt=3D"logo" src=3D"https://accelleran.com/wp-content/upl=
oads/2024/04/Accelleran_NewLogo_NoBaseline.png" style=3D"border: 0px; verti=
cal-align: middle; width: 143px; height: auto;" width=3D"143" border=3D"0">=
</font></a>
          <div style=3D"text-align:left">
            <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;f=
ont-size:12pt;font-family:Aptos,sans-serif"><b><span style=3D"font-size:10p=
t;font-family:Arial,sans-serif;color:black">(32)
                  492195241</span></b><span style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif"></span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;f=
ont-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-size:10pt;f=
ont-family:Arial,sans-serif"><b><span style=3D"color:black"><a href=3D"mail=
to:Email@accelleran.com" target=3D"_blank">houshang.azizi@accelleran.com</a=
></span></b></span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;f=
ont-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-size:10pt;f=
ont-family:Arial,sans-serif">=C2=A0</span></p>
            <p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;f=
ont-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-size:10pt;f=
ont-family:Arial,sans-serif"><a href=3D"http://www.accelleran.com/" style=
=3D"color:rgb(17,85,204)" target=3D"_blank"><b><span style=3D"color:rgb(246=
,146,30)">www.accelleran.com</span></b></a></span></p>
          </div>
          <p style=3D"text-align:left;margin:20px 0px"><a href=3D"https://w=
ww.linkedin.com/company/accelleran" rel=3D"noopener" style=3D"color:rgb(51,=
122,183);background-color:transparent" target=3D"_blank"><img alt=3D"linked=
in icon" src=3D"https://www.mail-signatures.com/signature-generator/img/tem=
plates/simple-and-light/ln.png" style=3D"border: 0px; vertical-align: middl=
e; height: 15px; width: 15px;" width=3D"15" border=3D"0"></a>=C2=A0=C2=A0=
=C2=A0=C2=A0<a href=3D"https://twitter.com/accelleran" rel=3D"noopener" sty=
le=3D"color:rgb(51,122,183);background-color:transparent" target=3D"_blank"=
><img alt=3D"twitter icon" src=3D"https://www.mail-signatures.com/signature=
-generator/img/templates/simple-and-light/tt.png" style=3D"border: 0px; ver=
tical-align: middle; height: 15px; width: 15px;" width=3D"15" border=3D"0">=
</a>=C2=A0=C2=A0=C2=A0=C2=A0<a href=3D"https://www.youtube.com/channel/UCrA=
EtqWp21cibZgSFVIEx2g?themeRefresh=3D1" rel=3D"noopener" style=3D"color:rgb(=
51,122,183);background-color:transparent" target=3D"_blank"><img alt=3D"you=
tube icon" src=3D"https://www.mail-signatures.com/signature-generator/img/t=
emplates/simple-and-light/yt.png" style=3D"border: 0px; vertical-align: mid=
dle; height: 15px; width: 15px;" width=3D"15" border=3D"0"></a>=C2=A0=C2=A0=
=C2=A0 <br>
          </p>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div style=3D"text-align:left"><p class=3D"MsoNormal" style=
=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,sans-ser=
if"><b><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb=
(0,173,238)">Houshang Azizi</span></b><span style=3D"font-size:11pt;font-fa=
mily:Arial,sans-serif"></span></p><p class=3D"MsoNormal" style=3D"margin:0c=
m;line-height:normal;font-size:12pt;font-family:Aptos,sans-serif"><b><span =
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(246,146,30)"=
>Test Engineer</span></b></p></div><p></p><a href=3D"https://www.accelleran=
.com/" rel=3D"noopener" style=3D"color:rgb(51,122,183);background-color:tra=
nsparent" target=3D"_blank"><font size=3D"2"><img border=3D"0" alt=3D"logo"=
 width=3D"143" src=3D"https://accelleran.com/wp-content/uploads/2024/04/Acc=
elleran_NewLogo_NoBaseline.png" style=3D"border: 0px; vertical-align: middl=
e; width: 143px; height: auto;"></font></a><div style=3D"text-align:left"><=
p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;font-size:12pt=
;font-family:Aptos,sans-serif"><b><span style=3D"font-size:10pt;font-family=
:Arial,sans-serif;color:black">(32) 492195241</span></b><span style=3D"font=
-size:10pt;font-family:Arial,sans-serif"></span></p><p class=3D"MsoNormal" =
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,san=
s-serif"><span style=3D"font-size:10pt;font-family:Arial,sans-serif"><b><sp=
an style=3D"color:black"><a href=3D"mailto:Email@accelleran.com" target=3D"=
_blank">houshang.azizi@accelleran.com</a></span></b></span></p><p class=3D"=
MsoNormal" style=3D"margin:0cm;line-height:normal;font-size:12pt;font-famil=
y:Aptos,sans-serif"><span style=3D"font-size:10pt;font-family:Arial,sans-se=
rif">=C2=A0</span></p><p class=3D"MsoNormal" style=3D"margin:0cm;line-heigh=
t:normal;font-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-s=
ize:10pt;font-family:Arial,sans-serif"><a href=3D"http://www.accelleran.com=
/" style=3D"color:rgb(17,85,204)" target=3D"_blank"><b><span style=3D"color=
:rgb(246,146,30)">www.accelleran.com</span></b></a></span></p></div><p styl=
e=3D"text-align:left;margin:20px 0px"><a href=3D"https://www.linkedin.com/c=
ompany/accelleran" rel=3D"noopener" style=3D"color:rgb(51,122,183);backgrou=
nd-color:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" alt=
=3D"linkedin icon" src=3D"https://www.mail-signatures.com/signature-generat=
or/img/templates/simple-and-light/ln.png" style=3D"border: 0px; vertical-al=
ign: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0=C2=A0<a hre=
f=3D"https://twitter.com/accelleran" rel=3D"noopener" style=3D"color:rgb(51=
,122,183);background-color:transparent" target=3D"_blank"><img border=3D"0"=
 width=3D"15" alt=3D"twitter icon" src=3D"https://www.mail-signatures.com/s=
ignature-generator/img/templates/simple-and-light/tt.png" style=3D"border: =
0px; vertical-align: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=
=C2=A0=C2=A0<a href=3D"https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVI=
Ex2g?themeRefresh=3D1" rel=3D"noopener" style=3D"color:rgb(51,122,183);back=
ground-color:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" =
alt=3D"youtube icon" src=3D"https://www.mail-signatures.com/signature-gener=
ator/img/templates/simple-and-light/yt.png" style=3D"border: 0px; vertical-=
align: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0 <br></p><=
/div></div>

--0000000000002fb82e0627d36588--

--0000000000002fb8320627d3658a
Content-Type: text/plain; charset="US-ASCII"; name="benchmark_rate_0.txt"
Content-Disposition: attachment; filename="benchmark_rate_0.txt"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_m3yodbyo0
Content-ID: <f_m3yodbyo0>

W0lORk9dIFtNUE0uUGVyaXBoTWFuYWdlcl0gaW5pdCgpIGNhbGxlZCB3aXRoIGRldmljZSBhcmdz
IGBmcGdhPUhHLG1hc3Rlcl9jbG9ja19yYXRlPTEyNWU2LG1nbXRfYWRkcj0xMC4xMC4wLjEwMCxu
YW1lPW5pLW4zeHgtMzIwMDBGMSxwcm9kdWN0PW4zMTAsY2xvY2tfc291cmNlPWludGVybmFsLHRp
bWVfc291cmNlPWludGVybmFsJy4KVXNpbmcgRGV2aWNlOiBTaW5nbGUgVVNSUDoKICBEZXZpY2U6
IE4zMDAtU2VyaWVzIERldmljZQogIE1ib2FyZCAwOiBuMzEwCiAgUlggQ2hhbm5lbDogMAogICAg
UlggRFNQOiAwCiAgICBSWCBEYm9hcmQ6IEEKICAgIFJYIFN1YmRldjogTWFnbmVzaXVtCiAgUlgg
Q2hhbm5lbDogMQogICAgUlggRFNQOiAxCiAgICBSWCBEYm9hcmQ6IEEKICAgIFJYIFN1YmRldjog
TWFnbmVzaXVtCiAgUlggQ2hhbm5lbDogMgogICAgUlggRFNQOiAyCiAgICBSWCBEYm9hcmQ6IEIK
ICAgIFJYIFN1YmRldjogTWFnbmVzaXVtCiAgUlggQ2hhbm5lbDogMwogICAgUlggRFNQOiAzCiAg
ICBSWCBEYm9hcmQ6IEIKICAgIFJYIFN1YmRldjogTWFnbmVzaXVtCiAgVFggQ2hhbm5lbDogMAog
ICAgVFggRFNQOiAwCiAgICBUWCBEYm9hcmQ6IEEKICAgIFRYIFN1YmRldjogTWFnbmVzaXVtCiAg
VFggQ2hhbm5lbDogMQogICAgVFggRFNQOiAxCiAgICBUWCBEYm9hcmQ6IEEKICAgIFRYIFN1YmRl
djogTWFnbmVzaXVtCiAgVFggQ2hhbm5lbDogMgogICAgVFggRFNQOiAyCiAgICBUWCBEYm9hcmQ6
IEIKICAgIFRYIFN1YmRldjogTWFnbmVzaXVtCiAgVFggQ2hhbm5lbDogMwogICAgVFggRFNQOiAz
CiAgICBUWCBEYm9hcmQ6IEIKICAgIFRYIFN1YmRldjogTWFnbmVzaXVtCgpbMDA6MDA6MDIuNDc2
OTA5Njc2XSBTZXR0aW5nIGRldmljZSB0aW1lc3RhbXAgdG8gMC4uLgpbV0FSTklOR10gWzAvRERD
IzBdIFRoZSByZXF1ZXN0ZWQgZGVjaW1hdGlvbiBpcyBvZGQ7IHRoZSB1c2VyIHNob3VsZCBleHBl
Y3QgcGFzc2JhbmQgQ0lDIHJvbGxvZmYuClNlbGVjdCBhbiBldmVuIGRlY2ltYXRpb24gdG8gZW5z
dXJlIHRoYXQgYSBoYWxmYmFuZCBmaWx0ZXIgaXMgZW5hYmxlZC4KRGVjaW1hdGlvbnMgZmFjdG9y
YWJsZSBieSA0IHdpbGwgZW5hYmxlIDIgaGFsZmJhbmRzLCB0aG9zZSBmYWN0b3JhYmxlIGJ5IDgg
d2lsbCBlbmFibGUgMyBoYWxmYmFuZHMuCmRlY2ltYXRpb24gPSBkc3BfcmF0ZS9zYW1wX3JhdGUg
LT4gNQpbV0FSTklOR10gWzAvRERDIzBdIFRoZSByZXF1ZXN0ZWQgZGVjaW1hdGlvbiBpcyBvZGQ7
IHRoZSB1c2VyIHNob3VsZCBleHBlY3QgcGFzc2JhbmQgQ0lDIHJvbGxvZmYuClNlbGVjdCBhbiBl
dmVuIGRlY2ltYXRpb24gdG8gZW5zdXJlIHRoYXQgYSBoYWxmYmFuZCBmaWx0ZXIgaXMgZW5hYmxl
ZC4KRGVjaW1hdGlvbnMgZmFjdG9yYWJsZSBieSA0IHdpbGwgZW5hYmxlIDIgaGFsZmJhbmRzLCB0
aG9zZSBmYWN0b3JhYmxlIGJ5IDggd2lsbCBlbmFibGUgMyBoYWxmYmFuZHMuCmRlY2ltYXRpb24g
PSBkc3BfcmF0ZS9zYW1wX3JhdGUgLT4gNQpbV0FSTklOR10gWzAvRERDIzBdIFRoZSByZXF1ZXN0
ZWQgZGVjaW1hdGlvbiBpcyBvZGQ7IHRoZSB1c2VyIHNob3VsZCBleHBlY3QgcGFzc2JhbmQgQ0lD
IHJvbGxvZmYuClNlbGVjdCBhbiBldmVuIGRlY2ltYXRpb24gdG8gZW5zdXJlIHRoYXQgYSBoYWxm
YmFuZCBmaWx0ZXIgaXMgZW5hYmxlZC4KRGVjaW1hdGlvbnMgZmFjdG9yYWJsZSBieSA0IHdpbGwg
ZW5hYmxlIDIgaGFsZmJhbmRzLCB0aG9zZSBmYWN0b3JhYmxlIGJ5IDggd2lsbCBlbmFibGUgMyBo
YWxmYmFuZHMuCmRlY2ltYXRpb24gPSBkc3BfcmF0ZS9zYW1wX3JhdGUgLT4gNQpbV0FSTklOR10g
WzAvRERDIzBdIFRoZSByZXF1ZXN0ZWQgZGVjaW1hdGlvbiBpcyBvZGQ7IHRoZSB1c2VyIHNob3Vs
ZCBleHBlY3QgcGFzc2JhbmQgQ0lDIHJvbGxvZmYuClNlbGVjdCBhbiBldmVuIGRlY2ltYXRpb24g
dG8gZW5zdXJlIHRoYXQgYSBoYWxmYmFuZCBmaWx0ZXIgaXMgZW5hYmxlZC4KRGVjaW1hdGlvbnMg
ZmFjdG9yYWJsZSBieSA0IHdpbGwgZW5hYmxlIDIgaGFsZmJhbmRzLCB0aG9zZSBmYWN0b3JhYmxl
IGJ5IDggd2lsbCBlbmFibGUgMyBoYWxmYmFuZHMuCmRlY2ltYXRpb24gPSBkc3BfcmF0ZS9zYW1w
X3JhdGUgLT4gNQpbV0FSTklOR10gWzAvRERDIzFdIFRoZSByZXF1ZXN0ZWQgZGVjaW1hdGlvbiBp
cyBvZGQ7IHRoZSB1c2VyIHNob3VsZCBleHBlY3QgcGFzc2JhbmQgQ0lDIHJvbGxvZmYuClNlbGVj
dCBhbiBldmVuIGRlY2ltYXRpb24gdG8gZW5zdXJlIHRoYXQgYSBoYWxmYmFuZCBmaWx0ZXIgaXMg
ZW5hYmxlZC4KRGVjaW1hdGlvbnMgZmFjdG9yYWJsZSBieSA0IHdpbGwgZW5hYmxlIDIgaGFsZmJh
bmRzLCB0aG9zZSBmYWN0b3JhYmxlIGJ5IDggd2lsbCBlbmFibGUgMyBoYWxmYmFuZHMuCmRlY2lt
YXRpb24gPSBkc3BfcmF0ZS9zYW1wX3JhdGUgLT4gNQpbV0FSTklOR10gWzAvRERDIzFdIFRoZSBy
ZXF1ZXN0ZWQgZGVjaW1hdGlvbiBpcyBvZGQ7IHRoZSB1c2VyIHNob3VsZCBleHBlY3QgcGFzc2Jh
bmQgQ0lDIHJvbGxvZmYuClNlbGVjdCBhbiBldmVuIGRlY2ltYXRpb24gdG8gZW5zdXJlIHRoYXQg
YSBoYWxmYmFuZCBmaWx0ZXIgaXMgZW5hYmxlZC4KRGVjaW1hdGlvbnMgZmFjdG9yYWJsZSBieSA0
IHdpbGwgZW5hYmxlIDIgaGFsZmJhbmRzLCB0aG9zZSBmYWN0b3JhYmxlIGJ5IDggd2lsbCBlbmFi
bGUgMyBoYWxmYmFuZHMuCmRlY2ltYXRpb24gPSBkc3BfcmF0ZS9zYW1wX3JhdGUgLT4gNQpbV0FS
TklOR10gWzAvRERDIzFdIFRoZSByZXF1ZXN0ZWQgZGVjaW1hdGlvbiBpcyBvZGQ7IHRoZSB1c2Vy
IHNob3VsZCBleHBlY3QgcGFzc2JhbmQgQ0lDIHJvbGxvZmYuClNlbGVjdCBhbiBldmVuIGRlY2lt
YXRpb24gdG8gZW5zdXJlIHRoYXQgYSBoYWxmYmFuZCBmaWx0ZXIgaXMgZW5hYmxlZC4KRGVjaW1h
dGlvbnMgZmFjdG9yYWJsZSBieSA0IHdpbGwgZW5hYmxlIDIgaGFsZmJhbmRzLCB0aG9zZSBmYWN0
b3JhYmxlIGJ5IDggd2lsbCBlbmFibGUgMyBoYWxmYmFuZHMuCmRlY2ltYXRpb24gPSBkc3BfcmF0
ZS9zYW1wX3JhdGUgLT4gNQpbV0FSTklOR10gWzAvRERDIzFdIFRoZSByZXF1ZXN0ZWQgZGVjaW1h
dGlvbiBpcyBvZGQ7IHRoZSB1c2VyIHNob3VsZCBleHBlY3QgcGFzc2JhbmQgQ0lDIHJvbGxvZmYu
ClNlbGVjdCBhbiBldmVuIGRlY2ltYXRpb24gdG8gZW5zdXJlIHRoYXQgYSBoYWxmYmFuZCBmaWx0
ZXIgaXMgZW5hYmxlZC4KRGVjaW1hdGlvbnMgZmFjdG9yYWJsZSBieSA0IHdpbGwgZW5hYmxlIDIg
aGFsZmJhbmRzLCB0aG9zZSBmYWN0b3JhYmxlIGJ5IDggd2lsbCBlbmFibGUgMyBoYWxmYmFuZHMu
CmRlY2ltYXRpb24gPSBkc3BfcmF0ZS9zYW1wX3JhdGUgLT4gNQpbV0FSTklOR10gWzAvRFVDIzBd
IFRoZSByZXF1ZXN0ZWQgaW50ZXJwb2xhdGlvbiBpcyBvZGQ7IHRoZSB1c2VyIHNob3VsZCBleHBl
Y3QgcGFzc2JhbmQgQ0lDIHJvbGxvZmYuClNlbGVjdCBhbiBldmVuIGludGVycG9sYXRpb24gdG8g
ZW5zdXJlIHRoYXQgYSBoYWxmYmFuZCBmaWx0ZXIgaXMgZW5hYmxlZC4KCltXQVJOSU5HXSBbMC9E
VUMjMF0gVGhlIHJlcXVlc3RlZCBpbnRlcnBvbGF0aW9uIGlzIG9kZDsgdGhlIHVzZXIgc2hvdWxk
IGV4cGVjdCBwYXNzYmFuZCBDSUMgcm9sbG9mZi4KU2VsZWN0IGFuIGV2ZW4gaW50ZXJwb2xhdGlv
biB0byBlbnN1cmUgdGhhdCBhIGhhbGZiYW5kIGZpbHRlciBpcyBlbmFibGVkLgoKW1dBUk5JTkdd
IFswL0RVQyMxXSBUaGUgcmVxdWVzdGVkIGludGVycG9sYXRpb24gaXMgb2RkOyB0aGUgdXNlciBz
aG91bGQgZXhwZWN0IHBhc3NiYW5kIENJQyByb2xsb2ZmLgpTZWxlY3QgYW4gZXZlbiBpbnRlcnBv
bGF0aW9uIHRvIGVuc3VyZSB0aGF0IGEgaGFsZmJhbmQgZmlsdGVyIGlzIGVuYWJsZWQuCgpbV0FS
TklOR10gWzAvRFVDIzFdIFRoZSByZXF1ZXN0ZWQgaW50ZXJwb2xhdGlvbiBpcyBvZGQ7IHRoZSB1
c2VyIHNob3VsZCBleHBlY3QgcGFzc2JhbmQgQ0lDIHJvbGxvZmYuClNlbGVjdCBhbiBldmVuIGlu
dGVycG9sYXRpb24gdG8gZW5zdXJlIHRoYXQgYSBoYWxmYmFuZCBmaWx0ZXIgaXMgZW5hYmxlZC4K
ClNldHRpbmcgVFggc3BwIHRvIDM2NApbMDA6MDA6MDIuNDg5NjYwNjI5XSBUZXN0aW5nIHJlY2Vp
dmUgcmF0ZSAyNS4wMDAwMDAgTXNwcyBvbiAxIGNoYW5uZWxzClswMDowMDowMi40OTUzMDIzNDFd
IFRlc3RpbmcgdHJhbnNtaXQgcmF0ZSAyNS4wMDAwMDAgTXNwcyBvbiAxIGNoYW5uZWxzClVPVVVV
VVVVVVVVVVVVVVVVdGVybWluYXRlIGNhbGxlZCBhZnRlciB0aHJvd2luZyBhbiBpbnN0YW5jZSBv
ZiAndWhkOjpvcF90aW1lb3V0JwogIHdoYXQoKTogIFJmbm9jRXJyb3I6IE9wVGltZW91dDogQ29u
dHJvbCBvcGVyYXRpb24gdGltZWQgb3V0IHdhaXRpbmcgZm9yIEFDSwpBYm9ydGVkCmFkQGJtLXN1
cGVyMTEtaW50ZWw6fi9ob3VzaGFuZyQgCg==
--0000000000002fb8320627d3658a
Content-Type: text/plain; charset="US-ASCII"; name="benchmark_rate_2.txt"
Content-Disposition: attachment; filename="benchmark_rate_2.txt"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_m3yodbyw1
Content-ID: <f_m3yodbyw1>

YWRAYm0tc3VwZXIxMS1pbnRlbDp+L2hvdXNoYW5nJCBzdWRvIC91c3IvbGliL3VoZC9leGFtcGxl
cy9iZW5jaG1hcmtfcmF0ZSAtLWFyZ3MgInR5cGU9bjN4eCxwcm9kdWN0PW4zMTAsYWRkcj0xMC4x
MC4yLjEwMCxtYXN0ZXJfY2xvY2tfcmF0ZT0xMjVlNiIgLS1yeF9yYXRlIDI1ZTYgLS10eF9yYXRl
IDI1ZTYgCgpbSU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiAxMS40LjA7IEJvb3N0
XzEwNzQwMDsgVUhEXzQuNy4wLjAtMHVidW50dTF+amFtbXkxClswMDowMDowMC4wMDAwNzVdIENy
ZWF0aW5nIHRoZSB1c3JwIGRldmljZSB3aXRoOiB0eXBlPW4zeHgscHJvZHVjdD1uMzEwLGFkZHI9
MTAuMTAuMi4xMDAsbWFzdGVyX2Nsb2NrX3JhdGU9MTI1ZTYuLi4KW0lORk9dIFtNUE1EXSBJbml0
aWFsaXppbmcgMSBkZXZpY2UocykgaW4gcGFyYWxsZWwgd2l0aCBhcmdzOiBtZ210X2FkZHI9MTAu
MTAuMi4xMDAsdHlwZT1uM3h4LHByb2R1Y3Q9bjMxMCxzZXJpYWw9MzIwMDBGMSxuYW1lPW5pLW4z
eHgtMzIwMDBGMSxmcGdhPUhHLGNsYWltZWQ9RmFsc2UsYWRkcj0xMC4xMC4yLjEwMCxtYXN0ZXJf
Y2xvY2tfcmF0ZT0xMjVlNgpbV0FSTklOR10gW01QTS5SUENTZXJ2ZXJdIEEgdGltZW91dCBldmVu
dCBvY2N1cmVkIQpbSU5GT10gW01QTS5QZXJpcGhNYW5hZ2VyXSBpbml0KCkgY2FsbGVkIHdpdGgg
ZGV2aWNlIGFyZ3MgYGZwZ2E9SEcsbWFzdGVyX2Nsb2NrX3JhdGU9MTI1ZTYsbWdtdF9hZGRyPTEw
LjEwLjIuMTAwLG5hbWU9bmktbjN4eC0zMjAwMEYxLHByb2R1Y3Q9bjMxMCxjbG9ja19zb3VyY2U9
aW50ZXJuYWwsdGltZV9zb3VyY2U9aW50ZXJuYWwnLgpVc2luZyBEZXZpY2U6IFNpbmdsZSBVU1JQ
OgogIERldmljZTogTjMwMC1TZXJpZXMgRGV2aWNlCiAgTWJvYXJkIDA6IG4zMTAKICBSWCBDaGFu
bmVsOiAwCiAgICBSWCBEU1A6IDAKICAgIFJYIERib2FyZDogQQogICAgUlggU3ViZGV2OiBNYWdu
ZXNpdW0KICBSWCBDaGFubmVsOiAxCiAgICBSWCBEU1A6IDEKICAgIFJYIERib2FyZDogQQogICAg
UlggU3ViZGV2OiBNYWduZXNpdW0KICBSWCBDaGFubmVsOiAyCiAgICBSWCBEU1A6IDIKICAgIFJY
IERib2FyZDogQgogICAgUlggU3ViZGV2OiBNYWduZXNpdW0KICBSWCBDaGFubmVsOiAzCiAgICBS
WCBEU1A6IDMKICAgIFJYIERib2FyZDogQgogICAgUlggU3ViZGV2OiBNYWduZXNpdW0KICBUWCBD
aGFubmVsOiAwCiAgICBUWCBEU1A6IDAKICAgIFRYIERib2FyZDogQQogICAgVFggU3ViZGV2OiBN
YWduZXNpdW0KICBUWCBDaGFubmVsOiAxCiAgICBUWCBEU1A6IDEKICAgIFRYIERib2FyZDogQQog
ICAgVFggU3ViZGV2OiBNYWduZXNpdW0KICBUWCBDaGFubmVsOiAyCiAgICBUWCBEU1A6IDIKICAg
IFRYIERib2FyZDogQgogICAgVFggU3ViZGV2OiBNYWduZXNpdW0KICBUWCBDaGFubmVsOiAzCiAg
ICBUWCBEU1A6IDMKICAgIFRYIERib2FyZDogQgogICAgVFggU3ViZGV2OiBNYWduZXNpdW0KClsw
MDowMDowMi4zODQ5MDcyMThdIFNldHRpbmcgZGV2aWNlIHRpbWVzdGFtcCB0byAwLi4uCltXQVJO
SU5HXSBbMC9EREMjMF0gVGhlIHJlcXVlc3RlZCBkZWNpbWF0aW9uIGlzIG9kZDsgdGhlIHVzZXIg
c2hvdWxkIGV4cGVjdCBwYXNzYmFuZCBDSUMgcm9sbG9mZi4KU2VsZWN0IGFuIGV2ZW4gZGVjaW1h
dGlvbiB0byBlbnN1cmUgdGhhdCBhIGhhbGZiYW5kIGZpbHRlciBpcyBlbmFibGVkLgpEZWNpbWF0
aW9ucyBmYWN0b3JhYmxlIGJ5IDQgd2lsbCBlbmFibGUgMiBoYWxmYmFuZHMsIHRob3NlIGZhY3Rv
cmFibGUgYnkgOCB3aWxsIGVuYWJsZSAzIGhhbGZiYW5kcy4KZGVjaW1hdGlvbiA9IGRzcF9yYXRl
L3NhbXBfcmF0ZSAtPiA1CltXQVJOSU5HXSBbMC9EREMjMF0gVGhlIHJlcXVlc3RlZCBkZWNpbWF0
aW9uIGlzIG9kZDsgdGhlIHVzZXIgc2hvdWxkIGV4cGVjdCBwYXNzYmFuZCBDSUMgcm9sbG9mZi4K
U2VsZWN0IGFuIGV2ZW4gZGVjaW1hdGlvbiB0byBlbnN1cmUgdGhhdCBhIGhhbGZiYW5kIGZpbHRl
ciBpcyBlbmFibGVkLgpEZWNpbWF0aW9ucyBmYWN0b3JhYmxlIGJ5IDQgd2lsbCBlbmFibGUgMiBo
YWxmYmFuZHMsIHRob3NlIGZhY3RvcmFibGUgYnkgOCB3aWxsIGVuYWJsZSAzIGhhbGZiYW5kcy4K
ZGVjaW1hdGlvbiA9IGRzcF9yYXRlL3NhbXBfcmF0ZSAtPiA1CltXQVJOSU5HXSBbMC9EREMjMF0g
VGhlIHJlcXVlc3RlZCBkZWNpbWF0aW9uIGlzIG9kZDsgdGhlIHVzZXIgc2hvdWxkIGV4cGVjdCBw
YXNzYmFuZCBDSUMgcm9sbG9mZi4KU2VsZWN0IGFuIGV2ZW4gZGVjaW1hdGlvbiB0byBlbnN1cmUg
dGhhdCBhIGhhbGZiYW5kIGZpbHRlciBpcyBlbmFibGVkLgpEZWNpbWF0aW9ucyBmYWN0b3JhYmxl
IGJ5IDQgd2lsbCBlbmFibGUgMiBoYWxmYmFuZHMsIHRob3NlIGZhY3RvcmFibGUgYnkgOCB3aWxs
IGVuYWJsZSAzIGhhbGZiYW5kcy4KZGVjaW1hdGlvbiA9IGRzcF9yYXRlL3NhbXBfcmF0ZSAtPiA1
CltXQVJOSU5HXSBbMC9EREMjMF0gVGhlIHJlcXVlc3RlZCBkZWNpbWF0aW9uIGlzIG9kZDsgdGhl
IHVzZXIgc2hvdWxkIGV4cGVjdCBwYXNzYmFuZCBDSUMgcm9sbG9mZi4KU2VsZWN0IGFuIGV2ZW4g
ZGVjaW1hdGlvbiB0byBlbnN1cmUgdGhhdCBhIGhhbGZiYW5kIGZpbHRlciBpcyBlbmFibGVkLgpE
ZWNpbWF0aW9ucyBmYWN0b3JhYmxlIGJ5IDQgd2lsbCBlbmFibGUgMiBoYWxmYmFuZHMsIHRob3Nl
IGZhY3RvcmFibGUgYnkgOCB3aWxsIGVuYWJsZSAzIGhhbGZiYW5kcy4KZGVjaW1hdGlvbiA9IGRz
cF9yYXRlL3NhbXBfcmF0ZSAtPiA1CltXQVJOSU5HXSBbMC9EREMjMV0gVGhlIHJlcXVlc3RlZCBk
ZWNpbWF0aW9uIGlzIG9kZDsgdGhlIHVzZXIgc2hvdWxkIGV4cGVjdCBwYXNzYmFuZCBDSUMgcm9s
bG9mZi4KU2VsZWN0IGFuIGV2ZW4gZGVjaW1hdGlvbiB0byBlbnN1cmUgdGhhdCBhIGhhbGZiYW5k
IGZpbHRlciBpcyBlbmFibGVkLgpEZWNpbWF0aW9ucyBmYWN0b3JhYmxlIGJ5IDQgd2lsbCBlbmFi
bGUgMiBoYWxmYmFuZHMsIHRob3NlIGZhY3RvcmFibGUgYnkgOCB3aWxsIGVuYWJsZSAzIGhhbGZi
YW5kcy4KZGVjaW1hdGlvbiA9IGRzcF9yYXRlL3NhbXBfcmF0ZSAtPiA1CltXQVJOSU5HXSBbMC9E
REMjMV0gVGhlIHJlcXVlc3RlZCBkZWNpbWF0aW9uIGlzIG9kZDsgdGhlIHVzZXIgc2hvdWxkIGV4
cGVjdCBwYXNzYmFuZCBDSUMgcm9sbG9mZi4KU2VsZWN0IGFuIGV2ZW4gZGVjaW1hdGlvbiB0byBl
bnN1cmUgdGhhdCBhIGhhbGZiYW5kIGZpbHRlciBpcyBlbmFibGVkLgpEZWNpbWF0aW9ucyBmYWN0
b3JhYmxlIGJ5IDQgd2lsbCBlbmFibGUgMiBoYWxmYmFuZHMsIHRob3NlIGZhY3RvcmFibGUgYnkg
OCB3aWxsIGVuYWJsZSAzIGhhbGZiYW5kcy4KZGVjaW1hdGlvbiA9IGRzcF9yYXRlL3NhbXBfcmF0
ZSAtPiA1CltXQVJOSU5HXSBbMC9EREMjMV0gVGhlIHJlcXVlc3RlZCBkZWNpbWF0aW9uIGlzIG9k
ZDsgdGhlIHVzZXIgc2hvdWxkIGV4cGVjdCBwYXNzYmFuZCBDSUMgcm9sbG9mZi4KU2VsZWN0IGFu
IGV2ZW4gZGVjaW1hdGlvbiB0byBlbnN1cmUgdGhhdCBhIGhhbGZiYW5kIGZpbHRlciBpcyBlbmFi
bGVkLgpEZWNpbWF0aW9ucyBmYWN0b3JhYmxlIGJ5IDQgd2lsbCBlbmFibGUgMiBoYWxmYmFuZHMs
IHRob3NlIGZhY3RvcmFibGUgYnkgOCB3aWxsIGVuYWJsZSAzIGhhbGZiYW5kcy4KZGVjaW1hdGlv
biA9IGRzcF9yYXRlL3NhbXBfcmF0ZSAtPiA1CltXQVJOSU5HXSBbMC9EREMjMV0gVGhlIHJlcXVl
c3RlZCBkZWNpbWF0aW9uIGlzIG9kZDsgdGhlIHVzZXIgc2hvdWxkIGV4cGVjdCBwYXNzYmFuZCBD
SUMgcm9sbG9mZi4KU2VsZWN0IGFuIGV2ZW4gZGVjaW1hdGlvbiB0byBlbnN1cmUgdGhhdCBhIGhh
bGZiYW5kIGZpbHRlciBpcyBlbmFibGVkLgpEZWNpbWF0aW9ucyBmYWN0b3JhYmxlIGJ5IDQgd2ls
bCBlbmFibGUgMiBoYWxmYmFuZHMsIHRob3NlIGZhY3RvcmFibGUgYnkgOCB3aWxsIGVuYWJsZSAz
IGhhbGZiYW5kcy4KZGVjaW1hdGlvbiA9IGRzcF9yYXRlL3NhbXBfcmF0ZSAtPiA1CltXQVJOSU5H
XSBbMC9EVUMjMF0gVGhlIHJlcXVlc3RlZCBpbnRlcnBvbGF0aW9uIGlzIG9kZDsgdGhlIHVzZXIg
c2hvdWxkIGV4cGVjdCBwYXNzYmFuZCBDSUMgcm9sbG9mZi4KU2VsZWN0IGFuIGV2ZW4gaW50ZXJw
b2xhdGlvbiB0byBlbnN1cmUgdGhhdCBhIGhhbGZiYW5kIGZpbHRlciBpcyBlbmFibGVkLgoKW1dB
Uk5JTkddIFswL0RVQyMwXSBUaGUgcmVxdWVzdGVkIGludGVycG9sYXRpb24gaXMgb2RkOyB0aGUg
dXNlciBzaG91bGQgZXhwZWN0IHBhc3NiYW5kIENJQyByb2xsb2ZmLgpTZWxlY3QgYW4gZXZlbiBp
bnRlcnBvbGF0aW9uIHRvIGVuc3VyZSB0aGF0IGEgaGFsZmJhbmQgZmlsdGVyIGlzIGVuYWJsZWQu
CgpbV0FSTklOR10gWzAvRFVDIzFdIFRoZSByZXF1ZXN0ZWQgaW50ZXJwb2xhdGlvbiBpcyBvZGQ7
IHRoZSB1c2VyIHNob3VsZCBleHBlY3QgcGFzc2JhbmQgQ0lDIHJvbGxvZmYuClNlbGVjdCBhbiBl
dmVuIGludGVycG9sYXRpb24gdG8gZW5zdXJlIHRoYXQgYSBoYWxmYmFuZCBmaWx0ZXIgaXMgZW5h
YmxlZC4KCltXQVJOSU5HXSBbMC9EVUMjMV0gVGhlIHJlcXVlc3RlZCBpbnRlcnBvbGF0aW9uIGlz
IG9kZDsgdGhlIHVzZXIgc2hvdWxkIGV4cGVjdCBwYXNzYmFuZCBDSUMgcm9sbG9mZi4KU2VsZWN0
IGFuIGV2ZW4gaW50ZXJwb2xhdGlvbiB0byBlbnN1cmUgdGhhdCBhIGhhbGZiYW5kIGZpbHRlciBp
cyBlbmFibGVkLgoKU2V0dGluZyBUWCBzcHAgdG8gMjAwMApbMDA6MDA6MDIuMzkwNzgwOTg1XSBU
ZXN0aW5nIHJlY2VpdmUgcmF0ZSAyNS4wMDAwMDAgTXNwcyBvbiAxIGNoYW5uZWxzClswMDowMDow
Mi4zOTE0NzQ3MzJdIFRlc3RpbmcgdHJhbnNtaXQgcmF0ZSAyNS4wMDAwMDAgTXNwcyBvbiAxIGNo
YW5uZWxzClswMDowMDoxMi4zOTQ4NTgyNjhdIEJlbmNobWFyayBjb21wbGV0ZS4KCgpCZW5jaG1h
cmsgcmF0ZSBzdW1tYXJ5OgogIE51bSByZWNlaXZlZCBzYW1wbGVzOiAgICAgMjQ5OTk4MTY5CiAg
TnVtIGRyb3BwZWQgc2FtcGxlczogICAgICAwCiAgTnVtIG92ZXJydW5zIGRldGVjdGVkOiAgICAw
CiAgTnVtIHRyYW5zbWl0dGVkIHNhbXBsZXM6ICAyNTAwNTgwMDAKICBOdW0gc2VxdWVuY2UgZXJy
b3JzIChUeCk6IDAKICBOdW0gc2VxdWVuY2UgZXJyb3JzIChSeCk6IDAKICBOdW0gdW5kZXJydW5z
IGRldGVjdGVkOiAgIDAKICBOdW0gbGF0ZSBjb21tYW5kczogICAgICAgIDAKICBOdW0gdGltZW91
dHMgKFR4KTogICAgICAgIDAKICBOdW0gdGltZW91dHMgKFJ4KTogICAgICAgIDAKCgpEb25lIQoK
YWRAYm0tc3VwZXIxMS1pbnRlbDp+L2hvdXNoYW5nJCAK
--0000000000002fb8320627d3658a
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--0000000000002fb8320627d3658a--
