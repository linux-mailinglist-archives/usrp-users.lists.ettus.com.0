Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6CA138F00
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jan 2020 11:27:38 +0100 (CET)
Received: from [::1] (port=42926 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iqwwb-0006oZ-Kf; Mon, 13 Jan 2020 05:27:37 -0500
Received: from mail-ua1-f48.google.com ([209.85.222.48]:43402)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <amritnagi32@gmail.com>)
 id 1iqwwX-0006hB-9Z
 for usrp-users@lists.ettus.com; Mon, 13 Jan 2020 05:27:33 -0500
Received: by mail-ua1-f48.google.com with SMTP id o42so3092077uad.10
 for <usrp-users@lists.ettus.com>; Mon, 13 Jan 2020 02:27:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=I2XF6qshtDzDQbkYfriurDwQsfHpmR7145oXUjxrv+k=;
 b=qUTEoRimMrDu/5bPti1hDT7ZjrgXniSI/4YGpHsiGHU+B2S8b9eLlBofclE1V7VWob
 d6XXD/9ezAy8AuAIUyJLAM9o37Gs1RCvbg7+ffF/85cJhiM/MLDdVz3/i31bfBHyPuIN
 tCkK+NUteXi3/j6NIqAJ8/4OZDl2mYpC6N/xdMTF+iiX1cWYnvrAzHruMMRMp/aFClO8
 k3P96XGMhQBd0f/72l3ZkUmVwvzhjPhKiH2kyx/UfJDeHoWRCIbzInjWCkdAh9mA8RBK
 r4SVRodaUvZK09eRLAySAKeg77KbUPJeUUn5VZDlAD+/Ew9Nh6UtnPKNTaMci5XgWnS3
 sPRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=I2XF6qshtDzDQbkYfriurDwQsfHpmR7145oXUjxrv+k=;
 b=X3DHmE6nBjJRD7hSz0hTTMXeKNODZ1PUXRv2GpS0mvXmilHqI5SokmCde8btgapz0z
 qgEkCdlmXFD6Ao/dcoGIfrnhGNhFv27nFNUnGb+ZNIV0qzH2WOoc0ArbgmYCp0v9rTK8
 Qh4ivTpTs28NMfuMBRrt1+viVjCeLdQZNZf7OvJuswpMBKMn9vYuXuWZaXvVM5T8hv+u
 psTeUb9GqP6il0ZNyyTfta0UgIWDeuTmwrDeY9Z9YhqVguR1BYrg05QxMYZ3qgKezmDb
 HXgYD5igt0YdgITIyaB08VNpnhWP1vMC5U+HoU/RuZKRxG4iWdC+r7g6hFij4PefKXgi
 zxBA==
X-Gm-Message-State: APjAAAWidUU0yGtUjEdn2M8r/GSlDeoKhk24BLUVta/YejlifV9G9rsW
 chHJ3l/mkl+OS4GsXAOGXVNy3x0VnJttFnDCfsJZXIJc
X-Google-Smtp-Source: APXvYqyiUoo53/i+e7bJQX7wxUDiChvvPDo7f4HhVR59inbUDnTEf4VUpznoV9xUXNH48/MbMbrjWRXX6qhj5+7CZN4=
X-Received: by 2002:ab0:902:: with SMTP id w2mr6861926uag.41.1578911212263;
 Mon, 13 Jan 2020 02:26:52 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 13 Jan 2020 15:56:04 +0530
Message-ID: <CAA3PG_naMDLB52GhfcSwcr0CsU4aOooc+oQS70Lqvb+yjks7Pw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Benchmarking set_tx_freq and set_rx_freq on X310,
 B210 and N200
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Amrit Pal Singh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Amrit Pal Singh <amritnagi32@gmail.com>
Content-Type: multipart/mixed; boundary="===============6622195144984070803=="
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

--===============6622195144984070803==
Content-Type: multipart/alternative; boundary="000000000000f05dfb059c02e971"

--000000000000f05dfb059c02e971
Content-Type: text/plain; charset="UTF-8"

Hi All,

I am benchmarking the following commands on X310, B210 and N200 on UHD-3.14
version:

   1. usrp->set_tx_freq(tune_req, 0);
   2. usrp->set_rx_freq(tune_req, 0);

I am changing the frequencies inside a for loop for 1000 and 5000 times.
The code snippet is as follows:
    int count = 5000;
    uhd::usrp::multi_usrp::sptr usrp = uhd::usrp::multi_usrp::make(args);
    double start = usrp->get_time_now().get_real_secs();
    for(int a = 0; a < count; a++){
        uhd::tune_request_t tune_req = uhd::tune_request_t(800e6 + (a *
1e6), 0);
        tune_req.dsp_freq_policy = uhd::tune_request_t::POLICY_NONE;
        tune_req.rf_freq_policy = uhd::tune_request_t::POLICY_AUTO;
        //usrp->set_tx_freq(tune_req, 0);
        usrp->set_rx_freq(tune_req, 0);
    }
    std::cout << "time:" << ((usrp->get_time_now().get_real_secs() -
start)/count) * 1000 << "(ms)" << std::endl;

The following table summarizes the result observed with average time for a
single frequency hops and the hop rate as well for both Tx and Rx.

X310 test
No of hops Tx time (average) ms Tx Hops/second Rx time (average) ms Rx
Hops/second
1000 0.0453756 22038.27608 0.0441415 22654.41818
5000 0.051013 19602.84633 0.0457056 21879.15704
B210 test
No of hops Tx time (average) ms Tx Hops/second Rx time (average) ms Rx
Hops/second
1000 3.34055 299.3519031 5.13762 194.6426555
5000 3.35529 298.0368314 4.94233 202.3337171
N200 test
No of hops Tx time (average) ms Tx Hops/second Rx time (average) ms Rx
Hops/second
1000 0.0530515 18849.6084 0.0504478 19822.46996
5000 0.0391015 25574.46645 0.037663 26551.2572
As observed, the rate is really slow for B210. I also tested using another
B210 and it gave similar results.
Could anyone share any insights into these values.

Thanks,
Amrit

--000000000000f05dfb059c02e971
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I am benchmarking the following=
=C2=A0commands on X310, B210 and N200 on UHD-3.14 version:</div><div><ol><l=
i>usrp-&gt;set_tx_freq(tune_req, 0);</li><li>usrp-&gt;set_rx_freq(tune_req,=
 0);</li></ol><div>I am changing the frequencies=C2=A0inside a for loop for=
 1000 and 5000 times.</div><div>The code snippet=C2=A0is as follows:</div><=
div>=C2=A0 =C2=A0 int count =3D 5000;</div><div>=C2=A0 =C2=A0 uhd::usrp::mu=
lti_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(args);<br>=C2=A0 =C2=A0=
 double start =3D usrp-&gt;get_time_now().get_real_secs();<br>=C2=A0 =C2=A0=
 for(int a =3D 0; a &lt; count; a++){<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd::t=
une_request_t tune_req =3D uhd::tune_request_t(800e6 + (a *<br>1e6), 0);<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 tune_req.dsp_freq_policy =3D uhd::tune_request=
_t::POLICY_NONE;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 tune_req.rf_freq_policy =3D=
 uhd::tune_request_t::POLICY_AUTO;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 //usrp-&g=
t;set_tx_freq(tune_req, 0);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp-&gt;set_rx_=
freq(tune_req, 0);<br>=C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 std::cout &lt;&lt; &=
quot;time:&quot; &lt;&lt; ((usrp-&gt;get_time_now().get_real_secs() - start=
)/count) * 1000 &lt;&lt; &quot;(ms)&quot; &lt;&lt; std::endl;<br></div><div=
><br></div><div>The following=C2=A0table summarizes the result observed wit=
h average time for a single frequency hops and the hop rate as well for bot=
h Tx and Rx.</div></div><div><br></div><div><table cellspacing=3D"0" cellpa=
dding=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-layout:fixed;font-size:=
10pt;font-family:Arial;width:0px;border-collapse:collapse;border:none"><col=
group><col width=3D"100"><col width=3D"100"><col width=3D"100"><col width=
=3D"100"><col width=3D"100"></colgroup><tbody><tr style=3D"height:21px"><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:2px 3px;vertical-=
align:bottom;font-weight:bold;text-align:center">X310 test</td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:2px 3px;vertical-align:bottom"></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:2px 3px;vertical-align:bottom"></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:2px 3px;vertical-align:bottom"></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:2px 3px;vertical-align:bottom"></td></tr><tr sty=
le=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidd=
en;padding:2px 3px;vertical-align:bottom">No of hops</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(204,204,20=
4) rgb(0,0,0);overflow:hidden;padding:2px 3px;vertical-align:bottom">Tx tim=
e (average) ms</td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:=
2px 3px;vertical-align:bottom">Tx Hops/second</td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:2px 3px;vertical-align:bottom">Rx=
 time (average) ms</td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:2px 3px;vertical-align:bottom">Rx Hops/second</td></tr><tr s=
tyle=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overf=
low:hidden;padding:2px 3px;vertical-align:bottom;text-align:right">1000</td=
><td style=3D"overflow:hidden;padding:2px 3px;vertical-align:bottom;text-al=
ign:right;border:1px solid rgb(204,204,204)">0.0453756</td><td style=3D"ove=
rflow:hidden;padding:2px 3px;vertical-align:bottom;text-align:right;border:=
1px solid rgb(204,204,204)">22038.27608</td><td style=3D"overflow:hidden;pa=
dding:2px 3px;vertical-align:bottom;text-align:right;border:1px solid rgb(2=
04,204,204)">0.0441415</td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(204,204,204) rgb(204,204,204)=
;overflow:hidden;padding:2px 3px;vertical-align:bottom;text-align:right">22=
654.41818</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0);overflow:hidden;padding:2px 3px;vertical-align:bottom;text-ali=
gn:right">5000</td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:=
2px 3px;vertical-align:bottom;text-align:right">0.051013</td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(204,20=
4,204) rgb(0,0,0);overflow:hidden;padding:2px 3px;vertical-align:bottom;tex=
t-align:right">19602.84633</td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hid=
den;padding:2px 3px;vertical-align:bottom;text-align:right">0.0457056</td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:2px 3px;v=
ertical-align:bottom;text-align:right">21879.15704</td></tr><tr style=3D"he=
ight:21px"><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px 3px;=
vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden=
;padding:2px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0=
);overflow:hidden;padding:2px 3px;vertical-align:bottom"></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(204,2=
04,204) rgb(0,0,0);overflow:hidden;padding:2px 3px;vertical-align:bottom"><=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px 3px;vertica=
l-align:bottom"></td></tr><tr style=3D"height:21px"><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0);overflow:hidden;padding:2px 3px;vertical-align:bottom;f=
ont-weight:bold;text-align:center">B210 test</td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(204,204,204) rgb(0=
,0,0);overflow:hidden;padding:2px 3px;vertical-align:bottom"></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(2=
04,204,204) rgb(0,0,0);overflow:hidden;padding:2px 3px;vertical-align:botto=
m"></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px 3px;ver=
tical-align:bottom"></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;pa=
dding:2px 3px;vertical-align:bottom"></td></tr><tr style=3D"height:21px"><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:2px 3px;ve=
rtical-align:bottom">No of hops</td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflo=
w:hidden;padding:2px 3px;vertical-align:bottom">Tx time (average) ms</td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px 3px;vertical-alig=
n:bottom">Tx Hops/second</td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:2px 3px;vertical-align:bottom">Rx time (average) ms</t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:2px 3p=
x;vertical-align:bottom">Rx Hops/second</td></tr><tr style=3D"height:21px">=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2p=
x 3px;vertical-align:bottom;text-align:right">1000</td><td style=3D"overflo=
w:hidden;padding:2px 3px;vertical-align:bottom;text-align:right;border:1px =
solid rgb(204,204,204)">3.34055</td><td style=3D"overflow:hidden;padding:2p=
x 3px;vertical-align:bottom;text-align:right;border:1px solid rgb(204,204,2=
04)">299.3519031</td><td style=3D"overflow:hidden;padding:2px 3px;vertical-=
align:bottom;text-align:right;border:1px solid rgb(204,204,204)">5.13762</t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(204,204,204) rgb(204,204,204);overflow:hidden;padding:=
2px 3px;vertical-align:bottom;text-align:right">194.6426555</td></tr><tr st=
yle=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:2px 3px;vertical-align:bottom;text-align:right">5000</td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px 3px;vertical-align:bo=
ttom;text-align:right">3.35529</td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow=
:hidden;padding:2px 3px;vertical-align:bottom;text-align:right">298.0368314=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px 3px;vertic=
al-align:bottom;text-align:right">4.94233</td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:2px 3px;vertical-align:bottom;text-al=
ign:right">202.3337171</td></tr><tr style=3D"height:21px"><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(204,204,2=
04) rgb(0,0,0);overflow:hidden;padding:2px 3px;vertical-align:bottom"></td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px 3px;vertical-al=
ign:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2p=
x 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:=
hidden;padding:2px 3px;vertical-align:bottom"></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(204,204,204) rgb=
(0,0,0);overflow:hidden;padding:2px 3px;vertical-align:bottom"></td></tr><t=
r style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow=
:hidden;padding:2px 3px;vertical-align:bottom;font-weight:bold;text-align:c=
enter">N200 test</td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;paddin=
g:2px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0);overf=
low:hidden;padding:2px 3px;vertical-align:bottom"></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(204,204,204)=
 rgb(0,0,0);overflow:hidden;padding:2px 3px;vertical-align:bottom"></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px 3px;vertical-align=
:bottom"></td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0);overflow:hidden;padding:2px 3px;vertical-align:bottom">No of h=
ops</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px 3px;ver=
tical-align:bottom">Tx time (average) ms</td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0=
);overflow:hidden;padding:2px 3px;vertical-align:bottom">Tx Hops/second</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:2px 3px=
;vertical-align:bottom">Rx time (average) ms</td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:2px 3px;vertical-align:bottom">Rx =
Hops/second</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(204,204,204) rgb(204=
,204,204) rgb(0,0,0);overflow:hidden;padding:2px 3px;vertical-align:bottom;=
text-align:right">1000</td><td style=3D"overflow:hidden;padding:2px 3px;ver=
tical-align:bottom;text-align:right;border:1px solid rgb(204,204,204)">0.05=
30515</td><td style=3D"overflow:hidden;padding:2px 3px;vertical-align:botto=
m;text-align:right;border:1px solid rgb(204,204,204)">18849.6084</td><td st=
yle=3D"overflow:hidden;padding:2px 3px;vertical-align:bottom;text-align:rig=
ht;border:1px solid rgb(204,204,204)">0.0504478</td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(204,=
204,204) rgb(204,204,204);overflow:hidden;padding:2px 3px;vertical-align:bo=
ttom;text-align:right">19822.46996</td></tr><tr style=3D"height:21px"><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:2px 3px;verti=
cal-align:bottom;text-align:right">5000</td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(204,204,204) rgb(0,0,0)=
;overflow:hidden;padding:2px 3px;vertical-align:bottom;text-align:right">0.=
0391015</td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(204,204,204) rgb(0,0,0);overflow:hidden;padding:2px 3px=
;vertical-align:bottom;text-align:right">25574.46645</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(204,204,20=
4) rgb(0,0,0);overflow:hidden;padding:2px 3px;vertical-align:bottom;text-al=
ign:right">0.037663</td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:2px 3px;vertical-align:bottom;text-align:right">26551.2572<=
/td></tr></tbody></table><br></div><div>As observed, the rate is really slo=
w for B210. I also tested using another B210 and it gave similar results.=
=C2=A0</div><div>Could anyone share any insights into these values.</div><d=
iv><br></div><div>Thanks,</div><div>Amrit</div><div><br></div></div>

--000000000000f05dfb059c02e971--


--===============6622195144984070803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6622195144984070803==--

